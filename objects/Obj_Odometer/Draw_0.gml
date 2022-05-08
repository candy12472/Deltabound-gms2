//Draw odometer
for(var i = 0; i < array_length(global.party); i++;)
{
	draw_sprite(Spr_Odometer, showH, Obj_Battle.xDraw[i] - 11, Obj_Battle.yDraw[i] - 25);
	draw_sprite(Spr_Odometer, showT, Obj_Battle.xDraw[i] - 4, Obj_Battle.yDraw[i] - 25);
	draw_sprite(Spr_Odometer, showO, Obj_Battle.xDraw[i] + 3, Obj_Battle.yDraw[i] - 25);
}
