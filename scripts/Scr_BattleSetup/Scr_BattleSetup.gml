//---------------Battle Setup
function Scr_BattleSetup()
{
	//Create battle manager
	instance_create_layer(0, 0, layer, Obj_Battle);
	
	instance_create_depth(160, 80, depth, Obj_BattleArea);
	
	with(Obj_Battle)
		heart = instance_create_layer(Obj_BattleArea.x, Obj_BattleArea.y, layer, Obj_Heart);
	
	with(Obj_Battle)
		bulletGen = instance_create_layer(0, 0, layer, Obj_BulletGen);
	
	//Create the characters in battle
	for(var _i = 0; _i < array_length(global.party); _i++;)
	{
		instance_create_layer(Obj_Player.x, Obj_Player.y, layer, global.hero[_i]);
	}
}