#include "Slide.h"
#include "Block.h"
#include <SDL/SDL.h>
#include <stdio.h>

Slide::Slide( std::vector<Block*>* blocks ) :
	blocks( blocks ),
	currentBlock( 0 )
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

