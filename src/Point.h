/*
 * Point.h
 *
 *  Created on: Aug 23, 2011
 *      Author: pete
 */

#ifndef POINT_H_
#define POINT_H_

template <class T>
class Point {
public:
	Point() : x( 0 ), y( 0 ) {};
	Point( T x, T y ) : x( x ), y( y ) {};
	virtual ~Point() {};

	T x;
	T y;

	Point<T> operator+( Point<T>& toAdd )
	{
		Point<T> p( this->x + toAdd.x, this->y + toAdd.y );
		return p;
	}

	Point<T> operator-( Point<T>& toSubtract )
	{
		Point<T> p( this->x - toSubtract.x, this->y - toSubtract.y );
		return p;
	}

	void operator+=( Point<T>& toAdd )
	{
		this->x += toAdd.x;
		this->y += toAdd.y;
	}

	void operator-=( Point<T>& toSubtract )
	{
		this->x += toSubtract.x;
		this->y += toSubtract.y;
	}

	Point<T> operator*( double toMul )
	{
		Point<T> p( (T)( this->x * toMul ), (T)( this->y * toMul ) );
		return p;
	}

	Point<T> operator*( int toMul )
	{
		Point<T> p( (T)( this->x * toMul ), (T)( this->y * toMul ) );
		return p;
	}

	Point<T> operator/( double toDiv )
	{
		Point<T> p( (T)( this->x / toDiv ), (T)( this->y / toDiv ) );
		return p;
	}

	Point<T> operator/( int toDiv )
	{
		Point<T> p( (T)( this->x / toDiv ), (T)( this->y / toDiv ) );
		return p;
	}

	void operator*=( double toMul )
	{
		this->x *= toMul;
		this->y *= toMul;
	}

	void operator*=( int toMul )
	{
		this->x *= toMul;
		this->y *= toMul;
	}

	void operator/=( double toDiv )
	{
		this->x /= toDiv;
		this->y /= toDiv;
	}

	void operator/=( int toDiv )
	{
		this->x /= toDiv;
		this->y /= toDiv;
	}

};

#endif /* POINT_H_ */
