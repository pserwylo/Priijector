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

#ifndef PRESREADER_H_
#define PRESREADER_H_

#include <vector>
#include <string>

class Presentation;
class Part;
class Block;
class Slide;

/**
 * Reads either a text file or a string and parses it looking for slides and
 * blocks on those slides. Each block contains multiple parts, either images,
 * text (headings, sub headings or plain) or empty space.
 */
class PresReader {
public:
	PresReader( int w, int h );
	virtual ~PresReader();

public:
	/**
	 * Parses a string turning it into a presentation.
	 */
	void readString( std::string string );

	/**
	 * Reads the contents of file and passes it to readString().
	 * If the file can't be read, an empty string will be read and parsed.
	 */
	void readFile( std::string file );

	/**
	 * Returns the parsed presentation.
	 * If called before read*() then it will return NULL.
	 */
	Presentation* getPresentation() { return this->presentation; }

protected:
	// Helper functions for creating the respective building blocks of a presentation.
	void pushPart( int type, std::string line );
	void pushBlock();
	void pushSlide( bool fade = false );

private:
	int screenWidth;
	int screenHeight;
	Presentation* presentation;
	std::vector<Part*>* parts;
	std::vector<Block*>* blocks;
	std::vector<Slide*>* slides;
};

#endif /* PRESREADER_H_ */
