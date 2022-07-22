if instance_exists(target)
{
	sprite_index = target.sprite_index;
	image_index = target.image_index
	x = target.x;
	y = target.y;
}

image_alpha -= flashSpeed;

gpu_set_fog(true, flashColor, 0, 1);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, image_blend, image_alpha);
gpu_set_fog(false, flashColor, 0, 0);

if image_alpha <= 0
	instance_destroy();