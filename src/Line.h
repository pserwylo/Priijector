/*
 * Line.h
 *
 *  Created on: Aug 22, 2011
 *      Author: pete
 */

#ifndef LINE_H_
#define LINE_H_

class Segment;

#include "Point.h"


/**
 * A Line is controlled by the user and navigates around the screen.
 * It grows with time, adding Segments as it does.
 */
class Line {
public:
	Line( Point<int> start );
	virtual ~Line();

	Segment* getRoot() { return this->root; }
	void addSegment( Point<int> end );
	void update( double timeStep );

private:
	Point<int> velocity;
	Segment* root;
	Segment* current;
};

#endif /* LINE_H_ */
