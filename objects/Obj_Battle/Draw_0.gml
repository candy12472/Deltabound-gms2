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
	itemSelectX += keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left)
	itemSelectY += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up)
	
	itemSelectX = clamp(itemSelectX, 0, 1);
	itemSelectY = clamp(itemSelectY, 0, 6);
	
	itemSelect[charTurn] = (itemSelectX * 7) + itemSelectY;
	
	itemLSelectX = lerp(itemLSelectX, itemSelectX, 0.3);
	itemLSelectY = lerp(itemLSelectY, itemSelectY, 0.3);
	
	draw_sprite(Spr_ItemBox, 0, 2, 2);
	draw_sprite(Spr_Items, global.item[itemSelect[charTurn]], 9, 6);
	draw_sprite(Spr_CharItemBox, global.party[charTurn], 68, 65);
	draw_sprite(Spr_Select, 0, _x + (91 * itemLSelectX), _y + (12 * itemLSelectY));
	
	draw_set_color(c_white);
	draw_set_font(Fnt_Main);
	
	draw_text(45, 6, global.itemDesc[itemSelect[charTurn]]);
	
	for(var i = 0; i < 14; i++;)
	{
		draw_set_font(Fnt_UI);
		
		if global.item[i] = 0
			draw_set_color(#5b537d)
		else
			draw_set_color(c_white)
		
		if i < 7
			draw_text(77, 83 + (i * 12), global.itemName[i]);
		else
			draw_text(77 + 93, 83 + ((i - 7)* 12), global.itemName[i]);
	}
}

//Draw bullet hell area
draw_sprite_ext(Spr_BattleArea, 1, 160, 80, areaXscale, areaYscale, areaAngle, c_white, 1);
draw_sprite_ext(Spr_BattleArea, 0, 160, 80, areaXscale, areaYscale, areaAngle, c_white, 1);
