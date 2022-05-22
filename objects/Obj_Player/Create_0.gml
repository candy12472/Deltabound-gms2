/// @desc last edited by LunaticWyrm467
//---------------Upon Creation
//Set depth
Scr_Depth();

//-----Variable Declaration

//-----Player Behaviour
//Player Kinematics
image_speed = 0;
star_xSpeed = 0;
star_ySpeed = 0;
kin_InputMag = 0;

star_SpeedWalk	 = 1.5;
star_LocalFrame	 = 0;

//Spriteworks
star_PlayerIdle	 = Spr_PlayerIdle;
star_PlayerWalk	 = Spr_PlayerWalk;
star_LocalFrame	 = 0;

//State
star_State = DynaState;

//Party Follow Chris
arraySize = 100;

kin_InteractCol[0] = collision_line(x, y, x + lengthdir_x(20, direction + 15), y + lengthdir_y(20, direction + 15), Obj_Interact, false, false);
kin_InteractCol[1] = collision_line(x, y, x + lengthdir_x(20, direction - 15), y + lengthdir_y(20, direction - 15), Obj_Interact, false, false);
kin_InteractCol[2] = collision_line(x, y, x + lengthdir_x(20, direction), y + lengthdir_y(20, direction), Obj_Interact, false, false);

for(var i = arraySize - 1; i >= 0; i--;)
{
	followX[i] = x;
	followY[i] = y;
	followDir[i] = direction;
}
