/// @description Create explosion
if(other.id==target.id){
	instance_destroy(other);
	instance_destroy();
	instance_create_layer(x, y, "Explosions", obj_explosion);
}