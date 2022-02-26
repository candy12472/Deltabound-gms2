sprite_index = Spr_JemonIdle;

Scr_BattleSetup();
audio_play_sound(Snd_SlashBig, 0, false);

global.flag[4] = 1;
global.flag[28] = 1;