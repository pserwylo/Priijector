/*
 * Segment.cpp
 *
 *  Created on: Aug 22, 2011
 *      Author: pete
 */

#include "Segment.h"

Segment::Segment( Point<int> start, Point<int> end ) :
	start( start ),
	end( end ),
	previous( 0 ),
	next( 0 )
{

}

Segment::Segment( Segment* previous, Point<int> end ) :
	start( previous->getEnd() ),
	end( end ),
	previous( previous )
{
	previous->setNext( this );
}

Segment::~Segment()
{

}
