// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scr_LangLoad()
{
	var name = ("lang_" + global.lang) + ".json";
	var origFilename = ((working_directory + "lang/") + name);
	var newFilename = ((working_directory + "lang-new/") + name);
	var filename = origFilename;
	var type = "orig";
	var origMap = json_decode("{}")
	
	if global.lang != "en"
	{
		origMap = Scr_LoadMapjson(origFilename);
		
		if file_exists(newFilename)
		{
			var newMap = Scr_LoadMapjson(newFilename)
			var newDate = real(ds_map_find_value(newMap, "date"))
			var origDate = real(ds_map_find_value(origMap, "date"))
			
			if newDate > origDate
			{
				ds_map_destroy(origMap);
				origMap = newMap;
				filename = newFilename;
				type = ("new(" + string(newDate)) + ")";
			}
		}
		ds_map_destroy(global.langMap)
		global.langMap = origMap;
	}
	
	return type;
}