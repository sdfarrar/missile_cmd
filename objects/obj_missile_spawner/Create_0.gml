/// @description Setup
shotsLeft = 10;
timeout = 160;
alarm[0] = 60;

targets = [];
for(var i=0; i<instance_number(obj_missile_silo); i++){
	targets[i] = instance_find(obj_missile_silo, i);
}