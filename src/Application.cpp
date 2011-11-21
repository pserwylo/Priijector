/*
 * Copyright 2011 Peter Serwylo
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "Application.h"
#include "Presentation.h"
#include "Assets.h"
#include "Menu.h"
#include "PresReader.h"

#include "wiiuse/wpad.h"
#include "gccore.h"
#include "SDL/SDL.h"
#include "SDL/SDL_draw.h"
#include "SDL/SDL_gfxPrimitives.h"
#include "SDL/SDL_ttf.h"

#include <sdcard/wiisd_io.h>
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

    // TODO: What resolution can the Wii pull?
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

    // TODO: Support multiple presentations, and let the user load one.
    PresReader reader( WIDTH, HEIGHT );
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
