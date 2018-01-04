with(instance_place(x, y, Parent_Enemy)){
	log("Enemy hit!");
	
	if(enemy_hit == 0){
		enemy_hit = 1;
		enemy_speed_array[0] = sign(x-other.x) * 4;
		enemy_speed_array[1] = -3;
		image_xscale = sign(enemy_speed_array[0]);
	
		enemy_hp -= obj_WeaponControler.darkSwordAttackDmg;
				
		alarm[0] = room_speed / 5;
	}
}