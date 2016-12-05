/// @description Fire missile

// Get closest silo
var silo = missileSilos[0];
for(var i=1; i<array_length_1d(missileSilos); i++){
	var distance = abs(x - silo.x);
	if(abs(x - missileSilos[i].x) < distance && missileSilos[i].shotsLeft > 0){
		silo = missileSilos[i];
	}
}

if(silo.shotsLeft > 0){	// all silos could be empty
	var target = instance_create_layer(x, y, "Instances", obj_missile_target);
	var missile = instance_create_layer(silo.x, silo.y, "Instances", obj_missile);
	missile.silo = silo;
	missile.target = target;
	missile.direction = point_direction(silo.x, silo.y, target.x, target.y);
	show_debug_message(string(missile.direction))
}