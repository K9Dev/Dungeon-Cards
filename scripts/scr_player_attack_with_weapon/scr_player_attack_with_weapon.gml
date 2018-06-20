// Create Attack
var weaponSprite = argument0;
var weaponHitboxSprite = argument1;
var weaponDmg = argument2;

// Move while attack -> took this out and moved it into the general move_obj() which gets called in the step event
//scr_player_check_for_movements();
//move_obj(hspd, vspd); 

sprite_index = weaponSprite;
image_speed = 1;

if(image_index >= 1 && image_index < 4){
	//log("Creating Weapon Hitbox with sprite: " + string(weaponHitboxSprite));
	
	var weaponHitbox = instance_create_depth(x, y, depth - 100, weaponHitboxSprite);
	
	with(weaponHitbox){
		//var spr = sprite_index;
		//log("Sprite Created: " + sprite_get_name(spr));
		image_xscale = other.image_xscale;
		image_speed = 1;
		
	}
}

if(image_index >= 5){
	
	log("Image index is over/= 5, canttack = true"); 
	canAttack = true;
	state = player_state.move;
}