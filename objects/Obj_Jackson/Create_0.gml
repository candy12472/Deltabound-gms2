/// @desc last edited by LunaticWyrm467
//---------------Upon Creation
event_inherited()

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
