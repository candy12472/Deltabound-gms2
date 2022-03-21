//---------------Dynamic State Machine
//-----State Decider
/*
Decide whether player should move freely or not
(this can be used to later initiate more complex behaviours)
*/
function DynaState() {
	
	//Use a NULL pointer to reserve memory for future state
	state = pointer_null;
	
	//Decide which state should be executed
	if !instance_exists(Obj_Textbox) && !instance_exists(Obj_Pause) && !place_meeting(x, y, Obj_Par_Enemy) state = PlayerStateFree;
	else state = PlayerStateStall;

	//Execute State
	script_execute(state);
	
}

//-----The Free State
/*
The player can move around freely and interact with things.
*/
function PlayerStateFree() {
	
	//Movement
	star_xSpeed = lengthdir_x(kin_InputMag * star_SpeedWalk, kin_InputDir);
	star_ySpeed = lengthdir_y(kin_InputMag * star_SpeedWalk, kin_InputDir);

	PlayerCollision();

	//Update Sprite Index
	var temp_OldSprite = sprite_index;
	if(kin_InputMag != 0)
	{
		direction = kin_InputDir;
		sprite_index = star_PlayerWalk;
	}
	else sprite_index = star_PlayerIdle;
	if(temp_OldSprite != sprite_index) star_LocalFrame = 0;

	//Update Image Index
	PlayerAnimateSprite();
}

//-----The Stalled State
/*
The player cannot move. For now this will just be used for dialogue.
*/
function PlayerStateStall() {
	
	//Do Nothing
	kin_InputMag = 0
}