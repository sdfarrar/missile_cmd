/// @description Spawn
var xPos = irandom(room_width);
var missile = instance_create_layer(xPos, 0, "Instances", obj_enemy_missile);
var target = targets[irandom(2)];
missile.target = target;
missile.originX = xPos;
missile.originY = 0;
missile.direction = point_direction(xPos, 0, target.x, target.y);