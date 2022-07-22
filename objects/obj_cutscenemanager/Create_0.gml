currentCommand = 0;
commandNum = 1;

waitTimer = 0;
waitAmount = 0;
waitDialogue = 0;
waitCustom = 0;
waitBox = -1;

for(var i = 0; i < 800; i++;)
{
	command[i] = "terminate";
	commandActor[i] = 99999999;
	commandArg1[i] = 0;
	commandArg2[i] = 0;
	commandArg3[i] = 0;
	commandArg4[i] = 0;
	commandArg5[i] = 0;
	commandArg6[i] = 0;
}

actorSelected = "noone";
actorSelectedID = 99999999;

for(var i = 0; i < 20; i++;)
{
	actorID[i] = 99999999;
	actorName[i] = "noone"
}

terminate = 0;
waiting = 0;
breakMe = 0;
killActors = 0;