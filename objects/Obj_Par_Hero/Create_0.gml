defeatSound = false;

shakeValue = 0;

alpha = 0;
timer = 0;

switch(object_index)
{
	case Obj_HeroChris:
	{
		enterSprite = Spr_ChrisBattleStart;
		idleSprite = Spr_ChrisIdle;
		attackSprite = Spr_ChrisAttack;
		hurtSprite = Spr_ChrisHurt;
		actSprite = Spr_ChrisAct;
		itemSprite = Spr_ChrisItem;
		defendSprite = Spr_ChrisDefend;
		defeatSprite = Spr_ChrisDefeat;
		xPos = global.charNumber = 1 ? 32 : 64;
		yPos = global.charNumber = 1 ? 64 : 96;
		character = 0;
	}
	break;
	
	case Obj_HeroSuzy:
	{
		enterSprite = Spr_SuzyBattleStart;
		idleSprite = Spr_SuzyIdle;
		attackSprite = Spr_ChrisAttack;
		hurtSprite = Spr_SuzyHurt;
		actSprite = Spr_ChrisAct;
		itemSprite = Spr_SuzyIdle;
		defendSprite = Spr_ChrisIdle;
		defeatSprite = Spr_SuzyDefeat;
		xPos = global.charNumber = 1 ? 32 : 32;
		yPos = global.charNumber = 1 ? 128 : 64;
		character = 1;
	}
	break;
	
	case Obj_HeroBirdly:
	{
		enterSprite = Spr_BirdlyBattleStart;
		idleSprite = Spr_BirdlyIdle;
		attackSprite = Spr_ChrisAttack;
		hurtSprite = Spr_BirdlyHurt;
		actSprite = Spr_ChrisAct;
		itemSprite = Spr_ChrisIdle;
		defendSprite = Spr_ChrisIdle;
		defeatSprite = Spr_BirdlyDefeat;
		xPos = 32;
		yPos = 128;
		character = 2;
	}
	break;
	
	case Obj_HeroNoella:
	{
		//Chris battle placeholders
		enterSprite = Spr_ChrisIdle;
		idleSprite = Spr_ChrisIdle;
		attackSprite = Spr_ChrisAttack;
		actSprite = Spr_ChrisAct;
		itemSprite = Spr_ChrisIdle;
		defendSprite = Spr_ChrisIdle;
		defeatSprite = Spr_ChrisDefeat;
		xPos = 32;
		yPos = 64;
		character = 3;
	}
	break;
}

image_alpha = 0.05;

enum states
{
	entrance,
	idle,
	bash,
	act,
	item,
	spare,
	defend,
	damage,
	down,
}

state = states.entrance;
