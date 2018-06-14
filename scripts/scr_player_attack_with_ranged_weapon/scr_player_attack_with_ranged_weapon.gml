// Move while attack
var onTheFloor = scr_player_check_for_movements();
move_obj(hspd, vspd); 

// Create Ranged Attack
var rangedWeapon = argument0;

switch(rangedWeapon){
	
	case weapons.HandGun:
	
		var projectile = obj_Bullet;
		var xOffset = obj_WeaponControler.handGunXOffset;
		var yOffset = obj_WeaponControler.handGunYOffset;
		var projectileSpeed = obj_WeaponControler.handGunBulletSpeed;
		var isAutomaticWeapon = obj_WeaponControler.handGunIsAutomatic;
		var shootDelay = obj_WeaponControler.handGunShootDelay;
		
		scr_shoot_gun(hspd, vspd, projectile, xOffset, yOffset, projectileSpeed, isAutomaticWeapon, shootDelay);
		
		if(!isAutomaticWeapon /*&& !key_attack_pressed*/){
			state = player_state.move;
		} else {
			scr_player_set_sprites();
		}
	break;
	
}