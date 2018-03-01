/// scr_shoot_gun(hspd, vspd, projectil, yOffset, projectileSpeed, isAutomaticWeapon, shootDelay)
var hspd = argument0;
var vspd = argument1;
var projectil = argument2;
var xOffset = argument3;
var yOffset = argument4;
var projectileSpeed = argument5;
var isAutomaticWeapon = argument6;
var shootDelay = argument7;

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
				
				var dir = sign(hspd);
			
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
			
		var dir = sign(hspd);
			
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

