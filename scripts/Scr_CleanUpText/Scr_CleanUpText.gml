//---------------Text Cleaner
/*
This function works to clean up the previous dialogs so if you 
activate a dialog that is shorter than the dialog previously 
activated, the two dialogues will not merge.
*/

//-----Clean up text to prevent dialogue repeats
function CleanUpText(func_start)
{
	for(var i = func_start; i < 999 - func_start; i++;)
	{
		text[i] = -4;
	}
}