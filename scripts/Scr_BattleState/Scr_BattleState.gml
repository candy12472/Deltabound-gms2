//---------------Cycle Battle States
function BattleSelectAction()
{
	//-----Character UI
	//Set selected character UI in the active position
	yDraw[charTurn] = lerp(yDraw[charTurn], 181, 0.3);
	
	//Set character UI in the idle position if not selected
	if charTurn > 0
	{
		yDraw[charTurn - 1] = lerp(yDraw[charTurn - 1], 243, 0.3);
	}
	if charTurn < 2
	{
		yDraw[charTurn + 1] = lerp(yDraw[charTurn + 1], 243, 0.3);
	}
	
	if keyboard_check_pressed(ord("Z"))
	{
		audio_play_sound(Snd_Select, 0, false);
		global.char[charTurn].turn_action = select;
		show_debug_message(select);
		//Go to next turn
		if charTurn < global.charNumber
			charTurn += 1;
		else //Go to next state
			state = ExecuteBattleActions;		
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

function ExecuteBattleActions(){
	if(yDraw[global.charNumber] < 243){
		yDraw[global.charNumber] = lerp(yDraw[global.charNumber], 245, 0.3);
	}else{
		for (i = 0; i < array_length(global.party); i++){
			action = "";
			switch (global.char[i].turn_action){
			case 0:
			action = "Swing";
			break;
			case 1:
			action = "Actions";
			break;
			case 2:
			action = "Items";
			break;
			case 3:
			action = "Spare";
			break;
			case 4:
			action = "Defend";
			break;
			default:
			break;
			}
			
			show_debug_message(action);
		}
		state = BattleEnemyAttack;
	}
}

function BattleEnemyAttack()
{
	charTurn = 0;
	state = BattleSelectAction;
}



