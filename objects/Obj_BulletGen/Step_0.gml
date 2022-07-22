if con = 1
{
	var left = (Obj_BattleArea.x - (Obj_BattleArea.sprite_width) / 2)
	var right = (Obj_BattleArea.x + (Obj_BattleArea.sprite_width) / 2)
	var top = (Obj_BattleArea.y - (Obj_BattleArea.sprite_height) / 2)
	var bottom = (Obj_BattleArea.y + (Obj_BattleArea.sprite_height) / 2)
	
	timer += 1;

	switch(attackID)
	{
		case 0:
		{
			if timer >= 10
			{
				timer = 0;
				
				var bullet = instance_create_layer(random_range(left + 4, right - 4), top - 24, layer, Obj_Clubs);
				bullet.image_xscale = 0.75;
				bullet.image_yscale = 0.75;
				bullet.direction = 270;
				bullet.image_angle = 270;
				bullet.speed = -1.5;
				bullet.gravity = 0.15;
			}
		}
		break;
	}
}