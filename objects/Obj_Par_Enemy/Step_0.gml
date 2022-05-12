//Start battle
if place_meeting(x, y, Obj_Player) && global.battle = false
{
	//Set variables
	global.battle = true;
	global.song = mus;
	
	//Play encounter sound effect
	audio_play_sound(Snd_TensionHorn, 0, false)
	
	//Set alert sprite and battle start time
	sprite_index = alertSprite;
	alarm[0] = 60;
}

//Go to enemy position if the battle starts
if global.battle = true && alarm[0] = -1 && inBattle = true
{
	Scr_MoveToPoint(global.monsterX[0], global.monsterY[0], 5)
}

if !audio_is_playing(Snd_SlashBig) && playSong = true && global.songPlaying = false
{
	audio_play_sound(Scr_MusPlay(global.song), 0, true);
}


