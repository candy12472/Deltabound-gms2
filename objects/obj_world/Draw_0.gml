//---------------// World Drawing - Draw Event
/// @description World Draw Logic

//-----// Drawing World VFX
//---// Draw Shadows
//Surface Management
if (!surface_exists(star_SUR_shadows)) { star_SUR_shadows = surface_create(320, 240); }
surface_set_target(star_SUR_shadows);
draw_clear_alpha(c_black, 0);

//Draw Initial Shadow
var temp_cam_x = camera_get_view_x(view_camera[0])
var temp_cam_y = camera_get_view_y(view_camera[0])
gpu_set_fog(true, c_black, 0, 1);   // <- Use 3D fog to Set Reflected Sprites to a Solid Black Color
with (Obj_Par_World) {
	
	//Draw Shadows
	var temp_skew_X = 5;
	var temp_skew_Y = 10;
	draw_sprite_pos(
		sprite_index,
		image_index,
		x - (sprite_width / 2) - temp_cam_x - temp_skew_X,
		y - temp_cam_y - temp_skew_Y,
		x + (sprite_width / 2) - temp_cam_x - temp_skew_X,
		y - temp_cam_y - temp_skew_Y,
		x + (sprite_width / 2) - temp_cam_x,
		y - temp_cam_y,
		x - (sprite_width / 2) - temp_cam_x,
		y - temp_cam_y,
		1
	)
}
gpu_set_fog(false, c_black, 0, 1);

//Draw Surface
surface_reset_target();

draw_set_alpha(0.5);
draw_surface(
	star_SUR_shadows,
	temp_cam_x,
	temp_cam_y
);
draw_set_alpha(1);