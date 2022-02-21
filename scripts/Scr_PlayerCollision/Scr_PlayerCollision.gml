//---------------Player Collision
function PlayerCollision()
{
	//Define if a Collision has occured
	var temp_Col = false;
	
	//-----Horizontal Tiles
	//Collision
	if(tilemap_get_at_pixel(star_ColMap, x + star_xSpeed, y))
	{
		/*
		Check if Player intercepted Collision Bounds horizontally
		by checking player's position in accordance to the size of a tile.
		*/
		x -= x mod TILE_SIZE;
		if(sign(star_xSpeed) == 1) x += TILE_SIZE - 1;
		star_xSpeed = 0;
		temp_Col = true;
	}
	
	//Horizontal Move Commit
	x += star_xSpeed;
	
	//-----Vertical Tiles
	//Collision
	if(tilemap_get_at_pixel(star_ColMap, x, y + star_ySpeed))
	{
		/*
		Check if Player intercepted Collision Bounds vertically
		by checking player's position in accordance to the size of a tile.
		*/
		y -= y mod TILE_SIZE;
		if(sign(star_ySpeed) == 1) y += TILE_SIZE - 1;
		star_ySpeed = 0;
		temp_Col = true;
	}
	
	//Vertical Move Commit
	y += star_ySpeed;
	
	//Return Collision Status
	return temp_Col;
}