// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scr_BattleSetup()
{
	instance_create_layer(0, 0, "Battle", Obj_Battle);
	for(var i = 0; i < 4; i++;)
	{
		if global.char[i] != noone
		{
			instance_create_layer(Obj_Player.x, Obj_Player.y, "Battle", global.char[i])
		}
	}
}