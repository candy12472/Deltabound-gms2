//---------------Linear Movement From One Point To Other
function Scr_MoveToPoint(xTo, yTo, frames)
{
	var dist = point_distance(x, y, xTo, yTo);
	var dir = point_direction(x, y, xTo, yTo);
	var amt = (dist / frames)
	
	var xAdd = lengthdir_x(amt, dir);
	var yAdd = lengthdir_y(amt, dir);
	
	x += xAdd;
	y += yAdd;
	
	return;
}


