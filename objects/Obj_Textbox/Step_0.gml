var interactKey = keyboard_check_pressed(ord("Z"));
var skipKey = keyboard_check_pressed(ord("X"));

Scr_TextType(typer[page]);

if start = false
{
	start = true;
	
	for(var p = 0; p < pageNumber; p++;)
	{
		textLength[p] = string_length(text[p]);
		
		if face[p] = -1
			textXOffset[p] = 0;
		else
			textXOffset[p] = 64;
		
		for(var c = 0; c < textLength[p]; c++;)
		{
			var charPos = c + 1;
			var getChar = string_char_at(text[p], charPos);
			var nextChar = string_char_at(text[p], charPos + 1);
			var nextChar2 = string_char_at(text[p], charPos + 2);
			
			if getChar = "\\"
			{
				if nextChar = "c"
				{
					text[p] = string_delete(text[p], charPos, 4)
					
					colorChange = true;
					var charCol = -1;
					
					switch(nextChar2)
					{
						case "R":
							charCol = c_red;
						break;
						case "G":
							charCol = c_green;
						break;
						case "B":
							charCol = c_blue;
						break;
						case "Y":
							charCol = c_yellow;
						break;
						case "W":
							charCol = c_white;
						break;
						case "b":
							charCol = c_black;
						break;
						case "O":
							charCol = c_orange;
						break;
					}
				}
			}
			
			char[c, p] = string_char_at(text[p], charPos);
			
			var txtUpToChar = string_copy(text[p], 1, charPos);
			var txtWidth = string_width(txtUpToChar) - string_width(char[c, p]);
			
			if char[c, p] == " "
				lastFreeSpace = charPos + 1;
			
			if txtWidth - lineBreakOffset[p] > textWidth
			{
				lineBreakPos[lineBreakNum[p], p] = lastFreeSpace;
				lineBreakNum[p]++;
				
				var txtUpToLastSpace = string_copy(text[p], 1, lastFreeSpace);
				var lastFreeSpaceStr = string_char_at(text[p], lastFreeSpace);
				
				lineBreakOffset[p] = string_width(txtUpToLastSpace) - string_width(lastFreeSpaceStr);
			}
			
			if colorChange = true
				charColor[c, p] = charCol;
			else
				charColor[c, p] = c_white;
			
		}
		
		for(var c = 0; c < textLength[p]; c++;)
		{
			var charPos = c + 1;
			
			var txtUpToChar = string_copy(text[p], 1, charPos);
			var txtWidth = string_width(txtUpToChar) - string_width(char[c, p]);
			
			textX = camera_get_view_x(view_camera[0]) + textboxX + 16 + textXOffset[p];
			textY = camera_get_view_y(view_camera[0]) + textboxY + 12;
			
			var txtLine = 0;
			
			for(var lb = 0; lb < lineBreakNum[p]; lb++;)
			{
				if charPos >= lineBreakPos[lb, p]
				{
					var strCopy = string_copy(text[p], lineBreakPos[lb, p], charPos - lineBreakPos[lb, p]);
					txtWidth = string_width(strCopy);
					
					txtLine = lb + 1;
				}
			}
			
			charX[c, p] = textX + txtWidth;
			charY[c, p] = textY + txtLine * textSep;
		}
	}
}

if drawChar <= textLength[page]
{
	drawChar += textSpeed;
	drawChar = clamp(drawChar, 0, textLength[page]);
	
	audio_play_sound(textSound, 0, false);
}

if interactKey
{
	if drawChar = textLength[page]
	{
		if page < pageNumber - 1
		{
			page++;
			Scr_TextType(typer[page]);
			colorChange = false;
			drawChar = 0;
		}
		else
		{
			instance_destroy();
		}
	}
}

if skipKey
	drawChar = textLength[page]