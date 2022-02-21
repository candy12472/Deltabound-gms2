//---------------Draw Textbox
function TextboxSetup()
{
	
	//-----Temp Variable Declaratiom
	var temp_TexBoxObj = Obj_Textbox
	var temp_StrLen = string_length(global.text[global.txtNum]);
	
	//-----Draw
	//Check if player interacted with an interactible object...
	if keyboard_check_pressed(ord("Z")) && kin_InteractCol != noone
	{
		//If Textbox already exists, simply use the current textbox
		if !instance_exists(temp_TexBoxObj)
		{
			instance_create_layer(0, 0, layer, temp_TexBoxObj);
		}
		else if instance_exists(temp_TexBoxObj) && temp_TexBoxObj.star_i = temp_StrLen
		{
			temp_TexBoxObj.star_i = 0;
			
			//Cycle Through Text or Destroy Textbox
			if global.text[global.txtNum + 1] != -4
			{
				global.txtNum++;
			}
			else
			{
				instance_destroy(temp_TexBoxObj);
				global.txtNum = 0;
			}
		}
	}
}