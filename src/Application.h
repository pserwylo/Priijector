#ifndef APPLICATION_H_
#define APPLICATION_H_

class SDL_Surface;
class Screen;

class Application
{
public:
	Application() {};
	virtual ~Application() {};

	void init();
	void run();

private:
	SDL_Surface* surface;
	Screen* screen;

};

#endif /* APPLICATION_H_ */
