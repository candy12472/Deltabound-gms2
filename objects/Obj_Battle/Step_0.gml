script_execute(state);

if state = BattleEnemyAttack && global.flag[8] = 0
{
	alarm[0] = 600;
	global.flag[8] = 1;
}