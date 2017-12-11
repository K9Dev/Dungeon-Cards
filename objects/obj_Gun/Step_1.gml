/// Before any other Step

if(instance_exists(obj_Player)){
	image_angle = point_direction(x,y,mouse_x, mouse_y);

	firingDelay -= 1;
	recoil = max(0, recoil -1);

	if(mouse_check_button(mb_left)) && (firingDelay < 0){

		recoil = 4;
		firingDelay = 10;
	
		with(instance_create_layer(x,y,"Item_Bullets",obj_Bullet)){
			speed = 20;
			direction = other.image_angle + random_range(-3,3);
			image_angle = direction;
		}
	}

	x -= lengthdir_x(recoil, image_angle);
	y -= lengthdir_y(recoil, image_angle);

	if(image_angle > 90) && (image_angle < 270){
		image_yscale = -1;
	}else{
		image_yscale = 1;
	}

	x = obj_Player.x + 2 * image_yscale;
	y = obj_Player.y + 10;

}else{
	instance_destroy();
}