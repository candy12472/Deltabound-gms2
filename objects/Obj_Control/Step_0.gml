if global.battle = true
{
	//Change View to Battle mode
	Obj_Player.fakeVisible = !global.battle;
	if instance_exists(Obj_Interact) Obj_Interact.visible = !global.battle;
	if instance_exists(Obj_Par_Character) Obj_Par_Character.visible = !global.battle;

	layer_set_visible(layer_get_id("MainTiles"), !global.battle)
	layer_set_visible(layer_get_id("BattleBG"), global.battle)
}else
{
	if !instance_exists(Obj_Par_Enemy)
	{
		//Change view to Exploration mode
		Obj_Player.fakeVisible = !global.battle;
		layer_set_visible(layer_get_id("MainTiles"), !global.battle)
		layer_set_visible(layer_get_id("BattleBG"), global.battle)
	}
}