/*
 * Application.cpp
 *
 *  Created on: Aug 24, 2011
 *      Author: pete
 */

#include "Application.h"
#include "Game.h"

#include "wiiuse/wpad.h"
#include "gccore.h"
#include "SDL/SDL.h"
#include "SDL/SDL_draw.h"
#include "SDL/SDL_gfxPrimitives.h"

#include <stdio.h>

void Application::init()
{
	if ( SDL_Init( SDL_INIT_VIDEO ) < 0 )
	{
		printf( "Unable to init SDL: %s\n", SDL_GetError() );
		SDL_Delay( 5000 );
		exit( EXIT_FAILURE );
	}

	// button initialization
	WPAD_Init();

    // make sure SDL cleans up before exit
    atexit( SDL_Quit );
    SDL_ShowCursor( SDL_DISABLE );

    const int WIDTH = 640;
    const int HEIGHT = 480;

    // create a new window
    screen = SDL_SetVideoMode( WIDTH, HEIGHT, 16, SDL_DOUBLEBUF | SDL_HWSURFACE );
    if ( !screen )
    {
        printf( "Unable to set video: %s\n", SDL_GetError() );
		SDL_Delay( 5000 );
        exit( EXIT_FAILURE );
    }

    this->game = new Game( WIDTH, HEIGHT, 2 );

}


void Application::run()
{

	bool run = true;
	Uint32 lastUpdate = SDL_GetTicks();

	SDL_Delay( 1000 );
	while( run )
	{
		int result = SDL_FillRect( screen, NULL, SDL_MapRGB( screen->format, 0, 0, 0 ) );
		Uint32 currentUpdate = SDL_GetTicks();

		WPAD_ScanPads();
		run = this->game->update( currentUpdate - lastUpdate );
		this->game->render( screen );

		lastUpdate = currentUpdate;
		SDL_Flip( screen );
	}
}
