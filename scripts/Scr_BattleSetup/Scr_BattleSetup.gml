//---------------Battle Start
function Scr_BattleSetup()
{
	//Create battle manager
	instance_create_depth(0, 0, depth, Obj_Battle);
	
	//Create the characters in battle
	for(var i = 0; i < 4; i++;)
	{
		if global.char[i] != noone
		{
			instance_create_depth(Obj_Player.x, Obj_Player.y, depth, global.char[i])
		}
	}
}