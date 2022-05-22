//---------------Player Collision
function PlayerCollision()
{
	//Define if a Collision has occured
	var temp_Col = false;
	
	//-----Horizontal Collision
	if place_meeting(x + star_xSpeed, y, Obj_Collision)
	{
		/*
		Check if Player intercepted Collision Bounds horizontally
		by checking player's position in accordance to the size of a tile.
		*/
		star_xSpeed = 0;
		temp_Col = true;
	}
	
	//Horizontal Move Commit
	x += star_xSpeed;
	
	//-----Vertical Tiles
	//Collision
	if place_meeting(x, y + star_ySpeed, Obj_Collision)
	{
		/*
		Check if Player intercepted Collision Bounds vertically
		by checking player's position in accordance to the size of a tile.
		*/
		star_ySpeed = 0;
		temp_Col = true;
	}
	
	//Vertical Move Commit
	y += star_ySpeed;
	
	//Return Collision Status
	return temp_Col;
}