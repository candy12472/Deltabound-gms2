// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scr_GetDialogue(txtID)
{
	switch(txtID)
	{
		case "Block":
		{
			Scr_Text(Scr_StringGetLoc("This is a \\cY test message", "Scr_GetDialogue_slash_gml_9_0"));
		}break;
	}
}