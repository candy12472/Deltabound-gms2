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
		
		global.char[charTurn].state = select + 2;
		global.char[charTurn].turn_action = select;
		global.char[charTurn].image_index = 0;
		
		if select = 2
		{
			state = ItemBattle;
		}
		else
		{
			//Go to next turn
			if charTurn < global.charNumber
			{
				charTurn += 1;
				select = 0;
			}
			else //Go to next state
			{
				charTurn = 0;
				count = 0;
				state = ExecuteBattleActions;	
			}
		}
	}
	
	//Go to previous turn
	if keyboard_check_pressed(ord("X"))
	{
		audio_play_sound(Snd_Select, 0, false);
		if charTurn > 0
		{
			charTurn -= 1;
			global.char[charTurn].state = states.idle;
			global.char[charTurn].image_index = 0;
		}
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
			action = "";
			switch (global.char[charTurn].turn_action){
			case 0:
			{
				action = "Swing";
				global.char[charTurn].attackReady = true;
			}
			break;
			case 1:
			{
				action = "Actions";
				global.char[charTurn].image_index = 0;
			}
			break;
			case 2:
			{
				action = "Items";
				global.char[charTurn].image_index = 0;
			}
			break;
			case 3:
			{
				action = "Spare";
				global.char[charTurn].image_index = 0;
			}
			break;
			case 4:
			{
				action = "Defend";
				global.char[charTurn].image_index = 0;
			}
			break;
			default:
			break;
			}
			
			show_debug_message(action);
		//Go to next turn
		if(global.char[charTurn].image_index >= global.char[charTurn].image_number-1){
			global.char[charTurn].state = states.idle;
			global.char[charTurn].attackReady = false;
			charTurn++;
		}
		if charTurn >= global.charNumber
		{
			state = BattleEnemyAttack;	
		}
	}
}

function BattleEnemyAttack()
{
	charTurn = 0;
	for(var i = 0; i < array_length(global.party); i++;)
		global.char[i].state = states.idle;
	state = BattleSelectAction;
}

function ItemBattle()
{
	if(yDraw[charTurn] < 243)
		yDraw[charTurn] = lerp(yDraw[global.charNumber], 245, 0.3);
	
	if keyboard_check_pressed(ord("X"))
	{
		select = 0;
		state = BattleSelectAction;
	}
}
