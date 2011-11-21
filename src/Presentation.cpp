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
	alpha( 255 )
{
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
		if ( this->currentSlide > this->slides->size() - 1 )
		{
			this->currentSlide = this->slides->size() - 1;
		}

		int currentBlock;
		input >> currentBlock;

		Slide* slide = this->slides->at( this->currentSlide );
		slide->setCurrentBlock( currentBlock );
		input.close();
	}
}

Screen* Presentation::update( double timeStep )
{
	if ( this->alpha <= SDL_ALPHA_OPAQUE )
	{
		this->alpha += 255 * ( timeStep / 1000 ) * 1.5;
		if ( this->alpha > SDL_ALPHA_OPAQUE )
		{
			this->alpha = SDL_ALPHA_OPAQUE;
		}
	}

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
		this->store();
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
			current = this->slides->at( this->currentSlide );
			if ( current->requiredFade() )
			{
				this->alpha = 0;
			}
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
			if ( current->requiredFade() )
			{
				this->alpha = 0;
			}

			this->currentSlide --;
			current = this->slides->at( this->currentSlide );

		}
		// Otherwise just leave it where it is (at the start...)
	}
}

void Presentation::render( SDL_Surface* surface )
{
	Slide* current = this->slides->at( currentSlide );

	// Copy the surface so that we can change its alpha without touching anything else on the surface...
	SDL_Surface* front = SDL_DisplayFormat( surface );
	SDL_SetAlpha( front, SDL_SRCALPHA, this->alpha );
	current->render( front );

	// Then copy the alpha-ish surface to the regular one.
	SDL_BlitSurface( front, 0, surface, 0 );
	SDL_FreeSurface( front );

	// TODO: The hud doesn't actually do anything yet.
	HUD::drawHud( surface );
}
