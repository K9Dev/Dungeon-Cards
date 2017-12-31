/// scr_add_inv_item(x, y, item)

var xx = argument[0];
var yy = argument[1];
var item = argument[2];

// Check for out of Range
if(xx != median(0, xx, global.invObj.width-1) || yy != median(0, yy, global.invObj.height-1)){
	log("The x and y are outside of the range.");
	exit;
}

// Get the add_item count
var item_count = global.invObj.count[# xx, yy];

log("Item Count in Add item Script: " + string(item_count));

if(item_count == 0){
	// Empty global.invObjetory spot
	
	//Add item
	global.invObj.box[# xx, yy] = item;
	
	var objX = global.invObj.x + (xx * box_size);
	var objY = global.invObj.y + (yy * box_size);
	
	//log("ADD ITEM: X = " + string(objX) + " Y = " + string(objY)); 
	
	//if(!instance_position(objX, objY, obj_Item)){
		
		var obj = instance_create_depth(objX, objY, 100, obj_Item);
	
		log("Instance " + string(obj) + " created at X: " + string(objX) + " Y: " + string(objY));
	
		ds_list_add(global.all_item_instances, string(obj));
	
		with(obj){
			itemId = item;
			log("Item ID: " + string(itemId) + " set in object " + string(obj));
		}
	//}
	
	
	// Add 1 to the count
	global.invObj.count[# xx, yy]++;
	
	// Return back out
	return true;
	
} else if(item_count > 0){
	// Already an item in here
	
	// Check if we can add item to that slot, is the same?
	if(global.invObj.box[# xx, yy] == item){
		// Add 1 to count
		global.invObj.count[# xx, yy]++;
		
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
