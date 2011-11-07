#ifndef ASSETS_H_
#define ASSETS_H_

#include "SDL/SDL_ttf.h"
#include "Part.h"

class Assets
{

public:
	static bool init();
	static TTF_Font* getTextFont() { return Assets::textFont; };
	static TTF_Font* getHeadingFont() { return Assets::headingFont; };
	static TTF_Font* getSubheadingFont() { return Assets::subheadingFont; };

	static TTF_Font* getFont( int type )
	{
		if ( type == Part::TYPE_HEADING )
		{
			return getHeadingFont();
		}
		else if ( type == Part::TYPE_SUBHEADING )
		{
			return getSubheadingFont();
		}
		else
		{
			return getTextFont();
		}
	};

private:
	static TTF_Font* textFont;
	static TTF_Font* headingFont;
	static TTF_Font* subheadingFont;


};

#endif /* ASSETS_H_ */
