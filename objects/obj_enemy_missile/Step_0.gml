if(target!=noone && y > target.y){
	//instance_destroy(target);
	target.isAlive = false;
	instance_destroy();
	instance_create_layer(x, y, "Explosions", obj_explosion);
}