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

#ifndef HUD_H_
#define HUD_H_

class SDL_Surface;
class Line;

/**
 * TODO: Make some sort of HUD which subtley shows the controls, kind of how Acrobat
 * does in presentation mode.
 */
class HUD
{

public:
	/**
	 * This gets called by the presentation renderer after the slide is drawn.
	 */
	static void drawHud( SDL_Surface* surface );

};

#endif /* HUD_H_ */
