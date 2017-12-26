/// scr_add_inv_item(x, y, item)

var xx = argument[0];
var yy = argument[1];
var item = argument[2];

// Check for out of Range
if(xx != median(0, xx, Inventory.width-1) || yy != median(0, yy, Inventory.height-1)){
	log("The x and y are outside of the range.");
	exit;
}

// Get the add_item count
var item_count = Inventory.count[# xx, yy];

//log("Item Count in Add item Script: " + string(item_count));

if(item_count == 0){
	// Empty Invetory spot
	
	//Add item
	Inventory.box[# xx, yy] = item;
	
	var objX = Inventory.x + (xx * box_size);
	var objY = Inventory.y + (yy * box_size);
	
	if(!instance_position(objX, objY, obj_Item)){
		var obj = instance_create_depth(objX, objY, 100, obj_Item);
	
		log("Instance " + string(obj) + " created at X: " + string(objX) + " Y: " + string(objY));
	
		ds_list_add(global.all_item_instances, string(obj));
	
		with(obj){
			itemId = item;
			log("Item ID: " + string(itemId) + " set in object " + string(obj));
		}
	}
	
	
	// Add 1 to the count
	Inventory.count[# xx, yy]++;
	
	// Return back out
	return true;
	
} else if(item_count > 0){
	// Already an item in here
	
	// Check if we can add item to that slot, is the same?
	if(Inventory.box[# xx, yy] == item){
		// Add 1 to count
		Inventory.count[# xx, yy]++;
		
		return true;
	}else{
		log("There is already a different item there.");
		return false;
	}
	
}else{
	// Item Count is less than zero
	// Error
	show_error("Item count is less than 0", false);
}
