/*
 * Line.cpp
 *
 *  Created on: Aug 22, 2011
 *      Author: pete
 */

#include "Line.h"
#include "Point.h"

#include <stdlib.h>
#include <stdio.h>

Line::Line( Point<float> start )
{
	// Leave as a unit vector, and multiply by speed as per requirements...
	this->velocity.x = 0;
	this->velocity.y = -1;
	this->speed = Line::REGULAR_SPEED;
	this->points.push_back( start );
	this->r = rand() % 155 + 100;
	this->g = rand() % 155 + 100;
	this->b = rand() % 155 + 100;
	this->a = 255;
}

Line::~Line()
{

}

void Line::aimAt( Point<float> aim )
{
	/*if ( this->points.size() > 0 )
	{
		Point<float> pos = this->points.at( this->points.size() - 1 );
		this->velocity.x = aim.x - pos.x;
		this->velocity.y = aim.y - pos.y;
		this->velocity.normalize();
	}*/
}

void Line::turnLeft()
{
	this->turn( -Line::TURN_RATE );
}

void Line::turnRight()
{
	this->turn( Line::TURN_RATE );
}

void Line::turn( double angle )
{
	this->velocity.x = cos( angle ) * this->velocity.x - sin( angle ) * this->velocity.y;
	this->velocity.y = sin( angle ) * this->velocity.x + cos( angle ) * this->velocity.y;
	this->velocity.normalize();
}

void Line::update( double timeStep )
{
	double fracOfSecond = ( timeStep / 1000 );

	// Adjust for boosting or slowing down after boosting...
	if ( this->boosting && this->speed < Line::BOOST_SPEED )
	{
		this->speed += Line::BOOST_ACCEL * fracOfSecond;
		if ( this->speed > Line::BOOST_SPEED )
		{
			this->speed = Line::BOOST_SPEED;
		}
	}
	else if ( !this->boosting && this->speed > Line::REGULAR_SPEED )
	{
		this->speed -= Line::BOOST_DECEL * fracOfSecond;
		if ( this->speed < Line::REGULAR_SPEED )
		{
			this->speed = Line::REGULAR_SPEED;
		}
	}

	Point<float> newEnd = this->points[ this->points.size() - 1 ];
	Point<float> vel = this->velocity * ( this->speed * fracOfSecond );
	newEnd -= vel;
	// printf( "New point( %f, %f ) - from( %f, %f )\n", newEnd.x, newEnd.y, this->points[ this->points.size() - 1 ].x, this->points[ this->points.size() - 1 ].y );
	this->points.push_back( newEnd );
}
