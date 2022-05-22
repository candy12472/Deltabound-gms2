//---------------Initiation Script
global.flag = array_create(999, 0)
global.debug = false;

//-----Music Start-Up
global.song = "nosong.ogg";
global.songPlaying = false;

//-----Battle Start-Up
global.charNumber = 2;
global.battle = false;
global.party = [0, 1, 2];
global.char = [Obj_HeroChris, Obj_HeroSuzy, Obj_HeroBirdly, Obj_HeroNoella]

//Positions for heros and monsters
global.heroX = [64, 32, 32];
global.heroY = [96, 64, 128];
global.monsterX = [256, 0, 0];
global.monsterY = [96, 0, 0];	

//Health points of every character
global.hp[0] = "125";
global.hp[1] = "30";
global.hp[2] = "8";

//-----Item Start-Up
for(var i = 0; i < 14; i += 1;)
{
	global.item[i] = 0;
	global.itemName[i] = " ";
	global.itemDesc[i] = " ";
	global.itemValue[i] = 0;
}

global.item[0] = 3;

Scr_ItemInfoAll();

//Languages
global.lang = "en";
global.langMap = ds_map_create();

Scr_LangLoad();
