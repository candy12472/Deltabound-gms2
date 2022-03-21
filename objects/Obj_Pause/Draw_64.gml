draw_sprite_ext(Spr_PauseOptions, 0, view_get_xport(view_camera[0]) + 160, view_get_yport(view_camera[0]) + -23 + yy, 2, 2, 0, -1, 1)
draw_sprite_ext(Spr_CharacterUI, 0, view_get_xport(view_camera[0]) + 160, view_get_yport(view_camera[0]) + 240 - yy2, 2, 2, 0, -1, 1)

for(var i = 0; i < 6; i += 1;)
{
	draw_sprite(Spr_PauseButtonsIdle, i, 20 + (34 * i), 7 + yy - 48)
}

draw_text_transformed(245, 18 + yy - 50, "9999 G", 1, 1, 0);

draw_set_font(Fnt_Main);