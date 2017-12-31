/// Add a random item to the inventory for debuging
if(!invOpen){
	return;
}

var gx = x_to_gx(mouse_x);
var gy = y_to_gy(mouse_y);

if(count[# gx, gy] > 0){
	
	scr_remove_inv_item(gx, gy);
	
} 
