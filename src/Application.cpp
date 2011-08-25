/*
 * Application.cpp
 *
 *  Created on: Aug 24, 2011
 *      Author: pete
 */

#include "Application.h"
#include "wiiuse/wpad.h"
#include "gccore.h"
#include "SDL/SDL.h"

void main( int argc, char** argv )
{
	Application game;
	game.init();
	game.run();
}

void Application::init()
{
	 if ( SDL_Init( SDL_INIT_VIDEO | SDL_INIT_AUDIO) < 0 )
	{
		fprintf(stderr, "Unable to init SDL: %s\n", SDL_GetError() );
		SDL_Delay( 5000 );
		exit(EXIT_FAILURE);
	}

	// button initialization
	WPAD_Init();

    // make sure SDL cleans up before exit
    atexit(SDL_Quit);
    SDL_ShowCursor(SDL_DISABLE);

    // create a new window
    screen = SDL_SetVideoMode(640, 480, 16, SDL_DOUBLEBUF);
    if ( !screen )
    {
        fprintf(stderr, "Unable to set video: %s\n", SDL_GetError());
		SDL_Delay( 5000 );
        exit(EXIT_FAILURE);
    }

}


void Application::run()
{

	while( true )
	{

		SDL_FillRect( screen, 0, SDL_MapRGB( screen->format, 255, 0, 0 ) );

		WPAD_ScanPads();

		int numPlayers = 2;
		for ( int i = 0; i < numPlayers; i ++ )
		{
			u32 pressed = WPAD_ButtonsHeld( i );
			bool left = pressed & WPAD_BUTTON_LEFT;
			bool right = pressed & WPAD_BUTTON_RIGHT;
			bool boost = pressed & WPAD_BUTTON_A;
			bool jump = pressed & WPAD_BUTTON_B;

			if ( left )
			{
			}
			else if ( right )
			{
			}

			if ( boost )
			{
				// tell player to boost.
				// If the player is boosting, then use a log function to increase their speed towards
				// a certain threshold.
			}
			else if ( /*!player->isBoosting() && player->isSpeedAboveNormal() */ false )
			{
				// Bring their speed (linearly?) down to
			}

			if ( jump )
			{

			}
		}
	}
}
