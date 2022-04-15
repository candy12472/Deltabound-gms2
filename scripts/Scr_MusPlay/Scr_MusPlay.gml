// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function Scr_MusPlay(argument0)
{
	songVar = ("mus/" + argument0);
	stream = audio_create_stream(songVar);
	astream = instance_create_depth(0, 0, depth, Obj_Astream)
	astream.myStream = stream;
	astream.songName = songVar;
	return stream;
}


