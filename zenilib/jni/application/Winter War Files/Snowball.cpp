#include "Snowball.h"
#include "Game_Model.h"
#include "World.h"
#include "Tile.h"

#include <zenilib.h>

const int Snowball::snowball_ID_c = 2;

const float Launch_Speed = 300;

using namespace Zeni;

Snowball::Snowball(const Zeni::Point3f &center_,
              const Zeni::Vector3f &size_) :
	Moveable(center_, size_)	
	, damage_dealt(false), damage(size_.magnitude())
//	, owner(p)
{
	Lifespan.start();

}


Snowball::~Snowball(void)
{
}

void Snowball::update(const float &time)
{	
	if (!is_on_ground())
	{
		Point3f backup = center;
		Moveable::update(time);
		if (Game_Model::get().get_World()->get_tile(center) == NULL){
			alive = false;
		}
		else if (Game_Model::get().get_World()->get_tile(center)->get_height() >= center.z - 30.0f){
			alive = false;
		}
	}
	else
	{
		damage_dealt = true;
		alive = false;
		set_velocity(Vector3f());
	}

	//Temporary, so we don't have infinite snowballs flying around chewing up resources
	if(Lifespan.seconds() > 10 || damage_dealt)	{
		damage_dealt = true;
		Moveable::set_velocity(Vector3f());
		Lifespan.stop();
		alive = false;
		perform_contact_effects();
		//Game_Model::get().Kill_me(this); Can't do this
	}
}

void Snowball::get_thrown(const Vector3f &dir)
{
	//accelerate(dir*force);
	Moveable::set_velocity(dir*Launch_Speed);
}

float Snowball::deal_damage()	{
	if(!damage_dealt)	{
		damage_dealt = true;
		return damage;
	}
	return 0;
}

void Snowball::perform_contact_effects()	{
	//Add cool shit to the game model here, possibly sound effects
}

void Snowball::create_body()
{
	body = Zeni::Collision::Sphere(center, size.z);
}
