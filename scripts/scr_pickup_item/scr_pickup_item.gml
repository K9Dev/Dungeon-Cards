/// scr_pickup_item(item)

var item = argument0;

// Check for item in global.invObj
for(var yy = 0; yy < global.invObj.height; yy++){
	for(var xx = 0; xx < global.invObj.width; xx++){
		if(global.invObj.box[# xx, yy] == item){
			global.invObj.count[# xx, yy]++;
			log("Added one count to " + string(global.invObj.box[# xx, yy]));
			return true;
		}	
	}

}

// Check for empty slot in global.invObj
for(var yy = 0; yy < global.invObj.height; yy++){
	for(var xx = 0; xx < global.invObj.width; xx++){
		if(global.invObj.box[# xx, yy] == global.arrayWeapons[0,0]){
			global.invObj.box[# xx, yy] = item;
			global.invObj.count[# xx, yy]++;
			
			var objX = global.invObj.x + (xx * box_size);
			var objY = global.invObj.y + (yy * box_size);
	
			if(instance_position(objX, objY, obj_Item) == noone){
				var obj = instance_create_depth(objX, objY, 100, obj_Item);
	
				ds_list_add(global.all_item_instances, string(obj));
				
				log("Instance " + string(obj) + " created at X: " + string(objX) + " Y: " + string(objY));
	
				with(obj){
					itemId = item;
					log("Item ID: " + string(itemId) + " set in object " + string(obj)); 
				}
			}
			
			log("Added new item " + string(global.invObj.box[# xx, yy]));
			
			return true;
		}	
	}
}

// Show debug message
show_debug_message("Inventory is full!");
return false;