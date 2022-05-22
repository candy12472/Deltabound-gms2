// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scr_TextType(typerID)
{
	switch(typerID)
	{
		//Narrator
		case 0:
			Scr_TyperSetup(Fnt_Main, c_white, Snd_Text, 1, 0, -1, c_white);
		break;
		
		//Birdly
		case 1:
			Scr_TyperSetup(Fnt_Main, c_white, Snd_TxtBird, 1, 0, Spr_BirdlyFace, c_white);
		break;
	}
}