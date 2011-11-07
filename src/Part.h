#ifndef PART_H_
#define PART_H_

#include <string>

class SDL_Surface;

/**
 * A part is a visual element which goes on a slide.
 * Each slide consists of several parts.
 * Essentially, I consider a part to just encode certain characteristics about a piece
 * of text, but perhaps it could do images too.
 */
class Part {
public:
	Part( int type, std::string string );
	virtual ~Part();

	int getType() { return this->type; };

	/**
	 * Returns the height where the renderer finished.
	 */
	int render( SDL_Surface* surface, int startY );

public:
	static const int TYPE_TEXT = 1;
	static const int TYPE_HEADING = 2;
	static const int TYPE_SUBHEADING = 4;
	static const int TYPE_EMPTY = 8;
	static const int TYPE_IMAGE = 16;
	static const int TYPE_APP = 32;

	static const char SYM_HEADING = '=';
	static const char SYM_SUBHEADING = '-';
	static const char SYM_END_BLOCK = '!';
	static const char SYM_END_SLIDE = '*';

private:
	int type;
	std::string string;
	SDL_Surface* imageSurface;

};

#endif /* PART_H_ */
