#include <stdio.h>
#include <string.h>
#include <gccore.h>
#include <stdlib.h>
#include <malloc.h>
#include <unistd.h>
#include <gccore.h>
#include <ogc/lwp_threads.h>
#include <di/di.h>

#include "loadMii.h"


void buildArgs ( const char *path, struct __argv *args )
{
    bzero( args, sizeof( *args ) );
    args->argvMagic = ARGV_MAGIC;
    args->length = strlen( path ) + 2;
    args->commandLine = (char*)malloc( args->length );
    if ( !args->commandLine )
	{
		args->argvMagic = 0xdeadbeef;
		return;
	}
    strcpy( args->commandLine, path );
    args->commandLine[ args->length - 1 ] = '\0';
    args->argc = 1;
    args->argv = &args->commandLine;
    args->endARGV = args->argv + 1;
}


int loadMii_load( const char* filename )
{
	printf( "START" );
	if ( _supportedFile( filename ) )
	{
		printf( "FILENAME SUPPORTED" );
		u8 *bufPtr = _memoryLoad( filename );
		printf( "MEMORY LOADED" );
		struct __argv args;

		void (*entry)();

		/* Check for loading fail */
		if (bufPtr)
		{
			/* Do the right relocation. */
			switch (_validateHeader(bufPtr))
			{
				case 0x0:
					printf( "DOL" );
					buildArgs( filename, &args );
					entry = (void (*)())(_relocateDol(bufPtr, &args));
					break;

				case 0x1:
					printf( "ELF" );
					entry = (void (*)())(_relocateElf(bufPtr));
					break;

				default:
					entry = NULL;
					break;
			}

			if (entry)
			{

				printf( "A" );
				free(bufPtr);
				printf( "B" );
				/* Set CPU/BUS clock as Nintendo SDK apps require so. */
				*(vu32*)0x800000F8 = 0x0E7BE2C0;
				printf( "C" );
				*(vu32*)0x800000FC = 0x2B73A840;
				printf( "D" );
				/* cleanup(); */

				__lwp_thread_stopmultitasking(entry);

				entry();
			}
		}
		else
		{
			loadMii_setError( LOADMII_ERRNO_CANNOT_LOAD_EXE );
			return 0;
		}
	}

	loadMii_setError( LOADMII_ERRNO_NO_ERROR );
	return 1;
}


int _validateHeader(u8 *buffer)
{
    if (buffer[0] == 0x0 &&
        buffer[1] == 0x0 &&
        buffer[2] == 0x1)
    {
        return 0;
    }
    
    if (buffer[0] == 0x7F &&
        buffer[1] == 'E' &&
        buffer[2] == 'L' &&
        buffer[3] == 'F')
    {
        return 1;
    }

    return 0xdeadbeef;
}

u32 _relocateDol (u8 *buffer, struct __argv *argv)
{
        int loop;
        dolheader *hdr = (dolheader *)buffer;
        memset((void *)hdr->bssmem, 0, hdr->bsssize);
		printf("BSS @ %08x (%08x)\n", hdr->bssmem, hdr->bsssize);
        for (loop = 0; loop < maxTextSections; loop++)
        {
			if (hdr->textsize[loop])
			{	
				printf("Text @ %08x (%08x)\n", hdr->textmem[loop], hdr->textsize[loop]);
                memcpy((void *)hdr->textmem[loop], buffer + hdr->textoff[loop], hdr->textsize[loop]);
				DCFlushRange((void *)hdr->textmem[loop], hdr->textsize[loop]);
				ICInvalidateRange((void *)hdr->textmem[loop], hdr->textsize[loop]);
			}
        }
        for (loop = 0; loop < maxDataSections; loop++)
        {
			if (hdr->datasize[loop])
			{
				printf("Data @ %08x (%08x)\n", hdr->datamem[loop], hdr->datasize[loop]);
                memcpy((void *)hdr->datamem[loop], buffer + hdr->dataoff[loop], hdr->datasize[loop]);
				DCFlushRange((void *)hdr->datamem[loop], hdr->datasize[loop]);
			}
        }
		if (argv && argv->argvMagic == ARGV_MAGIC)
		{
			memmove((void *)(hdr->entry + 8), argv, sizeof(*argv));
			DCFlushRange((void *)(hdr->entry + 8), sizeof(*argv));
		}
		printf("entry %08x\n", hdr->entry);
        return hdr->entry;
}        

u32 _relocateElf (u8 *addr)
{
        Elf32_Ehdr *ehdr;
        Elf32_Shdr *shdr;
        u8 *image;
        u8 *strtab = 0;
        int i;

        ehdr = (Elf32_Ehdr *) addr;
        /* Check if the elf is a Powerpc one. */
        if (ehdr->e_machine != MACHINE_PPC)
        {
                loadMii_setError( LOADMII_ERRNO_CANNOT_LOAD_EXE );
				return 0;
        }
        /* Find the section header string table for output info */
        shdr = (Elf32_Shdr *) (addr + ehdr->e_shoff +
                               (ehdr->e_shstrndx * sizeof (Elf32_Shdr)));

        if (shdr->sh_type == SHT_STRTAB)
        	strtab = (u8 *) (addr + shdr->sh_offset);

        /* Load each appropriate section */
        for (i = 0; i < ehdr->e_shnum; ++i) {
                shdr = (Elf32_Shdr *) (addr + ehdr->e_shoff +
                                       (i * sizeof (Elf32_Shdr)));

                if (!(shdr->sh_flags & SHF_ALLOC)
                   || shdr->sh_addr == 0 || shdr->sh_size == 0) {
                        continue;
                }
                
                shdr->sh_addr &= 0x3FFFFFFF;
                shdr->sh_addr |= 0x80000000;

                if (shdr->sh_type == SHT_NOBITS) {
                        memset ((void *) shdr->sh_addr, 0, shdr->sh_size);
                } else {
                        image = (u8 *) addr + shdr->sh_offset;
                        memcpy ((void *) shdr->sh_addr,
                                (const void *) image,
                                shdr->sh_size);
                }
                DCFlushRangeNoSync ((void *) shdr->sh_addr, shdr->sh_size);
        }

        return (ehdr->e_entry & 0x3FFFFFFF) | 0x80000000;
}

int _supportedFile ( const char *name )
{
	if (strcasestr( name, ".elf") || strcasestr( name, ".dol") )
	{
		return 1;
	}
	return 0;
}

u8* _memoryLoad (const char *file)
{
        u8 *memholder = NULL;

        FILE * fp = fopen(file, "rb");

        if (fp == NULL)
        {
                return NULL;
        }

        fseek( fp, 0L, SEEK_END );
        int size = ftell( fp );
        fseek( fp, 0L, SEEK_SET );

		memholder = (u8*)malloc(size);

		if (memholder == NULL)
		{
			fclose(fp);
			return NULL;
		}

        if (fread(memholder, 1, size, fp) < size)
        {
                free(memholder);
				fclose(fp);
                return NULL;
        }

        fclose(fp);

        return memholder;
}

static int errorNo = LOADMII_ERRNO_NO_ERROR;

static char *errorTable[] = {
	0,
	"Cannot load the executable."
};

void loadMii_setError( int err )
{
    errorNo = err;
}

int loadMii_getErrorNo()
{
	return errorNo;
}

const char* loadMii_getError()
{
	return errorTable[ errorNo ];
}
