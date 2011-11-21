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

#include "Slide.h"
#include "Block.h"
#include <SDL/SDL.h>
#include <stdio.h>

Slide::Slide( std::vector<Block*>* blocks, bool fade ) :
	blocks( blocks ),
	currentBlock( 0 ),
	fade( fade )
{
}

Slide::~Slide()
{

}

void Slide::render( SDL_Surface* surface )
{
	SDL_FillRect( surface, 0, SDL_MapRGB( surface->format, 0, 0, 0 ) );
	int y = 10;
	if ( this->blocks->size() > 0 )
	{
		for ( unsigned int i = 0; i <= this->currentBlock; i ++ )
		{
			Block* block = this->blocks->at( i );
			y = block->render( surface, y );
		}
	}

}

