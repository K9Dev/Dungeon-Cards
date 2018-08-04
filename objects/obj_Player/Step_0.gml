/// Step Event

if(hp <= 0){
	room_restart()
	//instance_destroy();
}

scr_get_input();
scr_check_for_inv();
scr_check_weapon_change();
scr_get_state(state); // script_execute is a built-in function that does the same


// Draw mechanic
if (draw_energy_current >= draw_energy_max){
	//scr_draw_card();
	if (card1 == 0){
		card1 = 1;
	} else {
		card2 = 2;
	}
	draw_energy_current -= draw_energy_max;
}


// Stamina mechanic, probably going to scratch this for full card mechanic
if (stamina < 0){stamina=0}
if (stamina < 100){
	if !(key_left or key_right or key_jump_hold or key_attack or key_attack_pressed){
		stamina += 10/room_speed;
	} else {
		stamina += 1/room_speed;
	}
	if (stamina > 100){stamina = 100}
}