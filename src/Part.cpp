#include "Part.h"
#include "Assets.h"
#include "loadMii.h"

#include <SDL/SDL.h>
#include <SDL/SDL_ttf.h>
#include <SDL/SDL_image.h>

Part::Part( int type, std::string string ) :
	type( type ),
	string( string ),
	imageSurface( NULL )
{
	if ( this->type == Part::TYPE_TEXT )
	{
		std::string start = string.substr( 0, 4 );
		if ( start.compare( "img:" ) == 0 )
		{
			this->type = Part::TYPE_IMAGE;
			this->string = string.substr( 4 );
			// printf( "IMAGE @ %s", this->string.c_str() );
		}
		else if ( start.compare( "app:" ) == 0 )
		{
			this->type = Part::TYPE_APP;
			this->string = string.substr( 4 );
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

	// printf( "Part: %s", string.c_str() );

	if ( this->type == Part::TYPE_HEADING || this->type == Part::TYPE_SUBHEADING || this->type == Part::TYPE_TEXT )
	{
		SDL_Colour textColour = { 255, 255, 255 };
		SDL_Surface* text = TTF_RenderText_Solid( Assets::getFont( this->type ), this->string.c_str(), textColour );
		SDL_Rect destRect;

		// Centre headings and sub headings...
		if ( this->type == Part::TYPE_HEADING || this->type == Part::TYPE_SUBHEADING )
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
		y += 10;
		if ( this->imageSurface == NULL )
		{
			this->imageSurface = IMG_Load( string.c_str() );
			if ( this->imageSurface == NULL )
			{
				printf( "Error: %s", SDL_GetError() );
				exit( 0 );
				this->type = Part::TYPE_TEXT;
				this->string = "Could not load image: " + this->string;
			}
		}
		else
		{
			SDL_Rect destRect;
			destRect.x = 20;
			destRect.y = y;
			destRect.w = this->imageSurface->w;
			destRect.h = this->imageSurface->h;
			SDL_BlitSurface( this->imageSurface, 0, surface, &destRect );
		}
	}
	else if ( this->type == Part::TYPE_APP )
	{
		loadMii_load( this->string.c_str() );
	}
	else if ( this->type == Part::TYPE_EMPTY )
	{
		y += 20;
	}

	return y;
}
