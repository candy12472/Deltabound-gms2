depth = -998;

charTurn = 0;

//Character UI positions
switch(global.charNumber)
{
	case 0:
		xDraw = [159, 0, 0]
	break;
	
	case 1:
		xDraw = [126, 215, 0]
	break;
	
	case 2:
		xDraw = [70, 159, 248]
	break;
}

yDraw = [248, 248, 248]

idlePos = 248;
selPos = 183;

//Hand select variables
select = 0;
lSelect = 0;

itemSelect = array_create(3, 0);
itemSelected = 0;

itemSelectX = 0;
itemSelectY = 0;

itemLSelectX = 0;
itemLSelectY = 0;

xx = 104;
yy = 183;

//Bullet hell area variables
areaXscale = 0;
areaYscale = 0;
areaAngle = 180;

//Battle state
state = BattleSelectAction;

//Yet another x and y variables for ui
_x = 151;
_y = 86;

if instance_exists(Obj_Player)
{
	with(Obj_Player)
		canMove = false;
}