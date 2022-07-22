//-----Take damage after colliding with a bullet
if cooldown <= 0
{
	//Get a random target between the characters
	var target = irandom(global.charNumber);
	
	//Select another target if the current one is down
	while(global.hp[target] <= 0)
	{
		randomize();
		
		var target = irandom(global.charNumber);
	}
	
	//Set amount of damage
	damage = irandom_range(40, 60);
	
	//
	with(global.hero[target])
	{
		//Shake effect for the target
		shakeValue = 3;
		
		//Damage text variables
		timer = 50;
		alpha = 1;
		
		//Play hit sound
		audio_play_sound(Snd_Hurt, 0, false);
		
		//Set state to hurt
		image_index = 0;
		sprite_index = hurtSprite;
	}
	
	//Take damage
	global.hp[target] -= damage;
	
	//Set damage cooldown to 75 frames
	cooldown = 75;
}

//Destroy bullet
with(other)
{
	instance_destroy();
}


