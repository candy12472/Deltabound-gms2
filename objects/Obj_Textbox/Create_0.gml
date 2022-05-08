textboxWidth = sprite_get_width(Spr_Textbox);
textboxHeight = sprite_get_height(Spr_Textbox);
border = 8;
sep = 12;
textWidth = textboxWidth - border * 2;

length = array_create(100);
length[0] = string_length(global.text[0]);
char = 0;
textSpeed = 1;

start = false;


