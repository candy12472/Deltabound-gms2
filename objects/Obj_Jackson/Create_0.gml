/// @desc last edited by LunaticWyrm467
//---------------Upon Creation
//Set depth
Scr_Depth();

//-----Variable Declaration

//-----Expressions
//Dictionary
enum star_Express {
	normal,
	surprised,
	blocked,
	fancy
}
star_currExpress = star_Express.normal;

//Time and Speed
image_speed = 0;
star_timer	= 0;

//-----Interaction
//Player Pointer
star_player = Obj_Player