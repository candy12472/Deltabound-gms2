//Execute current state
script_execute(state);

//Set bullet hell time
if state = BattleEnemyAttack && global.flag[8] = 0
{
	alarm[0] = 600;
	global.flag[8] = 1;
}
