/// @description Kill enemy
instance_destroy(other);
instance_create_layer(other.x, other.y, "Explosions", obj_explosion);