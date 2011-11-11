/*
 * Game.h
 *
 *  Created on: Aug 22, 2011
 *      Author: pete
 */

#ifndef GAME_H_
#define GAME_H_

#include "defines.h"
#include "Screen.h"
#include "PresReader.h"

#include <string>
#include <vector>

class SDL_Surface;
class Slide;

class Presentation : public Screen
{

friend class PresReader;

public:
	Presentation( int w, int h, std::vector<Slide*>* slides );
	virtual ~Presentation();

	Screen* update( double timeStep );
	void render( SDL_Surface* surface );
	void store();
	void load();

public:
	void next();
	void previous();

private:
	int boardWidth;
	int boardHeight;
	std::vector<Slide*>* slides;
	int currentSlide;
	int alpha;

};

#endif /* GAME_H_ */
