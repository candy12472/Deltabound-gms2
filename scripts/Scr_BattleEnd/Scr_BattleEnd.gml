//---------------End Battle
function Scr_BattleEnd()
{
	//Delete the enemy of the battle
	with(Obj_Par_Enemy)
	{
		if inBattle = true
		{
			inBattle = false;
			instance_destroy()
		}
	}
	//Delete all of the battle objects
	instance_destroy(Obj_BattleArea);
	instance_destroy(Obj_Battle);
}