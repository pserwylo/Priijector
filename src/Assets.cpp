#include "Assets.h"

TTF_Font* Assets::textFont;
TTF_Font* Assets::headingFont;
TTF_Font* Assets::subheadingFont;

bool Assets::init()
{
	printf( "Initializing fonts..." );

	textFont = TTF_OpenFont( "sd:/apps/priijector/assets/Pfennig.ttf", 22 );
	headingFont = TTF_OpenFont( "sd:/apps/priijector/assets/PfennigBold.ttf", 32 );
	subheadingFont = TTF_OpenFont( "sd:/apps/priijector/assets/Pfennig.ttf", 26 );

	if ( textFont == NULL || headingFont == NULL || subheadingFont == NULL )
	{
		return false;
	}
	else
	{
		return true;
	}
}
