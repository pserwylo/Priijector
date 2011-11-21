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

#include "Menu.h"
#include "Assets.h"
#include "Presentation.h"

#include <SDL/SDL.h>
#include <SDL/SDL_ttf.h>
#include <SDL/SDL_gfxPrimitives.h>

const char* Menu::OPTIONS_MAIN[]= {
	"Continue Presentation",
	"Start Presentation",
	"Quit",
};

Menu::Menu( int w, int h ) :
	Screen( w, h ),
	currentMenu( MENU_MAIN ),
	currentOptions( Menu::OPTIONS_MAIN ),
	indexNumOptions( Menu::OPTIONS_MAIN_N ),
	index( 0 )
{

}

Menu::~Menu()
{

}

Screen* Menu::update( double time )
{
	this->readInput();

	if ( this->btnUp )
	{
		this->index --;
		if ( this->index < 0 )
		{
			this->index = this->indexNumOptions - 1;
		}
	}
	else if ( this->btnDown )
	{
		this->index ++;
		if ( this->index >= this->indexNumOptions )
		{
			this->index = 0;
		}
	}
	else if ( this->btnA )
	{
		// return new Presentation( this->screenWidth, this->screenHeight );
	}
	SDL_Delay( 150 );

	return this;
}

void Menu::render( SDL_Surface* surface )
{

	Screen::clear( surface );
    SDL_Colour highlightTextColour = { 255, 255, 255 };
    SDL_Colour textColour = { 200, 200, 200 };

    for ( int i = 0; i < this->indexNumOptions; i ++ )
    {
        int x = 50;
        int y = 50 + i * 30;

        if ( this->index == i )
        {
        	SDL_Surface* text = TTF_RenderText_Blended( Assets::getTextFont(), "*", highlightTextColour );
            SDL_Rect rect = { x, y, text->w, text->h };
            SDL_BlitSurface( text, 0, surface, &rect );
            SDL_FreeSurface( text );

        	x += 20;
        }


        SDL_Surface* text = TTF_RenderText_Blended( Assets::getTextFont(), this->currentOptions[ i ], ( i == this->index ) ? highlightTextColour : textColour );
        SDL_Rect rect = { x, y, text->w, text->h };
        SDL_BlitSurface( text, 0, surface, &rect );
        SDL_FreeSurface( text );
    }
}
