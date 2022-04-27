//---------------Cycle Battle States
function BattleSelectAction()
{
	//-----Character UI
	//Set selected character UI in the active position
	yDraw[charTurn] = lerp(yDraw[charTurn], 181, 0.3)
	
	//Set character UI in the idle position if not selected
	if charTurn > 0
	{
		yDraw[charTurn - 1] = lerp(yDraw[charTurn - 1], 243, 0.3)
	}
	if charTurn < 2
	{
		yDraw[charTurn + 1] = lerp(yDraw[charTurn + 1], 243, 0.3)
	}
	
	if keyboard_check_pressed(ord("Z"))
	{
		audio_play_sound(Snd_Select, 0, false);
		//Go to next turn
		if charTurn < 2
			charTurn += 1;
		else //Go to next state
			state = BattleEnemyAttack;
	}
	
	//Go to previous turn
	if keyboard_check_pressed(ord("X"))
	{
		audio_play_sound(Snd_Select, 0, false);
		if charTurn > 0
			charTurn -= 1;
	}
	
	//-----Select Hand
	//Play move sound
	if keyboard_check_pressed(vk_down) || keyboard_check_pressed(vk_up)
	{
		audio_play_sound(Snd_MenuMove, 0, false);
	}
	
	//Hand position
	select += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	select = clamp(select, 0, 4);
	lSelect = lerp(lSelect, select, 0.5)
}

function BattleEnemyAttack()
{
	
}



