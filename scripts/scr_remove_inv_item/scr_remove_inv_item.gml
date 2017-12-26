/// scr_remove_inv_item(x, y)

var xx = argument[0];
var yy = argument[1];

// Check for out of Range
if(xx != median(0, xx, Inventory.width-1) || yy != median(0, yy, Inventory.height-1)){
	log("The x and y are outside of the range.");
	exit;
}

// Get the item count
var item_count = Inventory.count[# xx, yy];

// Make sure we have items
if(item_count > 0){
	// Substract one from the Item Count
	Inventory.count[# xx, yy]--;
	
	// Get access to remove item
	var remove_item = Inventory.box[# xx, yy];
	
	// Check for last Item
	if(item_count == 1){
		// Set item box to empty
		Inventory.box[# xx, yy] = global.arrayWeapons[0,0];
		
		var objX = mouse_x;
		var objY = mouse_y;
	
		var obj = instance_position(objX, objY, obj_Item);
	
		log("Object at position --  X: " + string(objX) + " Y: " + string(objY) + "  has ID: " + string(obj)); 
	
		if(obj != noone){
			with (obj){
				instance_destroy(obj);
				log("Instance " + string(obj) + " destroyed");
				
				var list_pos = ds_list_find_index(global.all_item_instances, string(obj));
				
				if(!is_undefined(list_pos)){
					ds_list_delete(global.all_item_instances, list_pos);
					log("Object " + string(obj) + " deleted from item list");
				}else{
					log("Position for object " + string(obj) + " in Array was undefined"); 
				} 				
			}
		}
	}
	
	// Return removed item
	return remove_item;
	
} else if(item_count == 0){
	// Return null
	log("There is none items to remove there.");
	return global.arrayWeapons[0,0];
} else {
	// Error
	show_error("The item count is less than 0", false);
}