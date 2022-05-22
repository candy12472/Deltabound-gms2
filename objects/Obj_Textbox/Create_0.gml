textboxWidth = sprite_get_width(Spr_Textbox);
textboxHeight = sprite_get_height(Spr_Textbox);
textboxX = Scr_CameraGet(0 << 0, 0) + 16;
textboxY = Scr_CameraGet(1 << 0, 0) + Scr_CameraGet(3 << 0, 0) - (textboxHeight + 8);

faceX = textboxX + 32;
faceY = textboxY + 16;

textSep = 20;
textWidth = Scr_CameraGet(0 << 0, 0) + ((textboxX + textboxWidth) - 32);

page = 0;
pageNumber = 0;
text = array_create(100, "");
typer = array_create(100, 0);

textXOffset[0] = 0;
textLength[0] = string_length(text[0]);

textX = Scr_CameraGet(0 << 0, 0) + textboxX + 16 + textXOffset[0];
textY = Scr_CameraGet(1 << 0, 0) + textboxY + 12;

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

Scr_TextType(typer[0]);
