/*
 * Segment.h
 *
 *  Created on: Aug 22, 2011
 *      Author: pete
 */

#ifndef SEGMENT_H_
#define SEGMENT_H_

#include "Point.h"

/**
 * Lines are made of several Segments.
 * Each segment is a straight line with a start point and an end point.
 * Each new segment should begin where the last one ended.
 * Some special segments exist with their own properties.
 * For example, a jump segment will not colide with another segment (unless it is also a jump segment).
 */
class Segment {
public:
	Segment( Point<int> start, Point<int> end );
	Segment( Segment* previous, Point<int> end );
	virtual ~Segment();

	void setNext( Segment* next ) { this->next = next; }
	Segment* getNext() { return this->next; }
	Segment* getPrevious() { return this->previous; }
	Point<int> getStart() { return this->start; }
	Point<int> getEnd() { return this->end; }

private:
	Point<int> start;
	Point<int> end;

	Segment* next;
	Segment* previous;
};

#endif /* SEGMENT_H_ */
