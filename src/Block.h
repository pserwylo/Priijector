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

#ifndef BLOCK_H_
#define BLOCK_H_

#include <vector>

class SDL_Surface;
class Part;

/**
 * A Block represents one block of Parts on a slide.
 * This is the bit which is shown when you ask the presentation to continue.
 * So a slide can have several parts, each of which are navigated to when pressing next.
 * Also, each Block consists of several Parts, such as blocks of text or images.
 */
class Block {
public:
	Block( std::vector<Part*>* parts );
	virtual ~Block();

public:
	/**
	 * Returns the y-ordinate where the renderer finished.
	 */
	int render( SDL_Surface* surface, int startY );

private:
	std::vector<Part*>* parts;
};

#endif /* BLOCK_H_ */
