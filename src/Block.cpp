#include "Block.h"
#include "Part.h"

#include <SDL/SDL.h>

Block::Block( std::vector<Part*>* parts ) : parts( parts ) {

}

Block::~Block() {
}

int Block::render( SDL_Surface* surface, int y )
{
	// printf( "Block: %d parts", this->parts->size() );
	for ( std::vector<Part*>::iterator it = this->parts->begin(); it != this->parts->end(); it ++ )
	{
		Part* part = *it;
		y = part->render( surface, y );
	}
	return y;
}
