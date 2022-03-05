if global.flag[28] = 1
{
	Obj_Player.visible = !global.battle;
	if instance_exists(Obj_Par_Interact) Obj_Par_Interact.visible = !global.battle;
	layer_set_visible(layer_get_id("MainTiles"), !global.battle)
	layer_set_visible(layer_get_id("BattleBG"), global.battle)
}

layer_background_blend(layer_background_get_id(layer_get_id("BattleBG")), merge_color(c_white, c_black, bgBlend))

if bgBlend < 1 && i = false
{
	bgBlend += 0.01;
}
else if bgBlend >= 1 && i = false
{
	i = true
}

if bgBlend > 0 && i = true
{
	bgBlend -= 0.01;
}
else if bgBlend <= 0 && i = true
{
	i = false
}

with(all)
{
	depth = -bbox_bottom;
}