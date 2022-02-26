// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scr_BattleSetup()
{
	instance_create_depth(0, 0, depth, Obj_Battle);
	instance_create_depth(0, 0, depth, Obj_Odometer);
	for(var i = 0; i < 4; i++;)
	{
		if global.char[i] != noone
		{
			instance_create_depth(Obj_Player.x, Obj_Player.y, depth, global.char[i])
		}
	}
}