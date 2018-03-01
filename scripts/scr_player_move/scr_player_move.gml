///scr_player_move

if(hp <= 0){
	instance_destroy();
}

scr_player_check_for_movements();

move_obj(hspd, vspd);

scr_player_set_sprites();
