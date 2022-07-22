//---------------Cycle Battle States
function BattleSelectAction()
{
	//-----Character UI
	//Set selected character UI in the active position
	yDraw[charTurn] = lerp(yDraw[charTurn], selPos, 0.3);
	
	//Set character UI in the idle position if not selected
	if charTurn > 0
	{
		yDraw[charTurn - 1] = lerp(yDraw[charTurn - 1], idlePos, 0.3);
	}
	if charTurn < 2
	{
		yDraw[charTurn + 1] = lerp(yDraw[charTurn + 1], idlePos, 0.3);
	}
	
	if keyboard_check_pressed(ord("Z"))
	{
		audio_play_sound(Snd_Select, 0, false);
		
		global.hero[charTurn].state = select + 2;
		global.hero[charTurn].turn_action = select;
		global.hero[charTurn].image_index = 0;
		global.hero[charTurn].attackReady = false;
		global.hero[charTurn].itemReady = false;
		
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
			global.hero[charTurn].state = states.idle;
			global.hero[charTurn].image_index = 0;
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
		yDraw[global.charNumber] = lerp(yDraw[global.charNumber], idlePos, 0.3);
	}else{
			action = "";
			switch (global.hero[charTurn].turn_action){
			case 0:
			{
				action = "Swing";
				global.hero[charTurn].attackReady = true;
			}
			break;
			case 1:
			{
				action = "Actions";
				global.hero[charTurn].attackReady = true;
			}
			break;
			case 2:
			{
				action = "Items";
				
				global.hero[charTurn].itemReady = true;
			}
			break;
			case 3:
			{
				action = "Spare";
			}
			break;
			case 4:
			{
				action = "Defend";
			}
			break;
			default:
			break;
			}
			
			show_debug_message(action);
		//Go to next turn
		if(global.hero[charTurn].image_index >= global.hero[charTurn].image_number-1){
			global.hero[charTurn].state = states.idle;
			global.hero[charTurn].attackReady = false;
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
	if(yDraw[charTurn] < 243)
		yDraw[charTurn] = lerp(yDraw[global.charNumber], 245, 0.3);
	
	areaXscale = lerp(areaXscale, 1, 0.2);
	areaYscale = lerp(areaYscale, 1, 0.2);
	areaAngle = lerp(areaAngle, 0, 0.2);
	
	charTurn = 0;
	
	for(var i = 0; i < array_length(global.party); i++;)
		global.hero[i].state = states.idle;
	
	bulletGen.attackID = 0;
	bulletGen.con = 1;
	heart.con = 1;
}

function ItemBattle()
{
	if(yDraw[charTurn] < 243)
		yDraw[charTurn] = lerp(yDraw[global.charNumber], 245, 0.3);
	
	if keyboard_check_pressed(ord("Z"))
	{
		if global.itemName[itemSelect[charTurn]] != "None"
		{
			global.hero[charTurn].turn_action = select;
			
			itemSelect[charTurn] = 0;
			itemSelectX = 0;
			itemSelectY = 0;
			select = 0;
			
			Scr_Heal(charTurn, global.itemHP[itemSelect[charTurn]]);
				
			global.item[itemSelect[charTurn]] = 0;
			Scr_ItemInfoAll();
			
			if charTurn < global.charNumber
			{
				state = BattleSelectAction;
				charTurn++;
			}
			else
			{
				state = ExecuteBattleActions;
			}
		}
	}
	
	if keyboard_check_pressed(ord("X"))
	{
		itemSelectX = 0;
		itemSelectY = 0;
		select = 0;
		state = BattleSelectAction;
	}
}
