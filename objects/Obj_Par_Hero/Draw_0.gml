draw_self();

//Draw damage text
if alpha > 0
{
	draw_text_transformed(x + 3, y - 8, text, 1, 1, 0);
	draw_set_alpha(alpha);
	draw_set_color(color);
	
	if timer <= 0
	{
		alpha -= 0.05;
	}
}