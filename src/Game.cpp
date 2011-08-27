/*
 * Game.cpp
 *
 *  Created on: Aug 22, 2011
 *      Author: pete
 */

#include <stdlib.h>
#include "Game.h"
#include "Line.h"
#include "wiiuse/wpad.h"
#include "SDL/SDL.h"
#include "SDL/SDL_draw.h"
#include "SDL/SDL_gfxPrimitives.h"

Game::Game( int boardWidth, int boardHeight, int numPlayers ) :
numPlayers( numPlayers ),
	boardWidth( boardWidth ),
	boardHeight( boardHeight )
{
	int spacing = boardWidth / ( numPlayers + 1 );
	int position = 0;
	for ( int i = 0; i < numPlayers; i ++ )
	{
		position += spacing;
		Line* player = new Line( Point<float>( position, boardHeight ) );
		this->players.push_back( player );
	}

	SDL_Surface* screen = SDL_GetVideoSurface();
	lineSurface = SDL_CreateRGBSurface( screen->flags, screen->w, screen->h, 32, 0, 0, 0, 0 );
	SDL_FillRect( lineSurface, 0, SDL_MapRGBA( lineSurface->format, 100, 0, 0, 255 ) );

	srand( 1000 );
}

Game::~Game()
{

}

bool Game::update( double timeStep )
{
	for ( int i = 0; i < this->players.size(); i ++ )
	{
		Line* line = this->players.at( i );

		u32 pressed = WPAD_ButtonsHeld( i );

		ir_t ir;
		WPAD_IR( i, &ir );

		bool quit = pressed & WPAD_BUTTON_HOME;
		bool left = pressed & WPAD_BUTTON_LEFT;
		bool right = pressed & WPAD_BUTTON_RIGHT;
		bool boost = pressed & WPAD_BUTTON_UP;
		bool jump = pressed & WPAD_BUTTON_A;
		bool drill = pressed & WPAD_BUTTON_B;

		line->aimAt( Point<float>( ir.ax, ir.ay ) );

		if ( quit )
		{
			return false;
		}

		if ( left )
		{
			line->turnLeft();
		}
		else if ( right )
		{
			line->turnRight();
		}

		if ( boost && !line->isBoosting() )
		{
			line->setBoosting( true );
		}
		else if ( !boost && line->isBoosting() )
		{
			line->setBoosting( false );
		}

		if ( jump )
		{

		}
		else if ( drill )
		{

		}

		line->update( timeStep );
	}
	return true;
}

void Game::render( SDL_Surface* surface )
{
	for ( std::vector<Line*>::iterator it = this->players.begin(); it != this->players.end(); it ++ )
	{
		Line* line = *it;
		std::vector<Point<float> >* points = line->getPoints();
		if ( points->size() > 0 )
		{
			Point<float> p1 = points->at( points->size() - 2 );
			Point<float> p2 = points->at( points->size() - 1 );

			aalineRGBA( lineSurface, p1.x, p1.y, p2.x, p2.y, line->getA(), line->getR(), line->getB(), line->getA() );
			// aacircleRGBA( lineSurface, (int)p2.x, (int)p2.y, 5, 255, 255, 255, 255 );
		}
	}
	int result = SDL_BlitSurface( lineSurface, 0, surface, 0 );
}
