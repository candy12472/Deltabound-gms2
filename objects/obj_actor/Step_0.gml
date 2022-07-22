image_index = round(direction / 45);

if x != xprevious or y != yprevious
{
	sprite_index = walkSprite;
}
else
{
	sprite_index = idleSprite;
}

switch(name)
{
	case "chris":
	{
		idleSprite = Spr_PlayerIdle;
		walkSprite = Spr_PlayerWalk;
	}
	break;
	
	case "birdly":
	{
		idleSprite = Spr_BirdIdle;
		walkSprite = Spr_BirdWalk;
	}
	break;
	
	case "suzy":
	{
		idleSprite = Spr_SuzIdle;
		walkSprite = Spr_SuzIdle;
	}
	break;
	
	case "noella":
	{
		idleSprite = Spr_NoeIdle;
		walkSprite = Spr_NoeIdle;
	}
	break;
}