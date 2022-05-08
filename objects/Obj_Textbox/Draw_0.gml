draw_sprite_ext(Spr_Textbox, 0, room_width / 2, (room_height / 1.1) - 26, 1, 1, 0, c_white, 1);

draw_text_ext(28, 164, string_copy(global.text[global.txtNum], 1, char), sep, textWidth);

draw_set_font(Fnt_Main);
