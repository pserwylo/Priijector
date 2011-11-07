#ifndef MENU_H_
#define MENU_H_

#include "Screen.h"

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
