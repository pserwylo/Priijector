#ifndef BLOCK_H_
#define BLOCK_H_

#include <vector>

class SDL_Surface;
class Part;

/**
 * A Block represents one block of Parts on a slide.
 * This is the bit which is shown when you ask the presentation to continue.
 * So a slide can have several parts, each of which are navigated to when pressing next.
 * Also, each Block consists of several Parts, such as blocks of text or images.
 */
class Block {
public:
	Block( std::vector<Part*>* parts );
	virtual ~Block();

public:
	/**
	 * Returns the y point where the renderer finished.
	 */
	int render( SDL_Surface* surface, int startY );

private:
	std::vector<Part*>* parts;
};

#endif /* BLOCK_H_ */
