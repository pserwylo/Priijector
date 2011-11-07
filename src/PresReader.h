#ifndef PRESREADER_H_
#define PRESREADER_H_

#include <vector>
#include <string>

class Presentation;
class Part;
class Block;
class Slide;

class PresReader {
public:
	PresReader( int w, int h );
	virtual ~PresReader();

public:
	void readString( std::string string );
	void readFile( std::string file );
	Presentation* getPresentation() { return this->presentation; }

protected:
	void pushPart( int type, std::string line );
	void pushBlock();
	void pushSlide();

private:
	int screenWidth;
	int screenHeight;
	Presentation* presentation;
	std::vector<Part*>* parts;
	std::vector<Block*>* blocks;
	std::vector<Slide*>* slides;
};

#endif /* PRESREADER_H_ */
