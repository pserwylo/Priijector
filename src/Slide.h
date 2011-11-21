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

#ifndef SLIDE_H_
#define SLIDE_H_

class Block;
class SDL_Surface;

#include <vector>

class Slide {
public:
	Slide( std::vector<Block*>* blocks, bool fade );
	virtual ~Slide();

public:
	bool hasLessBlocks() { return currentBlock > 0; };
	bool hasMoreBlocks() { return currentBlock < this->blocks->size() - 1; };
	void nextBlock() { this->currentBlock ++; };
	void previousBlock() { this->currentBlock --; };
	int getCurrentBlock() { return this->currentBlock; };
	void setCurrentBlock( unsigned int value ) { this->currentBlock = value > this->blocks->size() - 1 ? this->blocks->size() - 1 : value; };

	/**
	 * Checks if we should fade or not.
	 * We fade if we are on the first block of a slide.
	 */
	bool requiredFade() { return this->fade; };

	/**
	 * Iterates through all of the blocks and ask them to render their parts.
	 */
	void render( SDL_Surface* surface );

private:
	std::vector<Block*>* blocks;
	unsigned int currentBlock;
	bool fade;
};

#endif /* SLIDE_H_ */
