/*
 * Copyright 2011 Peter Serwylo
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
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
	btnUp( false ), btnUp_Up( false ),
	btnDown( false ), btnDown_Up( false ),
	btnLeft( false ), btnLeft_Up( false ),
	btnRight( false ), btnRight_Up( false )
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

	ir_t ir;
	WPAD_IR( i, &ir );

	orient_t orient;
	WPAD_Orientation( i, &orient );
}
