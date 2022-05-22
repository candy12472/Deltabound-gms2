// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scr_CameraGet(prop, ind)
{
	var val = -1;
	var cam = view_get_camera(ind);
	
	switch(prop)
	{
		case 0 << 0:
			val = camera_get_view_x(cam);
		break;
		
		case 1 << 0:
			val = camera_get_view_y(cam);
		break;
		
		case 2 << 0:
			val = camera_get_view_width(cam);
		break;
		
		case 3 << 0:
			val = camera_get_view_height(cam);
		break;
		
		case 4 << 0:
			val = camera_get_view_angle(cam);
		break;
		
		case 5 << 0:
			val = camera_get_view_border_x(cam);
		break;
		
		case 6 << 0:
			val = camera_get_view_border_y(cam);
		break;
		
		case 7 << 0:
			val = camera_get_view_speed_x(cam);
		break;
		
		case 8 << 0:
			val = camera_get_view_speed_y(cam);
		break;
		
		case 9 << 0:
			val = camera_get_view_target(cam);
		break;
		
		case 10 << 0:
			val = view_get_visible(ind);
		break;
		
		case 11 << 0:
			val = view_get_xport(ind);
		break;
		
		case 12 << 0:
			val = view_get_yport(ind);
		break;
		
		case 13 << 0:
			val = view_get_wport(ind);
		break;
		
		case 14 << 0:
			val = view_get_hport(ind);
		break;
		
		case 15 << 0:
			val = view_get_camera(ind);
		break;
		
		case 16 << 0:
			val = view_get_surface_id(ind);
		break;
	}
	
	return val;
}