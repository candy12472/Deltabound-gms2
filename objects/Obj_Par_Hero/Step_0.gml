//Go to hero battle position
if global.battle = true
{
	Scr_MoveToPoint(global.heroX[character], global.heroY[character], 5);
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
	x = random_range(global.heroX[character] - shakeValue, global.heroX[character] + shakeValue)
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
		
		if image_index >= image_number - 1
		{
			state = states.idle;
		}
	}
	break;
	
	case states.idle:
	{
		sprite_index = idleSprite;
		
		image_speed = 1;
	}
	break;
	
	case states.bash:
	{
		sprite_index = attackSprite;
		
		if attackReady = false
		{
			image_speed = 0;
		}
		else
		{
			image_speed = 1;
		}
	}
	break;
	
	case states.act:
	{
		sprite_index = actSprite;
		
		if attackReady = false
		{
			image_speed = 0;
		}
		else
		{
			image_speed = 1;
		}
		
		if image_index >= image_number - 1
		{
			image_speed = 0;
		}
	}
	break;
	
	case states.item:
	{
		sprite_index = itemSprite;
		
		if !itemReady
		{
			if image_index >= 3
			{
				image_index = 0;
			}
		}
		else
		{
			if image_index >= image_number - 1
			{
				state = states.idle;
			}
		}
	}
	break;
	
	case states.defend:
	{
		sprite_index = defendSprite;
		
		if image_index >= image_number - 1
		{
			image_speed = 0;
		}
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
		
		image_speed = 0;
	}
	break;
}
