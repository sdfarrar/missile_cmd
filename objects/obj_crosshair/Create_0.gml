/// @description Setup
window_set_cursor(cr_none);

missileSilos = [];
for(var i=0; i<instance_number(obj_missile_silo); i++){
	missileSilos[i] = instance_find(obj_missile_silo, i);
}