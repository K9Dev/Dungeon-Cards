///scr_player_dash
var weapon = argument0;

switch(weapon){
	case weapons.DarkSword:
		var darkSwordSprite = spr_Player_Attack_Darksword;
		var darkSwordHitbox = obj_darksword_hitbox;
		var darkSwordDmg = obj_WeaponControler.darkSwordAttackDmg;
		
		//log("Attacking with Sword.. Hitboxsprite = " + sprite_get_name(darkSwordHitbox));
		scr_player_attack_with_weapon(darkSwordSprite, darkSwordHitbox, darkSwordDmg);
		
		break;
		
	case weapons.HandGun:	
		log("Attacking with Gun..");
		scr_player_attack_with_ranged_weapon(weapon);
		
		break;
}