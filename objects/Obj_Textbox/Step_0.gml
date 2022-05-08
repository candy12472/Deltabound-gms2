var keyInteract = keyboard_check_pressed(ord("Z"))
var keySkip = keyboard_check(ord("X"))
var keyFast = keyboard_check(ord("C"))

if start = false
{
	start = true;
	
	for(var i = 0; i < array_length(global.text); i++;)
	{
		length[i] = string_length(global.text[i]);
	}
}

if char < length[global.txtNum]
{
	char += 0.5;
	audio_play_sound(Snd_Text, 0, false);
}

if keyInteract && char >= length[global.txtNum]
{
	if global.text[global.txtNum + 1] != ""
	{
		global.txtNum++;
		char = 0;
	}
	else if global.text[global.txtNum + 1] == ""
	{
		instance_destroy();
		global.txtNum = 0;
	}
}

if keySkip
	char = length[global.txtNum]

if keyFast
	global.txtNum++;
