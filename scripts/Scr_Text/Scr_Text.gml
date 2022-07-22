// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scr_Text(_text, _typer = 0, _face = -1)
{
	lineBreakPos[0, pageNumber] = 999;
	lineBreakNum[pageNumber] = 0;
	lineBreakOffset[pageNumber] = 0;
	
	face[pageNumber] = _face;
	text[pageNumber] = _text;
	typer[pageNumber] = _typer;
	pageNumber++;
	
}