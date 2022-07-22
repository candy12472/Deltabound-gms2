// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scr_Heal(_character, _amount)
{
	with(global.hero[_character])
	{
		var partSystem = part_system_create();
		var partType = part_type_create();
		
		part_system_depth(partSystem, -999)
	
		part_type_direction(partType, 15, 105, 0, 0.05);
		part_type_speed(partType, 0.8, 1.5, -0.025, 0);
		part_type_size(partType, 0.7, 1, -0.025, 0);
		part_type_alpha2(partType, 1, 0);
		part_type_sprite(partType, Spr_Sparkle, false, false, false);
		part_type_orientation(partType, 0, 360, 0.1, 0, 0);
		part_type_color1(partType, #00ff00);
	
		part_particles_create(partSystem, irandom_range(x - 3, x + 3), y - 8, partType, irandom_range(6, 12));
		
		Scr_Flash(0.7, 0.05, c_white);
		global.hp[_character] += _amount;
		audio_play_sound(Snd_Power, 0, false);
	}
}
