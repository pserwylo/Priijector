#include "SDL/SDL.h"
#include "Application.h"

bool DO_EXIT = false;

int main(int argc, char **argv)
{
	Application app;
	app.init();
	app.run();
	return 0;
}
