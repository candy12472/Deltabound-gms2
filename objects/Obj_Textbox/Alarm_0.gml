myString = global.text[global.txtNum];
Length = string_length(myString);
charPos = string_char_at(myString, pos);
nextChar = string_char_at(myString, pos + 1);
nextChar2 = string_char_at(myString, pos + 2);

if nextChar = " " or nextChar = "." or nextChar = "," or nextChar = "?" or nextChar = "!" or nextChar = "*"
	playSound = false;
else
	playSound = true;

if nextChar == "^"
{
	if nextChar2 == "1"
		rate = 2;
	if nextChar2 == "2"
		rate = 3;
	if nextChar2 == "3"
		rate = 4;
	if nextChar2 == "4"
		rate = 5;
	if nextChar2 == "5"
		rate = 6;
	if nextChar2 == "6"
		rate = 7;
	if nextChar2 == "7"
		rate = 8;
	if nextChar2 == "8"
		rate = 9;
	if nextChar2 == "9"
		rate = 10;
		
	pos += 2;
}

if nextChar == "|"
{
	if nextChar2 == "1"
		alarm[0] += 5;
	if nextChar2 == "2"
		alarm[0] += 10;
	if nextChar2 == "3"
		alarm[0] += 15;
	if nextChar2 == "4"
		alarm[0] += 20;
	if nextChar2 == "5"
		alarm[0] += 30;
	if nextChar2 == "6"
		alarm[0] += 50;
	if nextChar2 == "7"
		alarm[0] += 70;
	if nextChar2 == "8"
		alarm[0] += 100;
	if nextChar2 == "9"
		alarm[0] += 150;
		
	pos += 2;
}

if nextChar == "#"
{
	if global.text[global.txtNum + 1] != -4
	{
		global.txtNum += 1;
		drawText = " ";
		pos = 0;
	}
}

if pos <= Length
{
	alarm[0] += rate;
	
	if drawXscale > 0.999
	{
		pos += 1;
	
		drawText = drawText + string_char_at(myString, pos);
	
		if playSound = true
		{
			audio_play_sound(textSound, 50, false);
		}
	}
}