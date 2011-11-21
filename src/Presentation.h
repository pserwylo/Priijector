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

#ifndef GAME_H_
#define GAME_H_

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

	/**
	 * Check the input and decide whether we need to go to the next/previous slide/block.
	 */
	Screen* update( double timeStep );

	/**
	 * Iterate over all blocks on the current slide and ask them to render their parts.
	 */
	void render( SDL_Surface* surface );

	/**
	 * When the user closes the application, or resets the wii, then we save the current
	 * slide and block.
	 */
	void store();

	/**
	 * On opening the presentation, check if we have previously stored a slide and block
	 * which we with to reload.
	 */
	void load();

protected:
	void next();
	void previous();

private:
	std::vector<Slide*>* slides;
	unsigned int currentSlide;
	int alpha;
};

#endif /* GAME_H_ */
