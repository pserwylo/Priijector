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

#include "Part.h"
#include "Assets.h"

#include <fstream>
#include <SDL/SDL.h>
#include <SDL/SDL_ttf.h>
#include <SDL/SDL_image.h>

Part::Part( int type, std::string string ) :
	type( type ),
	string( string ),
	imageSurface( NULL ),
	align( Part::ALIGN_CENTRE )
{
	// The PresReader did its best to identify the parts type, but we will do some further processing
	// here to see if we can gleam some more information...
	if ( this->type == Part::TYPE_TEXT )
	{
		if ( string[0] == Part::SYM_LEFT_ALIGN )
		{
			this->align = Part::ALIGN_LEFT;
			this->string = string.substr( 1 );
		}
		else
		{
			// If we start with "img:" then try to find the image, but notify in text if we can't find it...
			std::string start = string.substr( 0, 4 );
			if ( start.compare( "img:" ) == 0 )
			{
				this->type = Part::TYPE_IMAGE;
				this->string = string.substr( 4 );

				// If the image can't be found, revert back to text...
				std::ifstream img( this->string.c_str() );
				if ( !img.is_open() )
				{
					this->type = Part::TYPE_TEXT;
					this->string = "Can't find " + this->string;
				}
			}
			else if ( start.compare( "app:" ) == 0 )
			{
				this->type = Part::TYPE_APP;
				this->string = string.substr( 4 );
			}
		}
	}
}

Part::~Part() {
	if ( this->imageSurface != NULL )
	{
		SDL_FreeSurface( this->imageSurface );
	}
}

int Part::render( SDL_Surface* surface, int y )
{
	if ( this->type == Part::TYPE_HEADING || this->type == Part::TYPE_SUBHEADING || this->type == Part::TYPE_TEXT )
	{
		SDL_Colour textColour = { 255, 255, 255 };
		SDL_Surface* text = TTF_RenderText_Solid( Assets::getFont( this->type ), this->string.c_str(), textColour );
		SDL_Rect destRect;

		if ( this->align == Part::ALIGN_CENTRE )
		{
			destRect.x = ( surface->w - text->w ) / 2;
		}
		else
		{
			destRect.x = 20;
		}
		destRect.y = y;
		destRect.w = text->w;
		destRect.h = text->h;

		y += text->h + 5;

		SDL_BlitSurface( text, 0, surface, &destRect );
		SDL_FreeSurface( text );
	}
	else if ( this->type == Part::TYPE_IMAGE )
	{
		// Lazily load the image the first time we attempt to render this part...
		if ( this->imageSurface == NULL )
		{
			this->imageSurface = IMG_Load( string.c_str() );
			if ( this->imageSurface == NULL )
			{
				// We previously checked if the image existed, so something is probably
				// quite wrong here...
				printf( "Error: %s", SDL_GetError() );
				exit( 0 );

				// this->type = Part::TYPE_TEXT;
				// this->string = "Could not load image: " + this->string;
			}
		}
		else
		{
			// The image has previously been loaded, so just show it
			SDL_Rect destRect;
			destRect.x = ( surface->w - this->imageSurface->w ) / 2;
			destRect.y = y;
			destRect.w = this->imageSurface->w;
			destRect.h = this->imageSurface->h;
			SDL_BlitSurface( this->imageSurface, 0, surface, &destRect );
			y += this->imageSurface->h + 5;
		}
	}
	else if ( this->type == Part::TYPE_APP )
	{
		// TODO: Failed!!! Make this work!
		// loadMii_load( this->string.c_str() );
	}
	else if ( this->type == Part::TYPE_EMPTY )
	{
		y += 20;
	}

	return y;
}
