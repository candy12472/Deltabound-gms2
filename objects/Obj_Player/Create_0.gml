/// @desc last edited by LunaticWyrm467
//---------------Upon Creation
//-----Variable Declaration

//-----Player Behaviour
//Collision
star_ColMap = layer_tilemap_get_id(layer_get_id("Col"));

//Player Kinematics
image_speed = 0;
star_xSpeed = 0;
star_ySpeed = 0;

star_SpeedWalk	 = 1.5;
star_LocalFrame	 = 0;

//Spriteworks
star_PlayerIdle	 = Spr_PlayerIdle;
star_PlayerWalk	 = Spr_PlayerWalk;
star_LocalFrame	 = 0;

//Dialogue
star_InteractObj = Obj_Par_Interact;

//State
star_State = DynaState;

//Party Follow Chris
arraySize = 100;

for(var i = arraySize - 1; i >= 0; i--;)
{
	followX[i] = x;
	followY[i] = y;
}
