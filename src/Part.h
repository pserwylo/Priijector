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

#ifndef PART_H_
#define PART_H_

#include <string>

class SDL_Surface;

/**
 * A part is a visual element which goes on a slide.
 * Each slide consists of several parts.
 * Essentially, I consider a part to just encode certain characteristics about a piece
 * of text or an image. I also tried to make it able to load executables for a demo,
 * but failed pretty horribly.
 */
class Part {
public:
	Part( int type, std::string string );
	virtual ~Part();

	int getType() { return this->type; };

	/**
	 * Returns the height where the renderer finished.
	 */
	int render( SDL_Surface* surface, int startY );

public:
	static const int TYPE_TEXT = 1;
	static const int TYPE_HEADING = 2;
	static const int TYPE_SUBHEADING = 4;
	static const int TYPE_EMPTY = 8;
	static const int TYPE_IMAGE = 16;
	static const int TYPE_APP = 32;

	static const char SYM_HEADING = '=';
	static const char SYM_SUBHEADING = '-';
	static const char SYM_END_BLOCK = '!';
	static const char SYM_END_SLIDE = '*';
	static const char SYM_LEFT_ALIGN = '^';
	static const char SYM_DONT_ANIMATE = '+';

	static const char ALIGN_LEFT = 1;
	static const char ALIGN_CENTRE = 2;

private:
	int type;
	std::string string;
	SDL_Surface* imageSurface;
	int align;

};

#endif /* PART_H_ */
