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

//Dialogue
star_InteractObj = Obj_Interact;

//State
star_State = DynaState;

//Party Follow Chris
arraySize = 100;

for(var i = arraySize - 1; i >= 0; i--;)
{
	followX[i] = x;
	followY[i] = y;
	followDir[i] = direction;
}
