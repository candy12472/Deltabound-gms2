// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scr_InitializeCommands()
{
	switch(_c)
	{
		case "select":
		{
			actorSelected = actorName[commandArg1[i]];
			actorSelectedID = actorID[commandArg1[i]];
			commandActor[i] = actorSelectedID;
		}
		break;
		
		case "facing":
		{
			commandActor[i].direction = commandArg1[i];
		}
		break;
		
		case "var":
		{
			variable_instance_set(commandActor[i], commandArg1[i], commandArg2[i]);
		}
		break;
		
		case "walk":
		{
			commandActor[i].direction = point_direction(x, y, commandArg1[i], commandArg2[i]);
			commandActor[i].speed = commandArg3[i];
		}
		break;
		
		case "dialogue":
		{
			if !instance_exists(Obj_Textbox)
				instance_create_layer(0, 0, layer, Obj_Textbox);
			
			with(Obj_Textbox)
			{
				Scr_PassArguments();
				typer[0] = _commandArg2
				Scr_Text(Scr_StringGetLoc(_commandArg1, _commandArg4), _commandArg2, _commandArg3)
			}
		}
		break;
		
		case "waitbox":
		{
			waiting = 1;
			waitBox = commandArg1[i];
			breakMe = 1;
		}
		break;
		
		case "wait":
		{
			waiting = 1;
			waitAmount = commandArg1[i];
			breakMe = 1;
		}
		break;
	}
}