/*
 * Game.h
 *
 *  Created on: Aug 22, 2011
 *      Author: pete
 */

#ifndef GAME_H_
#define GAME_H_

#include <vector>

class Line;

class Game
{
public:
	Game( int boardWidth, int boardHeight, int numPlayers );
	virtual ~Game();

	void update( double timeStep );
	std::vector< Line* >& getPlayers() { return players; }

private:
	int numPlayers;
	int boardWidth;
	int boardHeight;
	std::vector< Line* > players;


};

#endif /* GAME_H_ */
