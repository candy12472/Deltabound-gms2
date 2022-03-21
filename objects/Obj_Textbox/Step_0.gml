if drawTextbox && drawXscale < 1
{
	drawXscale += 0.2;
}
else if !drawTextbox && drawXscale > 0
{
	drawXscale -= 0.2;
	
	if drawXscale < 0.1
	{
		instance_destroy();
	}
}