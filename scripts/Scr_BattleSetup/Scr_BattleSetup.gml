//---------------Battle Setup
function Scr_BattleSetup()
{
	//Create battle manager
	instance_create_depth(0, 0, layer, Obj_Battle);
	
	//Create the characters in battle
	for(var _i = 0; _i < array_length(global.party); _i++;)
	{
		instance_create_layer(Obj_Player.x, Obj_Player.y, layer, global.char[_i])
	}
}