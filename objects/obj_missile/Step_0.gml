/// @description Limit Height

if(y < target.y){
	instance_destroy(target);
	instance_destroy();
	instance_create_layer(x, y, "Explosions", obj_explosion);
}