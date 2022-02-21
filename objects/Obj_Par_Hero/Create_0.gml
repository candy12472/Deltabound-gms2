switch(object_index)
{
	case Obj_HeroChris:
	{
		idleSprite = Spr_ChrisIdle;
		attackSprite = Spr_ChrisAttack;
		actSprite = Spr_ChrisAct;
		itemSprite = Spr_ChrisIdle;
		defendSprite = Spr_ChrisIdle;
		xPos = global.charNumber = 1 ? 32 : 64;
		yPos = global.charNumber = 1 ? 64 : 96;
	}
	break;
	
	case Obj_HeroSuzy:
	{
		idleSprite = Spr_SuzyIdle;
		attackSprite = Spr_ChrisAttack;
		actSprite = Spr_ChrisAct;
		itemSprite = Spr_ChrisIdle;
		defendSprite = Spr_ChrisIdle;
		xPos = global.charNumber = 1 ? 32 : 32;
		yPos = global.charNumber = 1 ? 128 : 64;
	}
	break;
	
	case Obj_HeroBirdly:
	{
		idleSprite = Spr_BirdlyIdle;
		attackSprite = Spr_ChrisAttack;
		actSprite = Spr_ChrisAct;
		itemSprite = Spr_ChrisIdle;
		defendSprite = Spr_ChrisIdle;
		xPos = 32;
		yPos = 128;
	}
	break;
	
	case Obj_HeroNoella:
	{
		//Chris battle placeholders
		idleSprite = Spr_ChrisIdle;
		attackSprite = Spr_ChrisAttack;
		actSprite = Spr_ChrisAct;
		itemSprite = Spr_ChrisIdle;
		defendSprite = Spr_ChrisIdle;
		xPos = 32;
		yPos = 64;
	}
	break;
}

sprite_index = idleSprite;

image_alpha = 0.05;