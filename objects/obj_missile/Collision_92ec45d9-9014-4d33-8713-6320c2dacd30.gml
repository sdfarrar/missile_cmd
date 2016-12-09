/// @description Create explosion
if(target!=noone && other.id==target.id){
	instance_destroy(other);
	instance_destroy();
	instance_create_layer(x, y, "Explosions", obj_explosion);
}