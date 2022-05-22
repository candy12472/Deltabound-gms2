// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scr_TextSound()
{
	var getChar = string_char_at(text[page], drawChar);
	var playSound = false;
	
	if getChar = " "
		playSound = false;
	if getChar = "?"
		playSound = false;
	if getChar = "."
		playSound = false;
	if getChar = ","
		playSound = false;
	if getChar = "!"
		playSound = false;
	if getChar = "$"
		playSound = false;
	if getChar = "*"
		playSound = false;
	if getChar = "("
		playSound = false;
	if getChar = ")"
		playSound = false;
	else
		playSound = true;
	
	if playSound = true
		audio_play_sound(textSound, 60, false)
}