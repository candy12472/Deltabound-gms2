var minX = (Obj_BattleArea.x - (Obj_BattleArea.sprite_width) / 2)
var maxX = (Obj_BattleArea.x + (Obj_BattleArea.sprite_width) / 2)
var minY = (Obj_BattleArea.y - (Obj_BattleArea.sprite_height) / 2)
var maxY = (Obj_BattleArea.y + (Obj_BattleArea.sprite_height) / 2)

timer += 1;

switch(type)
{
	case 0:
	{
		if timer >= 60
		{
			var alph = 0;
			alph += 0.1;
			timer = 0;
			var ran = random(360);
			var xx = lengthdir_x(Obj_BattleArea.x + 64, ran)
			var yy = lengthdir_y(Obj_BattleArea.y + 64, ran)
			var bullet = instance_create_layer(xx, yy, depth, Obj_Clubs);
			bullet.direction = point_direction(bullet.x, bullet.y, Obj_Heart.x, Obj_Heart.y);
			bullet.speed = 5;
		}
	}
	break;
}
