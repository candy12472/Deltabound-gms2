if place_meeting(x, y, Obj_Player) && global.battle = false
{
	global.battle = true;
	global.song = mus;
	audio_play_sound(Snd_TensionHorn, 0, false)
	sprite_index = alertSprite;
	alarm[0] = 60;
}

if global.battle = true && alarm[0] = -1 && inBattle = true
{
	x = lerp(x, 256, 0.2)
	y = lerp(y, 96, 0.2)
}

if !audio_is_playing(Snd_SlashBig) && playSong = true && global.songPlaying = false
{
	audio_play_sound(Scr_MusPlay(global.song), 0, true);
}