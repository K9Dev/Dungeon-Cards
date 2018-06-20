/// Step Event

if(hp <= 0){
	room_restart()
	//instance_destroy();
}
scr_get_input();
scr_check_for_inv();
scr_check_weapon_change();
scr_get_state(state); // script_execute is a built-in function that does the same