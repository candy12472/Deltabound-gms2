/// @desc last edited by LunaticWyrm467
//---------------When Sprite is Drawn

//-----Drawing of Object
//Textbox
draw_sprite(star_TexBox, 0, camera_get_view_width(view_camera[0]) / 2, camera_get_view_height(view_camera[0]) / 1.2)

//Dialogue
draw_text(32, camera_get_view_height(view_camera[0]) / 1.4, string_copy(global.text[global.txtNum], 0, star_i));
draw_set_font(global.font);