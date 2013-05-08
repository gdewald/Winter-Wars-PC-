#include "Level.h"
#include "Tutorial_Level.h"
#include "Claim_Tree_Level.h"
#include "Death_Match.h"

using namespace std;

Level *create_level(const string &type)
{
	if (type == "Tutorial")
		return new Tutorial_Level();
	
	if (type == "Claim Tree")
		return new Claim_Tree_Level();
		//return new Death_Match();


	if (type == "Death Match")
		return new Death_Match();

	throw type;
}