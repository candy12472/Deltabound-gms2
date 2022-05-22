// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scr_LangInit()
{
	if file_exists("config.ini")
	{
		ini_open("config.ini");
		global.lang = ini_read_string("Lang", "lang", "en");
		ini_close();
	}
	
	if !variable_global_exists("langLoaded")
		global.langLoaded = "";
	
	if global.lang != global.langLoaded
	{
		global.langLoaded = global.lang;
		
		if variable_global_exists("langMap")
		{
			ds_map_destroy(global.langMap)
		}
		global.langMap = ds_map_create();
		Scr_LangLoad()
	}
}