/// 

if(enemy_hp <= 0){
	instance_destroy();
}

//script_execute(state);

enemy_speed_array = [hspd, vspd];

// Enemy Strategy
// Enemy state
switch (state){
	
	// Cant do anything else while attacking
	//case enemy_state.attacking:
	//	break;
		
	// While not performing an action, determine what action to take
	case enemy_state.patrol:
	log(modus);
		// Enemy Modus
		switch (modus){
	
			// Patrol
			case enemy_modus.patrol:
				
				log("patrol2");
				if(place_meeting(x+speed_array[0], y, obj_Wall)){
					hspd = hspd*-1;
				}
				// When seeing player, switch modus to fight
				if (instance_exists(obj_player)){
					if  (x > obj_player.x) {
						if hspd > 0 {
							if (x - obj_Player.x) < 20 {modus = fight}
						} else {
							if (x - obj_Player.x) < 80 {modus = fight}
						}
					} else {
						if hspd > 0 {
							if (obj_Player.x - x) < 80 {modus = fight}
						} else {
							if (obj_Player.x - x) < 20 {modus = fight}
						}
					}
				}
		
				break;
		
			// Fight
			case enemy_modus.fight:
	
				if ((alarm[1] >= 0) and (abs(x-obj_player.x) < 32)){
					// Attack
					image_index = 1;
					state = enemy_state.attacking;
					alarm[1] = room.speed*15;
					alarm[2] = room.speed*3;
				}
		
				break;
	
			//case default
			//	modus = patrol;
		}
}
// Move
enemy_speed_array = [hspd, vspd];
move_obj(enemy_speed_array);