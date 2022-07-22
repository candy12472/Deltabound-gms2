x = 160;
y = 80;

partSystem = part_system_create();
partType = part_type_create();

part_type_sprite(partType, Spr_BattleArea, false, false, false);
part_type_alpha2(partType, 1, 0);
part_type_life(partType, 25, 25);

alarm[0] = 5;