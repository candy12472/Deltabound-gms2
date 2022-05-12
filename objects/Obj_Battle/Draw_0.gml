//Draw character UI
for(var i = 0; i < array_length(global.party); i++;)
{
	draw_sprite(Spr_CharMenu, global.party[i], xDraw[i], yDraw[i])
}

//Draw select hand
if charTurn != -1 && global.songPlaying = true && state != ItemBattle
{
	draw_sprite(Spr_Select, 0, xx + ((xDraw[0] + 19) * charTurn), yy + (12 * lSelect))
}

if state = ItemBattle
{
	draw_sprite(Spr_ItemBox, 0, _x, _y);
	draw_sprite(Spr_Items, global.item[0], 9, 6);
	draw_sprite(Spr_CharItemBox, global.party[charTurn], 68, 65);
	draw_text(45, 6, global.itemDesc[0]);
	
	draw_set_font(Fnt_Main);
}

//Draw bullet hell area
draw_sprite_ext(Spr_BattleArea, 1, 160, 80, areaXscale, areaYscale, areaAngle, c_white, 1);
draw_sprite_ext(Spr_BattleArea, 0, 160, 80, areaXscale, areaYscale, areaAngle, c_white, 1);
