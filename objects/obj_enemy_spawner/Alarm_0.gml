/// @description Spawn enemy all x seconds
if !(instance_exists(obj_Enemy_Cuber)){
	instance_create_depth(x, y, depth, obj_Enemy_Cuber);
}
alarm[0] = room_speed*3;