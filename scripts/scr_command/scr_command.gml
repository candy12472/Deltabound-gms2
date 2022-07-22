// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scr_Command(commandName, arg1=0, arg2=0, arg3=0, arg4=0, arg5=0, arg6=0)
{
	if instance_exists(Obj_CutsceneManager)
	{
		var manager = Obj_CutsceneManager;
		_cs_i = manager.commandNum - 1;
		
		manager.command[_cs_i] = commandName;
		commandArg1[_cs_i] = arg1;
		commandArg2[_cs_i] = arg2;
		commandArg3[_cs_i] = arg3;
		commandArg4[_cs_i] = arg4;
		commandArg5[_cs_i] = arg5;
		commandArg6[_cs_i] = arg6;
		
		with(manager)
			commandNum++;
	}
}