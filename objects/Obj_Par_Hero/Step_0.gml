//Go to hero battle position
if global.battle = true
{
	x = lerp(x, xPos, 0.2);
	y = lerp(y, yPos, 0.2);
	if (image_alpha < 1) image_alpha += 0.07;
}
else
{
	x = lerp(x, Obj_Player.x, 0.2);
	y = lerp(y, Obj_Player.y, 0.2);
	image_alpha -= 0.05;
}

if (image_alpha <= 0) instance_destroy();

//Set defeated state if the hp is 0 or less than 0
if global.hp[character] <= 0
{
	sprite_index = defeatSprite;
	if defeatSound = false
	{
		audio_play_sound(Snd_Death, 0, false)
		defeatSound = true;
	}
}

//Shake effect when getting hit
if shakeValue > 0
{
	x = random_range(xPos - shakeValue, xPos + shakeValue)
	shakeValue -= 0.1;
}

if (timer > 0) timer--;

//End battle when pressing C (Only for debugging purposes)
if keyboard_check_pressed(ord("C"))
{
	Scr_BattleEnd();
	global.battle = false;
}

//Switch between hero states
switch(state)
{
	case states.entrance:
	{
		sprite_index = enterSprite;
		
		if image_index >= image_number
		{
			state = states.idle;
		}
	}
	break;
	
	case states.idle:
	{
		sprite_index = idleSprite;
	}
	break;
	
	case states.bash:
	{
		sprite_index = attackSprite;
	}
	break;
	
	case states.act:
	{
		sprite_index = actSprite;
	}
	break;
	
	case states.item:
	{
		sprite_index = itemSprite;
	}
	break;
	
	case states.defend:
	{
		sprite_index = defendSprite;
	}
	break;
	
	case states.damage:
	{
		sprite_index = hurtSprite;
		
		if shakeValue <= 0
		{
			state = states.idle;
		}
		if global.hp[character] <= 0
		{
			state = states.down;
		}
	}
	break;
	
	case states.down:
	{
		sprite_index = defeatSprite;
	}
	break;
}
