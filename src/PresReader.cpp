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

#include "PresReader.h"
#include "Presentation.h"
#include "Part.h"
#include "Block.h"
#include "Slide.h"
#include <stdio.h>
#include <iostream>
#include <fstream>

PresReader::PresReader( int w, int h ) :
	screenWidth( w ),
	screenHeight( h )
{
	this->parts = new std::vector<Part*>();
	this->blocks = new std::vector<Block*>();
	this->slides = new std::vector<Slide*>();
}

PresReader::~PresReader() {

}

void PresReader::readFile( std::string filename )
{
	std::string string;
	std::string line;
	std::ifstream input( filename.c_str(), std::ifstream::in );
	if ( input.is_open() )
	{
		while ( !input.eof() )
		{
			getline( input, line );
			string += line + '\n';
		}
		input.close();
	}
	this->readString( string );
}

void PresReader::readString( std::string string )
{
	bool newLine = true;
	int type = Part::TYPE_TEXT;
	bool fadeSlide = true;
	std::string line;

	for ( unsigned int i = 0; i < string.length(); i ++ )
	{
		bool keepChar = true;
		bool skipLine = false;
		char c = string[ i ];

		if ( newLine )
		{
			// Need to store the old line first...
			if ( i != 0 && line.length() > 0 )
			{
				this->pushPart( type, line );
				line = "";
			}

			// What type of line is this new line?
			newLine = false;
			if ( c == Part::SYM_HEADING )
			{
				type = Part::TYPE_HEADING;
				keepChar = false;
			}
			else if ( c == Part::SYM_SUBHEADING )
			{
				type = Part::TYPE_SUBHEADING;
				keepChar = false;
			}
			else if ( c == '\n' )
			{
				type = Part::TYPE_EMPTY;
				keepChar = false;
				newLine = true;
				this->pushPart( type, line );
			}
			else if ( c == '#' )
			{
				skipLine = true;
			}
			else if ( c == '!' )
			{
				// new block...
				skipLine = true;
				this->pushBlock();
			}
			else if ( c == '*' )
			{
				// new slide...
				skipLine = true;

				// Check for transition modifiers  directly after the first char (e.g. don't fade '+')
				this->pushSlide( fadeSlide );
				fadeSlide = true;
				i++;
				if ( i < string.length() && string[i] != '\n' )
				{
					char modifier = string[ i ];
					printf( "FOUND MODIFIER: %c", modifier );
					if ( modifier == '+' )
					{
						fadeSlide = false;
					}
					i++;
				}
			}
			else
			{
				type = Part::TYPE_TEXT;
			}
		}
		else if ( c == '\n' )
		{
			keepChar = false;
			newLine = true;
		}

		if ( skipLine )
		{
			while ( i < string.length() && string[i] != '\n' )
			{
				i ++;
			}
			newLine = true;
		}
		else if ( keepChar )
		{
			line += c;
		}
	}

	// Create the last part...
	this->pushPart( type, line );
	this->pushBlock();
	this->pushSlide();
	this->presentation = new Presentation( screenWidth, screenHeight, this->slides );

}

void PresReader::pushPart( int type, std::string line )
{
	Part* part = new Part( type, line );
	this->parts->push_back( part );
	// printf( "Push Part: (%d,%d) %s", part->getType(), line.length(), line.c_str() );
}

void PresReader::pushBlock()
{
	if ( this->parts->size() > 0 )
	{
		Block* block = new Block( this->parts );
		this->blocks->push_back( block );
		// printf( "Push block (%d parts)", this->parts->size() );
		this->parts = new std::vector<Part*>();
	}
}

void PresReader::pushSlide( bool fade )
{
	this->pushBlock();

	if ( this->blocks->size() > 0 )
	{
		Slide* slide = new Slide( this->blocks, fade );
		// printf( "Push slide (%d blocks)", this->blocks->size() );
		this->slides->push_back( slide );
		this->blocks = new std::vector<Block*>();
	}
}
