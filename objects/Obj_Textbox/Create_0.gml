textboxWidth = sprite_get_width(Spr_Textbox);
textboxHeight = sprite_get_height(Spr_Textbox);
textboxX = camera_get_view_x(view_camera[0]) + 16;
textboxY = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - (textboxHeight + 8);

faceX = textboxX + 9;
faceY = textboxY + 9;

textSep = 20;
textWidth = camera_get_view_x(view_camera[0]) + ((textboxX + textboxWidth) - 32);

page = 0;
pageNumber = 0;
text = array_create(100, "");
typer = array_create(100, 0);

textXOffset[0] = 0;
textLength[0] = string_length(text[0]);

textX = camera_get_view_x(view_camera[0]) + textboxX + 16 + textXOffset[0];
textY = camera_get_view_y(view_camera[0]) + textboxY + 12;

drawChar = 0;
char[0, 0] = "";
charX[0, 0] = 0;
charY[0, 0] = 0;
charColor[0, 0] = c_white;

textSpeed = 1;
shake = 0;
font = Fnt_Main;
start = false;

lineBreakPos[0, pageNumber] = 999;
lineBreakNum[pageNumber] = 0;
lineBreakOffset[pageNumber] = 0;

lastFreeSpace = 0;

textSound = Snd_Text;
face = array_create(100, -1);
faceSprite = -1;

speakerColor = c_white;

colorChange = false;

Scr_TextType(typer[page]);