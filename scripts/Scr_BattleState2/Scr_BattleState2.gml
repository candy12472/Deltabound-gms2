// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/*function BattleSelectAction()
{
	if keyboard_check_pressed(ord("Z"))
	{
		audio_play_sound(Snd_Select, 0, false);
		select = 0;
		
		if charTurn + 1 < global.charNumber + 1 && charTurn != -1
		{
			charTurn += 1;
		}
		else
		{
			charTurn = -1;
			state = BattleEnemyAttack;
			instance_create_depth(x, y, depth, Obj_ClubsTest);
		}
	}
	
	if keyboard_check_pressed(ord("X"))
	{
		audio_play_sound(Snd_Select, 0, false);
		select = 0;
		
		if charTurn - 1 >= 0 && charTurn != -1
		{
			charTurn -= 1;
		}
	}
	
	if charTurn != -1
	{
		if global.songPlaying = true
			yDraw[charTurn] = lerp(yDraw[charTurn], 181, 0.3);
		
		if global.hp[charTurn] <= 0
		{
			yDraw[charTurn] = 251;
			
			if charTurn + 1 < global.charNumber + 1 && charTurn != -1
			{
				charTurn += 1;
			}
			else
			{
				charTurn = -1;
				state = BattleEnemyAttack;
				instance_create_depth(x, y, depth, Obj_ClubsTest);
			}
		}
	}
	
	areaAngle = lerp(areaAngle, 180, 0.2);
	areaXscale = lerp(areaXscale, 0, 0.2);
	areaYscale = lerp(areaYscale, 0, 0.2);
	
	if keyboard_check_pressed(vk_down) || keyboard_check_pressed(vk_up)
	{
		audio_play_sound(Snd_MenuMove, 0, false);
	}
	
	select += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	select = clamp(select, 0, 4);
	lSelect = lerp(lSelect, select, 0.5)
}

function BattleEnemyAttack()
{
	yDraw[0] = lerp(yDraw[0], 248, 0.2);
	yDraw[1] = lerp(yDraw[1], 248, 0.2);
	yDraw[2] = lerp(yDraw[2], 248, 0.2);
	areaAngle = lerp(areaAngle, 0, 0.2);
	areaXscale = lerp(areaXscale, 1, 0.2);
	areaYscale = lerp(areaYscale, 1, 0.2);

	if !instance_exists(Obj_Heart)
		instance_create_depth(160, 80, depth, Obj_Heart);
	
	if !instance_exists(Obj_BattleArea)
		instance_create_depth(160, 80, depth, Obj_BattleArea);
}

*/
