/*
 * Application.cpp
 *
 *  Created on: Aug 24, 2011
 *      Author: pete
 */

#include "GameApplication.h"
#include "wiiuse/wpad.h"
#include "gccore.h"

using namespace Wire;

WIRE_APPLICATION( GameApplication );

Bool GameApplication::OnPrecreate()
{
	// This function is called before the creation of the application window
	// and its renderer.

	// The platform dependent part of the application might need to do some
	// initialization. If it fails, we return false and the application exits.
	if ( !Parent::OnPrecreate() )
	{
			return false;
	}

	return true;
}

Bool GameApplication::OnInitialize()
{
	// This function is called by the framework after the renderer was
	// initialized, but before the rendering loop starts.

	if (!Parent::OnInitialize())
	{
			return false;
	}

	// Put all your initializations here.
	// ======
	// For now I will put the game stuff in here, but I presume this would
	// actually be menu assets and such.

	// We create a cube and reference it using a smart pointer. The smart
	// pointer automatically deletes the object when it goes out of scope
	// and no other references to the object exist. In this case deletion
	// will happen when Sample0 is being destructed.
	// Creation of Wire::Geometry objects is explained in detail in Sample1.
	mspCube = StandardMesh::CreateCube8(/* number of RGB(A) channels */ 4);

	// Create a camera for rendering
	cameraLocation = Vector3F( 0.0F, 0.0F, 10.0F );
	Vector3F viewDirection(0.0F, 0.0F, -1.0F);
	Vector3F up(0.0F, 1.0F, 0.0F);
	mspCamera = WIRE_NEW Camera(cameraLocation, viewDirection, up);

	return true;
}

void GameApplication::OnTerminate()
{
}

void GameApplication::OnIdle()
{

	int numPlayers = 2;
	for ( int i = 0; i < numPlayers; i ++ )
	{
		u32 pressed = WPAD_ButtonsHeld( i );
		bool left = pressed & WPAD_BUTTON_LEFT;
		bool right = pressed & WPAD_BUTTON_RIGHT;
		bool boost = pressed & WPAD_BUTTON_A;
		bool jump = pressed & WPAD_BUTTON_B;

		if ( left )
		{
			cameraLocation = Vector3F( cameraLocation.X() - 1, cameraLocation.Y(), cameraLocation.Z() );
		}
		else if ( right )
		{
			cameraLocation = Vector3F( cameraLocation.X() + 1, cameraLocation.Y(), cameraLocation.Z() );
		}

		if ( boost )
		{
			// tell player to boost.
			// If the player is boosting, then use a log function to increase their speed towards
			// a certain threshold.
		}
		else if ( /*!player->isBoosting() && player->isSpeedAboveNormal() */ false )
		{
			// Bring their speed (linearly?) down to
		}

		if ( jump )
		{

		}
	}

	// Create a camera for rendering
	Vector3F viewDirection(0.0F, 0.0F, -1.0F);
	Vector3F up(0.0F, 1.0F, 0.0F);
	this->mspCamera->LookAt( cameraLocation, viewDirection, up );

	Renderer* g = GetRenderer();
	g->ClearBuffers();
	g->PreDraw( mspCamera );

	g->Draw( mspCube );

	g->PostDraw();
	g->DisplayBackBuffer();

}
