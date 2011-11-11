#include <fstream>
#include <stdlib.h>
#include <gccore.h>
#include "Presentation.h"
#include "Block.h"
#include "Part.h"
#include "Slide.h"
#include "HUD.h"
#include "wiiuse/wpad.h"
#include "SDL/SDL.h"
#include "SDL/SDL_draw.h"
#include "SDL/SDL_gfxPrimitives.h"
#include <assert.h>

Presentation::Presentation( int screenWidth, int screenHeight, std::vector<Slide*>* slides ) :
	Screen( screenWidth, screenHeight ),
	slides( slides ),
	alpha( 122 )
{
	SDL_Surface* screen = SDL_GetVideoSurface();
	this->currentSlide = 0;
	this->load();
}

Presentation::~Presentation() {}

void Presentation::store()
{
	std::ofstream output( "sd:/apps/priijector/bookmark" );
	Slide* slide = this->slides->at( this->currentSlide );
	output << this->currentSlide;
	output << '\n';
	output << slide->getCurrentBlock();
	output.close();
}

void Presentation::load()
{
	std::ifstream input( "sd:/apps/priijector/bookmark" );
	if ( input.is_open() )
	{
		input >> this->currentSlide;

		int currentBlock;
		input >> currentBlock;

		Slide* slide = this->slides->at( this->currentSlide );
		slide->setCurrentBlock( currentBlock );
	}
}

Screen* Presentation::update( double timeStep )
{
	this->readInput();

	if ( this->btnHome_Up )
	{
		this->store();
		exit( 0 );
	}
	else if ( this->btnA_Up || this->btnRight_Up )
	{
		this->next();
	}
	else if ( this->btnB_Up || this->btnLeft_Up )
	{
		this->previous();
	}
	else if ( this->btn1 && this->btn2 )
	{
		SYS_ResetSystem( SYS_RESTART, 0, 0 );
	}

	return this;
}

void Presentation::next()
{
	Slide* current = this->slides->at( currentSlide );
	if ( current->hasMoreBlocks() )
	{
		current->nextBlock();
	}
	else
	{
		if ( this->currentSlide < this->slides->size() - 1 )
		{
			this->currentSlide ++;
		}
		// Otherwise just leave it where it is (at the end...)
	}
}

void Presentation::previous()
{
	Slide* current = this->slides->at( currentSlide );
	if ( current->hasLessBlocks() )
	{
		current->previousBlock();
	}
	else
	{
		if ( this->currentSlide > 0 )
		{
			this->currentSlide --;
		}
		// Otherwise just leave it where it is (at the start...)
	}
}

void Presentation::render( SDL_Surface* surface )
{

	Slide* current = this->slides->at( currentSlide );

	SDL_Surface* front = SDL_DisplayFormat( surface );
	SDL_SetAlpha( front, SDL_SRCALPHA, 100 );
	front = SDL_DisplayFormatAlpha( surface );

	current->render( front );

	SDL_BlitSurface( front, 0, surface, 0 );
	SDL_FreeSurface( front );

	HUD::drawHud( surface );

	if ( DEBUG )
	{
	}
}
