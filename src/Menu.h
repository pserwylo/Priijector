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

#ifndef MENU_H_
#define MENU_H_

#include "Screen.h"

/**
 * TODO: Actually integrate this with the Application, so there is a menu.
 */
class Menu: public Screen {
public:
	Menu( int w, int h );
	virtual ~Menu();

	enum {
		MENU_MAIN,
		MENU_FILE_CHOOSER
	};

	Screen* update( double time );
	virtual void render( SDL_Surface* surface );

private:
	int currentMenu;
	const char** currentOptions;
	int indexNumOptions;
	int index;
	static const char* OPTIONS_MAIN[];
	static const int OPTIONS_MAIN_N = 3;
};

#endif /* MENU_H_ */
