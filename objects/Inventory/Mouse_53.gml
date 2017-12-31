/// Add a random item to the inventory for debuging

var gx = x_to_gx(mouse_x);
var gy = y_to_gy(mouse_y);

var item = choose(global.arrayWeapons[1,0], global.arrayWeapons[2,0], global.arrayWeapons[3,0]);

log("Clicked on-- GX: " + string(gx) + " GY: " + string(gy));

if(gx == -1 || gy == -1){
	exit;
}

if(count[# gx, gy] == 0){
	
	scr_add_inv_item(gx, gy, item);
	
} else {
	var currentCount = count[# gx, gy];
	
	log("Current count: " + string(currentCount));
	
	if(currentCount >= 0){
		count[# gx, gy]++;
	}
}
