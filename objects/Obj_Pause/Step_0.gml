select += keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left)
select = clamp(select, 0, 5);

if press = false
{
	yy = lerp(yy, 46, 0.2);
	yy2 = lerp(yy2, 21, 0.2);
}
else
{
	yy = lerp(yy, -7, 0.2);
	yy2 = lerp(yy2, -21, 0.2);
	
	if yy <= -5 && yy2 <= -19
	{
		instance_destroy();
	}
}

if keyboard_check_pressed(ord("C"))
{
	press = true;
}