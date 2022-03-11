// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scr_BattleEnd()
{
	instance_destroy(Obj_Par_Battle);
	with(Obj_Par_Enemy)
	{
		if inBattle = true
		{
			instance_destroy()
		}
	}
}