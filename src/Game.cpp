/*
 * Game.cpp
 *
 *  Created on: Aug 22, 2011
 *      Author: pete
 */

#include "Game.h"
#include "Line.h"

Game::Game( int boardWidth, int boardHeight, int numPlayers ) :
numPlayers( numPlayers ),
	boardWidth( boardWidth ),
	boardHeight( boardHeight )
{
	int spacing = ( boardWidth + 1 ) / numPlayers;
	int position = 0;
	for ( int i = 0; i < numPlayers; i ++ )
	{
		position += spacing;
		Line* player = new Line( Point<int>( position, boardHeight / 2 ) );
		this->players.push_back( player );
	}
}

Game::~Game()
{

}

void Game::update( double timeStep )
{
	for ( std::vector<Line*>::iterator it = this->players.begin(); it != this->players.end(); it ++ )
	{
		Line* line = *it;
		line->update( timeStep );
	}
}
