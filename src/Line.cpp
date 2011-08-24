/*
 * Line.cpp
 *
 *  Created on: Aug 22, 2011
 *      Author: pete
 */

#include "Line.h"
#include "Point.h"
#include "Segment.h"

Line::Line( Point<int> start ) :
	root( 0 ),
	current( 0 )
{
	this->root = new Segment( start, start );
	this->current = this->root;
}

Line::~Line()
{

}

void Line::addSegment( Point<int> end )
{
	// The constructor will take care of placing this successfully in the linked list...
	this->current = new Segment( this->current, end );
}

void Line::update( double timeStep )
{
	this->velocity.x = 10;
	this->velocity.y = 5;
	Point<int> newEnd = this->current->getEnd() + this->velocity;
	this->addSegment( newEnd );
}
