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
