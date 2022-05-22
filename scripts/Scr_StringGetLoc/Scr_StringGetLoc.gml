// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scr_StringGetLoc(defaultStr, strID)
{
	var str = defaultStr;
	
	if global.lang != "en"
		str = Scr_GetLangString(strID);
	
    return str;
}