if cooldown <= 0
{
	visible = true;
	
	var target = irandom(global.charNumber);
	
	damage = irandom_range(40, 60);
	
	with(global.char[target])
	{
		shakeValue = 3;
		timer = 50;
		alpha = 1;
		
		audio_play_sound(Snd_Hurt, 0, false);
		
		if global.hp[character] > 0
		{
			image_index = 0;
			sprite_index = hurtSprite;
		}
	}
	
	randomize();
	
	global.hp[target] -= damage;
	
	cooldown = 75;
}

with(other)
{
	instance_destroy();
}
