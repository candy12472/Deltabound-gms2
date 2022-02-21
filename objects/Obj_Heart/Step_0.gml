var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);
var shift = keyboard_check(ord("X"));

x += (right - left) * moveSpeed;
y += (down - up) * moveSpeed;

if shift moveSpeed = 0.5;
else moveSpeed = 1;

if (cooldown > 0) cooldown--