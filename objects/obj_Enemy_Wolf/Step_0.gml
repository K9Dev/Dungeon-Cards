/// 

if(enemy_hp <= 0){
	instance_destroy();
	instance_create_depth(x, y, depth, obj_draw_energy);
	instance_create_depth(x, y, depth, obj_draw_energy);
	instance_create_depth(x, y, depth, obj_draw_energy);
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

if (hspd > 0){
	image_xscale = -1;
} else {
	image_xscale = 1;
}