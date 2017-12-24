
var speed_array = argument0;

var playerXscale = image_xscale;

with(instance_create_depth(x, y + 20, depth - 100, obj_Bullet)){
			speed = 20;
			
			var dir = sign(speed_array[0]);
			
			// TODO P1: Fix for Idle State
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

canAttack = true;

