if waiting = 0
{
	i = currentCommand;
	
	while(i < commandNum)
	{
		commandActor[i] = actorSelectedID;
		_c = command[i];
		Scr_InitializeCommands();
		
		if breakMe == 1
		{
			breakMe = 0;
			break;
		}
		else
		{
			i += 1;
			continue;
		}
	}
}

currentCommand = (i + 1);

if waiting = 1
{
	if waitAmount > 0
	{
		waitTimer++;
		if waitTimer >= waitAmount
		{
			waitAmount = 0;
			waitTimer = 0;
			waiting = 0;
		}
		
		if waitBox >= 0
		{
			if !instance_exists(Obj_Textbox)
			{
				waitBox = -1;
				waiting = 0;
			}
		}
	}
	if waitDialogue = 1
	{
		if !instance_exists(Obj_Textbox)
		{
			waitDialogue = 0;
			waiting = 0;
		}
	}
}

if terminate
{
	if killActors
	{
		for(j = 0; j < 20; j++;)
		{
			with(actorID[j])
				instance_destroy();
		}
	}
	instance_destroy();
}