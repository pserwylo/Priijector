/*
 * Application.h
 *
 *  Created on: Aug 24, 2011
 *      Author: pete
 */

#ifndef APPLICATION_H_
#define APPLICATION_H_

class SDL_Surface;
class Game;

/**
 * The application will deal with high level lifecycle of the app.
 * It will be responsible for setting up the display and such.
 * It will also be responsible for transitions from between menu's and the actual game.
 */
class Application
{
public:
	Application() {};
	virtual ~Application() {};

	void init();
	void run();

private:
	SDL_Surface* screen;
	Game* game;

};

#endif /* APPLICATION_H_ */
