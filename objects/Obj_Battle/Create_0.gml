charTurn = 0;

//Character UI positions
switch(global.charNumber)
{
	case 0:
	{
		xDraw = [159, 0, 0]
	}
	break;
	
	case 1:
	{
		xDraw = [126, 215, 0]
	}
	break;
	
	case 2:
	{
		xDraw = [70, 159, 248]
	}
	break;
}

yDraw = [243, 243, 243]

//Hand select variables
select = 0;
lSelect = 0;
xx = 104;
yy = 185;

//Bullet hell area variables
areaXscale = 0;
areaYscale = 0;
areaAngle = 180;

//Battle state
state = BattleSelectAction;