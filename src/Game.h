/*
 * Game.h
 *
 *  Created on: Aug 22, 2011
 *      Author: pete
 */

#ifndef GAME_H_
#define GAME_H_

#include <vector>

class SDL_Surface;
class Line;

class Game
{
public:
	Game( int boardWidth, int boardHeight, int numPlayers );
	virtual ~Game();

	bool update( double timeStep );
	void render( SDL_Surface* surface );
	std::vector< Line* >& getPlayers() { return players; }

private:
	int numPlayers;
	int boardWidth;
	int boardHeight;
	std::vector< Line* > players;

	SDL_Surface* lineSurface;

};

#endif /* GAME_H_ */
