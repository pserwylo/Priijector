/*
 * Screen.cpp
 *
 *  Created on: Oct 27, 2011
 *      Author: pete
 */

#include "Screen.h"
#include <SDL/SDL.h>
#include <wiiuse/wpad.h>

Screen* Screen::CONTINUE = 0;

Screen::Screen( int screenWidth, int screenHeight ) :
	screenWidth( screenWidth ),
	screenHeight( screenHeight ),
	btnHome( false ), btnHome_Up( false ),
	btnA( false ), btnA_Up( false ),
	btnB( false ), btnB_Up( false ),
	btn1( false ), btn1_Up( false ),
	btn2( false ), btn2_Up( false ),
	btnLeft( false ), btnLeft_Up( false ),
	btnRight( false ), btnRight_Up( false ),
	btnUp( false ), btnUp_Up( false ),
	btnDown( false ), btnDown_Up( false )
{}

Screen::~Screen() {}

void Screen::clear( SDL_Surface* surface )
{

	SDL_Rect rect;
	rect.x = 0;
	rect.y = 0;
	rect.w = surface->w;
	rect.h = surface->h;

	SDL_FillRect( surface, &rect, 0xFF000000 );

}

void Screen::processButton( int pressed, bool& downFlag, bool& upFlag, int btnMask )
{
	if ( pressed & btnMask )
	{
		downFlag = true;
	}
	else if ( downFlag )
	{
		downFlag = false;
		upFlag = true;
	}
	else if ( upFlag )
	{
		upFlag = false;
	}
}

void Screen::readInput()
{
	int i = 0;
	int pressed = WPAD_ButtonsHeld( i );

	this->processButton( pressed, btnHome, btnHome_Up, WPAD_BUTTON_HOME );
	this->processButton( pressed, btnA, btnA_Up, WPAD_BUTTON_A );
	this->processButton( pressed, btnB, btnB_Up, WPAD_BUTTON_B );
	this->processButton( pressed, btnUp, btnUp_Up, WPAD_BUTTON_UP );
	this->processButton( pressed, btnDown, btnDown_Up, WPAD_BUTTON_DOWN );
	this->processButton( pressed, btnLeft, btnLeft_Up, WPAD_BUTTON_LEFT );
	this->processButton( pressed, btnRight, btnRight_Up, WPAD_BUTTON_RIGHT );
	this->processButton( pressed, btn1, btn1_Up, WPAD_BUTTON_1 );
	this->processButton( pressed, btn2, btn2_Up, WPAD_BUTTON_2 );

	/*btnHome = pressed & WPAD_BUTTON_HOME;
	btnA = pressed & WPAD_BUTTON_A;
	btnB = pressed & WPAD_BUTTON_B;
	btnUp = pressed & WPAD_BUTTON_UP;
	btnDown = pressed & WPAD_BUTTON_DOWN;
	btnLeft = pressed & WPAD_BUTTON_LEFT;
	btnRight = pressed & WPAD_BUTTON_RIGHT;*/

	ir_t ir;
	WPAD_IR( i, &ir );

	// If the cursor is off the screen, then don't aim there.
	// This should preserve the previous location, so the line wont all of
	// a sudden turn around to the top left of the screen if the user strays.
	// TODO: Provide visual feedback if the cursor is off the screen...
	if ( ir.ax > 0.001 && ir.ay > 0.001 )
	{
	}

	orient_t orient;
	WPAD_Orientation( i, &orient );

}
