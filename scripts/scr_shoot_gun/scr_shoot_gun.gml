/// scr_shoot_gun(speed_array, projectil, yOffset, projectileSpeed, isAutomaticWeapon, shootDelay)
var speed_array = argument0;

var projectil = argument1;
var xOffset = argument2;
var yOffset = argument3;
var projectileSpeed = argument4;
var isAutomaticWeapon = argument5;
var shootDelay = argument6;

var playerXscale = image_xscale;

xOffset = xOffset * playerXscale;

log("Entering Shoot Gun");

var shoot = true;

if(isAutomaticWeapon){
	
	//log("Key Attack Held down = " + string(key_attack_pressed) + "  canShoot = " + string(canShoot));
	
	if(key_attack_pressed){
		//log("Key held down..");
		
		if(canShoot){
			var bullet = instance_create_depth(x + xOffset, y + yOffset, depth - 100, projectil);
		
			with(bullet){
				//speed = 20;
				speed = projectileSpeed;
			
				image_speed = 2;
				
				var dir = sign(speed_array[0]);
			
				if(dir == -1){
					direction = 180;
				}else{
				
					if(playerXscale == -1){
						direction = 180;
					}else{
						direction = 0;
					}
				}
			
				//direction = other.image_angle + random_range(-1,1);
				image_angle = direction;
	
			}
			
			// fire rate
			alarm[2] = shootDelay; 
		
			canShoot = 0;
		}
	}
	
} else {
	var bullet = instance_create_depth(x + xOffset, y + yOffset, depth - 100, projectil);
	
	log("Normal shot");
	
	with(bullet){
		//speed = 20;
		speed = projectileSpeed;
			
		var dir = sign(speed_array[0]);
			
		if(dir == -1){
			direction = 180;
		}else{
				
			if(playerXscale == -1){
				direction = 180;
			}else{
				direction = 0;
			}
		}
			
		//direction = other.image_angle + random_range(-1,1);
		image_angle = direction;
			
	}
}

canAttack = true;

