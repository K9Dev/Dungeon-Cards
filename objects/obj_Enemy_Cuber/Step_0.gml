/// 

if(enemy_hp <= 0){
	instance_destroy();
	instance_create_depth(x, y, depth, obj_draw_energy);
	instance_create_depth(x, y, depth, obj_draw_energy);
	instance_create_depth(x, y, depth, obj_draw_energy); //nice loop lalala
}

// If hit -> state = interupted

// Enemy Strategy
switch (state){
	
	case enemy_state.patrol:
		scr_patrol();
		break;
		

	case enemy_modus.fight:	
		scr_fight();
		break;

}