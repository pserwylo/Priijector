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
	while ( !input.eof() )
	{
		getline( input, line );
		string += line + '\n';
	}
	printf( "Parsing: %d", string.size() );
	this->readString( string );
}

/**
 * Begin at start of new slide, new block, and new element.
 * New line means end of element.
 * Beginning with:
 *  = means heading
 *  - means subheading
 *  (blank) means regular text
 *  (blank-line) means empty part
 *  ! means new block on same slide
 *  * means new slide
 */
void PresReader::readString( std::string string )
{
	bool newLine = true;
	int type = Part::TYPE_TEXT;
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
				this->pushSlide();
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
	printf( "Push Part: (%d,%d) %s", part->getType(), line.length(), line.c_str() );
}

void PresReader::pushBlock()
{
	if ( this->parts->size() > 0 )
	{
		Block* block = new Block( this->parts );
		this->blocks->push_back( block );
		printf( "Push block (%d parts)", this->parts->size() );
		this->parts = new std::vector<Part*>();
	}
}

void PresReader::pushSlide()
{
	this->pushBlock();

	if ( this->blocks->size() > 0 )
	{
		Slide* slide = new Slide( this->blocks );
		printf( "Push slide (%d blocks)", this->blocks->size() );
		this->slides->push_back( slide );
		this->blocks = new std::vector<Block*>();
	}
}
