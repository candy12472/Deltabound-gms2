//---------------Initiation Script
//-----Dialogue Start-Up
//Current Dialogue Page Count
global.txtNum = 0;

//Whoever did the dialogue please comment what this thing does here I'm too tired
for(var i = 0; i < 999; i++;)
{
	global.text[i] = -4;
	global.flag[i] = 0;
}

global.battle = false;

//Health points of every character
global.hp[0] = "200";
global.hp[1] = "200";
global.hp[2] = "200";

global.charNumber = 2;

global.char = [Obj_HeroChris, Obj_HeroSuzy, Obj_HeroBirdly, noone]

global.song = Mus_Battle;