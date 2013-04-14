
#pragma once
#ifndef EVENT_H
#define EVENT_H

#include <zenilib.h>

#include "BitStream.h"
class Player;
class Structure;

class WWEvent
{
public :
	virtual RakNet::BitStream *package() = 0;
	virtual void unpackage(RakNet::BitStream *) = 0;

	virtual void put_in_game() = 0;

};

class Build_Event : public WWEvent
{
public:	
	Build_Event(Structure *);
	Build_Event(){}

	virtual RakNet::BitStream *package();
	virtual void unpackage(RakNet::BitStream *);

	virtual void put_in_game();

private:
	int type;
	Zeni::Point3f tile;
	int team_color;
};



#endif