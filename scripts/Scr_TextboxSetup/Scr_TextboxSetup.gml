//---------------Draw Textbox
function TextboxSetup()
{
	//-----Temp Variable Declaratiom
	var temp_TexBoxObj = Obj_Textbox;
	var temp_StrLen = string_length(global.text[global.txtNum]);
	
	//-----Draw
	//Check if player interacted with an interactible object...
	if keyboard_check_pressed(ord("Z")) && kin_InteractCol != noone
	{
		//If Textbox already exists, simply use the current textbox
		if !instance_exists(temp_TexBoxObj)
		{
			instance_create_depth(0, 0, depth, temp_TexBoxObj);
		}
		else if instance_exists(temp_TexBoxObj) && temp_TexBoxObj.pos > temp_StrLen - 2
		{
			temp_TexBoxObj.pos = 0;
			temp_TexBoxObj.drawText = " ";
			temp_TexBoxObj.alarm[0] = temp_TexBoxObj.rate;
			
			//Cycle Through Text or Destroy Textbox
			if global.text[global.txtNum + 1] != -4
			{
				global.txtNum++;
			}
			else
			{
				global.txtNum = 0;
				temp_TexBoxObj.drawTextbox = false;
			}
		}
	}
}