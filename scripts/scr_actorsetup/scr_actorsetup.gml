// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scr_ActorSetup(_actorid, _actorinstance, _actorname)
{
	if instance_exists(Obj_CutsceneManager)
	{
		var manager = Obj_CutsceneManager;
		
		manager.actorID[_actorid] = _actorinstance;
		manager.actorName[_actorid] = _actorname;
		
		with(_actorinstance)
		{
			name = _actorname;
			number = _actorid;
		}
	}
}