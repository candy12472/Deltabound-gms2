// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scr_LoadMapjson(fname)
{
	var filename = fname;
    if file_exists(filename)
    {
        var fileBuffer = buffer_load(filename)
        var json = buffer_read(fileBuffer, buffer_string)
        buffer_delete(fileBuffer)
        return json_decode(json);
    }
    else
    {
        show_debug_message((("file: " + filename) + "does not exist"))
        return json_decode("{}");
    }
}