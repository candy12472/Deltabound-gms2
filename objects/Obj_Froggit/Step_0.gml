if instance_exists(Obj_Textbox) && Obj_Textbox.pos < Obj_Textbox.Length
{
	image_speed = 1;
}
else 
{
	image_speed = 0;
	image_index = 0;
}

if keyboard_check_pressed(ord("Z")) && Obj_Player.kin_InteractCol == id
{
	event_user(0);
}