///scr_player_dash
var weapon = argument0;

switch(weapon){
	case weapons.darkSword:
		var darkSwordSprite = spr_Player_Attack_Darksword;
		var darkSwordHitboxSprite = spr_Player_Attack_Darksword_hitbox;
		
		scr_player_attack_with_weapon(darkSwordSprite, darkSwordHitboxSprite);
		
		break;
		
	case weapons.gun:		
		scr_player_attack_with_ranged_weapon(weapons.gun);
		
		break;
}