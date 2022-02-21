if cooldown <= 0
{
	var target = irandom(global.charNumber);
	var damage = irandom_range(20, 40);
	
	randomize();
	
	global.hp[target] -= damage;
}

with(other)
{
	instance_destroy();
}