// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scr_Dialogue(_text, _typer = 0, _face = -1, _strid = "")
{
	Scr_Command("dialogue", _text, _typer, _face, _strid);
}