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

#ifndef ASSETS_H_
#define ASSETS_H_

#include "SDL/SDL_ttf.h"
#include "Part.h"

/**
 * Keeps track of fonts required for the game.
 * Would also keep track of images for the HUD or other GUI elements if required.
 */
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
