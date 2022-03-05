var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);
var shift = keyboard_check(ord("X"));

moveX = (right - left) * moveSpeed;
moveY = (down - up) * moveSpeed;

if shift moveSpeed = 0.5;
else moveSpeed = 1;

if (cooldown > 0) cooldown--

if place_meeting(x + moveX, y, Obj_BattleArea)
{
	moveX = 0;
}

if place_meeting(x, y + moveY, Obj_BattleArea)
{
	moveY = 0;
}

if cooldown > 0
{
	visible = !visible;
}
else if cooldown <= 0
{
	visible = true
}

x += moveX;
y += moveY;