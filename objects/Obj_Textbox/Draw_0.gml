if face[page] = -1
{
	draw_sprite(Spr_Textbox, 0, textboxX, textboxY);
}
else
{
	draw_sprite(Spr_TextboxFace, 0, textboxX, textboxY);
	draw_sprite(faceSprite, face[page], faceX, faceY);
}

for(var c = 0; c < drawChar; c++;)
{
	draw_set_color(charColor[c, page])
	draw_text(charX[c, page], charY[c, page], char[c, page]);
}

draw_set_font(font);
