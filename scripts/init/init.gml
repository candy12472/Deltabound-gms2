//---------------Initiation Script
//-----Dialogue Start-Up
//Current Dialogue Page Count
global.txtNum = 0;

//Set 999 spaces for the dialogue text array and flag array
for(var i = 0; i < 999; i++;)
{
	global.text[i] = "";
	global.flag[i] = 0;
}

global.text[0] = "You shouldn't be here..."

//Health points of every character
global.hp[0] = "200";
global.hp[1] = "200";
global.hp[2] = "200";

//-----Music Start-Up
global.song = "nosong.ogg";
global.songPlaying = false;

//-----Battle Start-Up
global.charNumber = 2;
global.battle = false;
global.char = [Obj_HeroChris, Obj_HeroSuzy, Obj_HeroBirdly, noone]
