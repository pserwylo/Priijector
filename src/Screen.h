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

#ifndef SCREEN_H_
#define SCREEN_H_

class SDL_Surface;

/**
 * A screen is a particular thing being shown by the Application.
 * It could be a menu, a presentation, or something else.
 * In order to notify the application that it should show a different screen
 * (e.g. a menu screen launching a presentation screen)
 */
class Screen {
public:
	Screen( int w, int h );
	virtual ~Screen();

	virtual Screen* update( double timeStep ) = 0;

	virtual void render( SDL_Surface* surface ) = 0;

	void clear( SDL_Surface* surface );

protected:
	void readInput();

private:
	/**
	 * Helper which makes toggling button flags.
	 */
	void processButton( int pressed, bool& downFlag, bool& upFlag, int btnMask );

public:
	static Screen* CONTINUE;

protected:
	int screenWidth;
	int screenHeight;

	// Keeps track of the button states.
	// I should probably store this somewhere other than in each screen,
	// but it was easy to do it this way.
	bool btnHome, btnHome_Up;
	bool btnA, btnA_Up;
	bool btnB, btnB_Up;
	bool btn1, btn1_Up;
	bool btn2, btn2_Up;
	bool btnUp, btnUp_Up;
	bool btnDown, btnDown_Up;
	bool btnLeft, btnLeft_Up;
	bool btnRight, btnRight_Up;

};

#endif /* SCREEN_H_ */
