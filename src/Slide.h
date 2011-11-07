#ifndef SLIDE_H_
#define SLIDE_H_

class Block;
class SDL_Surface;

#include <vector>


class Slide {
public:
	Slide( std::vector<Block*>* blocks );
	virtual ~Slide();

public:
	bool hasLessBlocks() { return currentBlock > 0; };
	bool hasMoreBlocks() { return currentBlock < this->blocks->size() - 1; };
	void nextBlock() { this->currentBlock ++; };
	void previousBlock() { this->currentBlock --; };
	int getCurrentBlock() { return this->currentBlock; }
	void setCurrentBlock( int value ) { this->currentBlock = value; }
	void render( SDL_Surface* surface );

private:
	std::vector<Block*>* blocks;
	unsigned int currentBlock;
};

#endif /* SLIDE_H_ */
