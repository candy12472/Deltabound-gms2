/// @desc last edited by LunaticWyrm467
//---------------Per Frame
//-----Controls
//Input Mapping
control_Esc = keyboard_check(vk_escape);
control_Left = keyboard_check(ord("A")) || keyboard_check(vk_left);
control_Right = keyboard_check(ord("D")) || keyboard_check(vk_right);
control_Up = keyboard_check(ord("W")) || keyboard_check(vk_up);
control_Down = keyboard_check(ord("S")) || keyboard_check(vk_down);
control_Menu = keyboard_check_pressed(ord("C"));
control_Shift = keyboard_check(ord("X"));
control_Fullscreen = keyboard_check_pressed(vk_f4);

//Kinematics
kin_InputDir = point_direction(0, 0, control_Right - control_Left, control_Down - control_Up);
kin_InputMag = (control_Right - control_Left != 0) || (control_Down - control_Up != 0);

//Collisions
kin_InteractCol = collision_rectangle(x - 6, y - 6, x + 6, y + 6, star_InteractObj, false, false);

//-----Execution
//Exit Game
if control_Esc game_end()

//Display Menu
if control_Menu && !instance_exists(Obj_Pause) instance_create_depth(0, 0, depth, Obj_Pause)

//Fullscreen Control
if control_Fullscreen window_set_fullscreen(!window_get_fullscreen());

//Setup Textbox
TextboxSetup();

//Run State
if(control_Shift)
	star_SpeedWalk = 3;
else
	star_SpeedWalk = 1.5;

//Dynamic State Changer
script_execute(star_State);