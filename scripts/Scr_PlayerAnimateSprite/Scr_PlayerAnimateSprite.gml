//---------------Animate Player Sprite
function PlayerAnimateSprite() {
	
	//Get Direction and Total Frames of Spritesheet
	// updated it to include 8 directions
	var temp_CardinalDir = round(direction / 45);
	var temp_TotalFrames = sprite_get_number(sprite_index) / 8;
	
	//Find Correct Frame
	image_index = star_LocalFrame + (temp_CardinalDir * temp_TotalFrames);
	star_LocalFrame += sprite_get_speed(sprite_index) / FRAME_RATE;
	
	//Find if Animation would Loop on next Gamestep
	if kin_InputMag != 0
	{
		if(star_LocalFrame >= temp_TotalFrames) {
			animationEnd = true;
			star_LocalFrame -= temp_TotalFrames;
		} else animationEnd = false;
	}
}