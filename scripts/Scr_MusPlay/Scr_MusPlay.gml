//---------------Play External Songs
function Scr_MusPlay(argument0)
{
	//Set the song
	songVar = ("mus/" + argument0);
	stream = audio_create_stream(songVar);
	
	//Create music manager
	astream = instance_create_depth(0, 0, depth, Obj_Astream)
	astream.myStream = stream;
	astream.songName = songVar;
	return stream;
}


