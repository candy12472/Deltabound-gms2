if place_meeting(x, y, Obj_Player) && global.battle = false
{
	global.battle = true;
	global.song = Mus_RoughBattle;
	audio_play_sound(Snd_TensionHorn, 0, false)
	alarm[0] = 60;
}

if global.battle = true && alarm[0] = -1
{
	x = lerp(x, 256, 0.2)
	y = lerp(y, 96, 0.2)
}

if !audio_is_playing(Snd_SlashBig) && global.flag[4] = 1 && global.flag[13] = 0
{
	audio_play_sound(global.song, 0, true);
	global.flag[13] = 1;
}