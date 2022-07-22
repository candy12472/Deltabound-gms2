if Obj_Player.x >= x && con = 0
{
	con = 1;
	
	instance_create_layer(0, 0, layer, Obj_CutsceneManager);
	var ch = 0;
	var chris = instance_create_layer(Obj_Player.x, Obj_Player.y, layer, Obj_Actor);
	Scr_ActorSetup(ch, chris, "chris")
	
	Scr_ActorSelect(ch);
	Scr_Facing(90);
}

