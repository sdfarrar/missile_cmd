/// @description Fire missile

// Get closest silo
var silo = undefined;
for(var i=0; i<array_length_1d(missileSilos); i++){
	if(missileSilos[i].isAlive && missileSilos[i].shotsLeft > 0){
		silo = missileSilos[i];
		break;
	}
}

if(silo==undefined){
	return;
}

for(var i=0; i<array_length_1d(missileSilos); i++){
	var distance = abs(x - silo.x);
	if(abs(x - missileSilos[i].x) < distance && missileSilos[i].shotsLeft > 0 && missileSilos[i].isAlive){
		silo = missileSilos[i];
	}
}

if(silo!=undefined && silo.isAlive && silo.shotsLeft > 0){	// all silos could be empty
	var target = instance_create_layer(x, y, "Instances", obj_missile_target);
	var missile = instance_create_layer(silo.x, silo.y, "Instances", obj_missile);
	missile.originX = silo.x;
	missile.originY = silo.y;
	missile.target = target;
	missile.direction = point_direction(silo.x, silo.y, target.x, target.y);
	silo.shotsLeft--;
}