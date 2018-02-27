///Fight
log("fight");
//if attack cd is ready and player near, attack
if ((alarm[1] >= 0) and (abs(x-obj_player.x) < 32)){
	image_index = 1;
	state = enemy_state.attacking;
	alarm[1] = room.speed*15;
	alarm[2] = room.speed*3;
}