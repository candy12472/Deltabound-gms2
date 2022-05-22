// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scr_GetLangString(strID)
{
	var langStringID = strID;
    var str = ds_map_find_value(global.langMap, langStringID)
	
	if is_undefined(str)
    {
		str = "--missing-string--"
	}
	
	return str;
}