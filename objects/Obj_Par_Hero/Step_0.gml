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