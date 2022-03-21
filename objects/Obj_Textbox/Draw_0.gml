draw_sprite_ext(Spr_Textbox, 0, view_get_xport(view_camera[0]) + 160, view_get_yport(view_camera[0]) + 200, drawXscale, drawYscale, 0, c_white, 1);

if drawXscale > 0.999 && drawYscale > 0.999 && drawTextbox = true
{
	draw_text_transformed(view_get_xport(view_camera[0]) + 25, view_get_yport(view_camera[0]) + 175, drawText, 0.5, 0.5, 0)
}

draw_set_font(font);
draw_set_color(color);