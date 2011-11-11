/*
 * Application.cpp
 *
 *  Created on: Aug 24, 2011
 *      Author: pete
 */

#include "Application.h"
#include "Presentation.h"
#include "Assets.h"
#include "Menu.h"
#include "PresReader.h"

#include "wiiuse/wpad.h"
#include <sdcard/wiisd_io.h>
#include "gccore.h"
#include "SDL/SDL.h"
#include "SDL/SDL_draw.h"
#include "SDL/SDL_gfxPrimitives.h"
#include "SDL/SDL_ttf.h"

#include <stdio.h>
#include <fat.h>
#include <string>

void Application::init()
{

	printf( "Initializing Filesystem..." );
	if ( !fatInitDefault() )
	{
		printf( "Could not init Filesystem\n" );
		SDL_Delay( 5000 );
		exit( EXIT_FAILURE );
	}

	printf( "Initializing Graphics..." );
	if ( SDL_Init( SDL_INIT_VIDEO ) < 0 )
	{
		printf( "Unable to init SDL: %s\n", SDL_GetError() );
		SDL_Delay( 5000 );
		exit( EXIT_FAILURE );
	}

	printf( "Initializing Input..." );
	WPAD_Init();

	printf( "Initializing Font System..." );
	if ( TTF_Init() < 0 )
	{
		printf( "Unable to init TTF: %s\n", TTF_GetError() );
		SDL_Delay( 5000 );
		exit( EXIT_FAILURE );
	}

	printf( "Initializing Assets..." );
	if ( !Assets::init() )
	{
		printf( "Unable to init Assets: %s\n", TTF_GetError() );
		SDL_Delay( 5000 );
		exit( EXIT_FAILURE );
	}

    // make sure SDL cleans up before exit
    atexit( SDL_Quit );
    SDL_ShowCursor( SDL_DISABLE );

    const int WIDTH = 640;
    const int HEIGHT = 480;

	printf( "Initializing Screen..." );
    surface = SDL_SetVideoMode( WIDTH, HEIGHT, 16, SDL_DOUBLEBUF | SDL_HWSURFACE | SDL_DOUBLEBUF );
    if ( !surface )
    {
        printf( "Unable to set video: %s\n", SDL_GetError() );
		SDL_Delay( 5000 );
        exit( EXIT_FAILURE );
    }

    PresReader reader( WIDTH, HEIGHT );
    // reader.readString( "=Heading 1\nThis is some text\n\n!\n=Heading 2\nMore text\n*=New Slide" );
    reader.readFile( "sd:/apps/priijector/pres.txt" );
    this->screen = reader.getPresentation();

}

void Application::run()
{
	Uint32 lastUpdate = SDL_GetTicks();

	while( true )
	{
		SDL_FillRect( surface, NULL, SDL_MapRGB( surface->format, 0, 0, 0 ) );
		Uint32 currentUpdate = SDL_GetTicks();

		WPAD_ScanPads();
		this->screen = this->screen->update( currentUpdate - lastUpdate );
		this->screen->render( surface );

		lastUpdate = currentUpdate;
		SDL_Flip( surface );
	}

}
