draw_self();

if alpha > 0 && instance_exists(Obj_Heart)
{
	draw_text_transformed_color(xPos + 3, yPos - 15, Obj_Heart.damage, 1, 1, 0, c_white, c_white, c_white, c_white, alpha);
	draw_set_font(font_add_sprite_ext(Spr_Numbers, "0123456789+-%", true, 1));
	
	if timer <= 0
	{
		alpha -= 0.05;
	}
}
else if !instance_exists(Obj_Heart)
{
	alpha = 0;
}

