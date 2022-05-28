//---------------// Draw Sorting - Draw Event
/// @description Draw Entities

//-----// On Draw Step
//---// Resize Depth Grid
var temp_Entities	= Obj_Par_World;
var temp_DS			= star_DS_depth;
var entity_num		= instance_number(temp_Entities);
ds_grid_resize(temp_DS, 2, entity_num);

//---// Add Entity Information to Grid
var yy = 0; with(temp_Entities) {
	temp_DS[# 0, yy] = id;
	temp_DS[# 1, yy] = y;
	yy++;
}

//---// Get Grid Sorted in Ascending Order
ds_grid_sort(temp_DS, 1, true) // <- Last Param is True to Allow Sorting in Ascending Order

//---// Loop Through Grid and Draw Instances
yy = 0; var entity; repeat(entity_num) {
	
	//Pull Out ID
	entity = temp_DS[# 0, yy];
	
	//Call Draw Event on Instance
	with(entity) { event_perform(ev_draw, 0); } // <- draw_self(); Could Be Used - But it Wouldn't Call an Entity's Full Draw Logic
	yy++;
}