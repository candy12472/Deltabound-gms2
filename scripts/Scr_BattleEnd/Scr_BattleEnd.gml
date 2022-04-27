//---------------End Battle
function Scr_BattleEnd()
{
	//Delete all of the battle objects
	instance_destroy(Obj_Par_Battle);
	
	//Delete the enemy of the battle
	with(Obj_Par_Enemy)
	{
		if inBattle = true
		{
			instance_destroy()
		}
	}
}