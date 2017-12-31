/// Step Event
scr_get_input();

scr_check_for_inv();

scr_get_state(state);

// Check Dash State
if(key_dash && speed_array[0] != 0 && canDash){
	state = player_state.dash;
	
	// Set Move State
	alarm[0] = room_speed / 6;
	
	// Reset Dash Cooldown
	alarm[1] = room_speed * 1.6;
}

// Check Attack State
if(key_attack && canAttack){
	state = player_state.attack;
	canAttack = false;
}