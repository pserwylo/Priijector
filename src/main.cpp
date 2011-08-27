#include "SDL/SDL.h"
#include "Application.h"

int main(int argc, char **argv)
{
	Application game;
	game.init();
	game.run();
	return 0;
}
