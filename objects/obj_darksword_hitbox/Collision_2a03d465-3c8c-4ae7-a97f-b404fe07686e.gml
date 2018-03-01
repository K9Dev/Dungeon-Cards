with(instance_place(x, y, Parent_Enemy)){
	log("Enemy hit!");
	
	if(enemy_hit == 0){
		enemy_hit = 1;
		hspd = sign(x-other.x) * 4;
		vspd = -3;
		image_xscale = sign(hspd);
	
		enemy_hp -= obj_WeaponControler.darkSwordAttackDmg;
				
		alarm[0] = room_speed / 5;
	}
}