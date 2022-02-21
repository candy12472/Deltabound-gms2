if global.battle = true
{
	layer_set_visible(layer_get_id("Instances"), false)
	layer_set_visible(layer_get_id("MainTiles"), false)
	layer_set_visible(layer_get_id("BattleBG"), true)
}
else
{
	layer_set_visible(layer_get_id("Instances"), true)
	layer_set_visible(layer_get_id("MainTiles"), true)
	layer_set_visible(layer_get_id("BattleBG"), false)
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