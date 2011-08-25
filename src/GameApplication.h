/*
 * Application.h
 *
 *  Created on: Aug 24, 2011
 *      Author: pete
 */

#ifndef GAMEAPPLICATION_H_
#define GAMEAPPLICATION_H_

#include "WireApplication.h"
using namespace Wire;

/**
 * The application will deal with high level lifecycle of the app.
 * It will be responsible for setting up the display and such.
 * It will also be responsible for transitions from between menu's and the actual game.
 * This will implement WIREAPPLICATION to do all the low level setup.
 */
class GameApplication : public WIREAPPLICATION
{

	WIRE_DECLARE_INITIALIZE;
	typedef WIREAPPLICATION Parent;

public:

	virtual Bool OnPrecreate();
	virtual Bool OnInitialize();
	virtual void OnTerminate();
	virtual void OnIdle();

private:
	GeometryPtr mspCube;
	CameraPtr mspCamera;
	Vector3F cameraLocation;

};

WIRE_REGISTER_INITIALIZE( GameApplication );

#endif /* GAMEAPPLICATION_H_ */
