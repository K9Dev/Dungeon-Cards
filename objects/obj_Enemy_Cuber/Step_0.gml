/// 

if(enemy_hp <= 0){
	instance_destroy();
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