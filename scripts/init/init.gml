//---------------Initiation Script
//-----Dialogue Start-Up
//Current Dialogue Page Count
global.txtNum = 0;

//Whoever did the dialogue please comment what this thing does here I'm too tired
for(var i = 0; i < 999; i++;)
{
	global.text[i] = "";
	global.flag[i] = false;
}

global.battle = false;

global.textSpeed = 1;

//Set Font Per Character
global.font = font_add_sprite_ext(Spr_Font, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789()<>{}·[]!?:;,.$/=&*", true, 1);

//Health points of every character
global.hp[0] = 200;
global.hp[1] = 200;
global.hp[2] = 200;

global.charNumber = 2;

global.char = [Obj_HeroChris, Obj_HeroSuzy, Obj_HeroBirdly, noone]