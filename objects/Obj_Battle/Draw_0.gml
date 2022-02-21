for(var i = -1; i < global.charNumber; i++;)
{
	draw_sprite(Spr_CharMenu, i + 1, xDraw[i + 1], yDraw[i + 1])
}

if charTurn != -1
{
	draw_sprite(Spr_Select, 0, xx + ((xDraw[0] + 19) * charTurn), yy + (14 * lSelect))
}

draw_sprite_ext(Spr_BattleArea, 0, 160, 80, areaXscale, areaYscale, areaAngle, c_white, 1);