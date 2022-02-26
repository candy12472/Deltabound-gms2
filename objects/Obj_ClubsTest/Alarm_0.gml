var clubs = instance_create_depth(random_range(120, 200), 20, depth, Obj_Clubs);

randomize();

if instance_exists(clubs)
{
	clubs.gravity = 0.1;
	clubs.image_angle = 270;
	clubs.image_xscale = 0.75;
	clubs.image_yscale = 0.75;
}

alarm[0] = 10;