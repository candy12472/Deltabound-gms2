// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scr_Flash(_startalpha, _flashspeed, _flashcolor)
{
	var flash = instance_create_depth(x, y, -999, Obj_Flash);
	
	flash.target = id;
	flash.flashSpeed = _flashspeed;
	flash.flashColor = _flashcolor;
	flash.image_alpha = _startalpha;
}