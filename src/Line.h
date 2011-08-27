/*
 * Line.h
 *
 *  Created on: Aug 22, 2011
 *      Author: pete
 */

#ifndef LINE_H_
#define LINE_H_

#include "Point.h"

#include <vector>
#include <math.h>


/**
 * A Line is controlled by the user and navigates around the screen.
 * It grows with time, adding Segments as it does.
 */
class Line {
public:
	Line( Point<float> start );
	virtual ~Line();

	std::vector< Point<float> >* getPoints() { return &( this->points ); }
	void update( double timeStep );
	void setBoosting( bool boost ) { this->boosting = boost; }
	bool isBoosting() { return this->boosting; }

	void aimAt( Point<float> aim );
	void turnLeft();
	void turnRight();

	char getR() { return this->r; }
	char getG() { return this->g; }
	char getB() { return this->b; }
	char getA() { return this->a; }

private:
	void turn( double angle );

	const static double TURN_RATE = M_PI * 3 / 180;
	const static double REGULAR_SPEED = 100;
	const static double BOOST_SPEED = 300;
	const static double BOOST_ACCEL = 700;
	const static double BOOST_DECEL = 1500;

	const static double BAR_BOOST_MAX = 2; /* in seconds */
	const static double BAR_BOOST_COST = 1; /* const per second */
	const static double BAR_BOOST_RECHARGE_RATE = 0.1; /* recharge per second */

	const static double BAR_DIG_MAX = 2; /* in seconds */
	const static double BAR_DIG_COST = 1; /* cost per second */
	const static double BAR_DIG_RECHARGE_RAGE = 0.05; /* recharge per second */

	Point<float> velocity;
	double speed;
	bool boosting;
	char r, g, b, a;
	double boostBar;
	double jumpBar;
	double digBar;
	std::vector< Point<float> > points;
};

#endif /* LINE_H_ */
