//Switch between NPC sprites
//(Change charID variable in the room creation code of this object)
switch(charID)
{
	case "NPC 1":
	{
		sprite_index = Spr_NPC1;
	}break;
	case "NPC 2":
	{
		sprite_index = Spr_NPC2;
	}break;
	case "NPC 3":
	{
		sprite_index = Spr_NPC3;
	}break;
	case "NPC 4":
	{
		sprite_index = Spr_NPC4;
	}break;
	case "Froggit":
	{
		sprite_index = Spr_Froggit;
		image_speed = 0;
	}break;
}
