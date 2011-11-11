#ifndef SCREEN_H_
#define SCREEN_H_

class SDL_Surface;

class Screen {
public:
	Screen( int w, int h );
	virtual ~Screen();

	virtual Screen* update( double timeStep ) = 0;
	virtual void render( SDL_Surface* surface ) = 0;

	void clear( SDL_Surface* surface );

protected:
	void readInput();

private:
	void processButton( int pressed, bool& downFlag, bool& upFlag, int btnMask );

public:
	static Screen* CONTINUE;

protected:
	int screenWidth;
	int screenHeight;

	bool btnHome, btnHome_Up;
	bool btnA, btnA_Up;
	bool btnB, btnB_Up;
	bool btn1, btn1_Up;
	bool btn2, btn2_Up;
	bool btnUp, btnUp_Up;
	bool btnDown, btnDown_Up;
	bool btnLeft, btnLeft_Up;
	bool btnRight, btnRight_Up;

};

#endif /* SCREEN_H_ */
