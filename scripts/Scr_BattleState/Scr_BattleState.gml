// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BattleSelectAction()
{
	if keyboard_check_pressed(ord("Z"))
	{
		if charTurn + 1 < global.charNumber + 1 && charTurn != -1
		{
			charTurn += 1;
			select = 0;
		}
		else
		{
			select = 0;
			charTurn = -1;
			state = BattleEnemyAttack;
			instance_create_layer(x, y, layer, Obj_ClubsTest);
		}
	}
	
	if charTurn != -1
	{
		yDraw[charTurn] = lerp(yDraw[charTurn], 181, 0.3);
	}
	
	areaAngle = lerp(areaAngle, 180, 0.2);
	areaXscale = lerp(areaXscale, 0, 0.2);
	areaYscale = lerp(areaYscale, 0, 0.2);
	
	select += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	select = clamp(select, 0, 4);
	lSelect = lerp(lSelect, select, 0.5);
}

function BattleEnemyAttack()
{
	yDraw[0] = lerp(yDraw[0], 251, 0.2);
	yDraw[1] = lerp(yDraw[1], 251, 0.2);
	yDraw[2] = lerp(yDraw[2], 251, 0.2);
	areaAngle = lerp(areaAngle, 0, 0.2);
	areaXscale = lerp(areaXscale, 1, 0.2);
	areaYscale = lerp(areaYscale, 1, 0.2);

	if !instance_exists(Obj_Heart)
	{
		instance_create_layer(160, 80, layer, Obj_Heart);
	}
}