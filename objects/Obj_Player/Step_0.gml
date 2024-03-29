/// @desc last edited by LunaticWyrm467
//---------------Per Frame
//Set depth
Scr_Depth();

//-----Controls
//Input Mapping
var control_Esc = keyboard_check(vk_escape);
var control_Left = keyboard_check(ord("A")) || keyboard_check(vk_left);
var control_Right = keyboard_check(ord("D")) || keyboard_check(vk_right);
var control_Up = keyboard_check(ord("W")) || keyboard_check(vk_up);
var control_Down = keyboard_check(ord("S")) || keyboard_check(vk_down);
var control_Restart = keyboard_check_pressed(ord("R"));
var control_Shift = keyboard_check(ord("X"));

//Kinematics
kin_InputDir = point_direction(0, 0, control_Right - control_Left, control_Down - control_Up);
kin_InputMag = (control_Right - control_Left != 0) || (control_Down - control_Up != 0);

//-----Execution
//Exit Game
if control_Esc game_end()

if control_Restart game_restart()

//Dialogue System
if keyboard_check_pressed(ord("Z"))
{
	kin_InteractCol[0] = collision_line(x, y, x + lengthdir_x(20, direction + 15), y + lengthdir_y(20, direction + 15), Obj_Interact, false, false);
	kin_InteractCol[1] = collision_line(x, y, x + lengthdir_x(20, direction - 15), y + lengthdir_y(20, direction - 15), Obj_Interact, false, false);
	kin_InteractCol[2] = collision_line(x, y, x + lengthdir_x(20, direction), y + lengthdir_y(20, direction), Obj_Interact, false, false);
	
	for(var i = 0; i <= 2; i++;)
	{
		if kin_InteractCol[i] != noone && !instance_exists(Obj_Textbox)
		{
			with(kin_InteractCol[i])
				event_user(0);
		}
	}
}

//Run State
if(control_Shift)
	star_SpeedWalk = 3;
else
	star_SpeedWalk = 1.5;

//Dynamic State Changer
script_execute(star_State);