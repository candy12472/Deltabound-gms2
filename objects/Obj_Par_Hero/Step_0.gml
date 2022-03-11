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

if global.hp[character] <= 0
{
	sprite_index = defeatSprite;
	if defeatSound = false
	{
		audio_play_sound(Snd_Death, 0, false)
		defeatSound = true;
	}
}

if shakeValue > 0
{
	x = random_range(xPos - shakeValue, xPos + shakeValue)
	shakeValue -= 0.1;
}

if (timer > 0) timer--;

if keyboard_check_pressed(ord("C"))
{
	Scr_BattleEnd();
	global.battle = false;
}