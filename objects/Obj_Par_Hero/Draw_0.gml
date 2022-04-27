draw_self();

//Draw damage text
if alpha > 0 && instance_exists(Obj_Heart)
{
	draw_text_transformed_color(xPos + 3, yPos - 15, Obj_Heart.damage, 1, 1, 0, c_white, c_white, c_white, c_white, alpha);
	
	if timer <= 0
	{
		alpha -= 0.05;
	}
}
else if !instance_exists(Obj_Heart)
{
	alpha = 0;
}