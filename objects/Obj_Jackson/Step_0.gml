/// @desc last edited by LunaticWyrm467
//---------------Per Frame
//-----Define Current Expression
image_index = star_currExpress;

//Initiate Expression Behaviour
switch(star_currExpress)
{
	
	//Cycle through expressions based on enum definitions
	case star_Express.normal:
	{
		x = xstart;
		global.flag[0] = 0
		star_timer = 0;
	}
	break;
	
	case star_Express.surprised:
	{
		x = irandom_range(xstart + 1, xstart - 1);
		global.flag[0] = 0
		star_timer = 0;
	}
	break;
	
	case star_Express.blocked:
	{
		x = xstart;
		global.flag[0] = 0
		star_timer = 0;
	}
	break;
	
	case star_Express.fancy:
	{
		if global.flag[0] = 0
		{
			x = x - 12;
			global.flag[0] = 1;
		}
		
		x = x + sin(star_timer * 0.1) * 1.2;
		
		star_timer++;
	}
	break;
}

//Init new expression with a new page of dialogue
if keyboard_check_pressed(ord("Z")) && star_player.kin_InteractCol == id
{
	event_user(0);
	
	switch(global.txtNum)
	{
		case 0:
		{
			star_currExpress = star_Express.fancy;
		}break;
		
		case 1:
		{
			star_currExpress = star_Express.blocked;
		}break;
	}
}