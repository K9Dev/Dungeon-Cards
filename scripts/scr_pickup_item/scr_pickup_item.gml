/// scr_pickup_item(item)

var item = argument0;

// Check for item in inventory
for(var yy = 0; yy < Inventory.height; yy++){
	for(var xx = 0; xx < Inventory.width; xx++){
		if(Inventory.box[# xx, yy] == item){
			Inventory.count[# xx, yy]++;
			log("Added one count to " + string(Inventory.box[# xx, yy]));
			return true;
		}	
	}

}

// Check for empty slot in inventory
for(var yy = 0; yy < Inventory.height; yy++){
	for(var xx = 0; xx < Inventory.width; xx++){
		if(Inventory.box[# xx, yy] == global.arrayWeapons[0,0]){
			Inventory.box[# xx, yy] = item;
			Inventory.count[# xx, yy]++;
			
			var objX = Inventory.x + (xx * box_size);
			var objY = Inventory.y + (yy * box_size);
	
			if(instance_position(objX, objY, obj_Item) == noone){
				var obj = instance_create_depth(objX, objY, 100, obj_Item);
	
				ds_list_add(global.all_item_instances, string(obj));
				
				log("Instance " + string(obj) + " created at X: " + string(objX) + " Y: " + string(objY));
	
				with(obj){
					itemId = item;
					log("Item ID: " + string(itemId) + " set in object " + string(obj)); 
				}
			}
			
			log("Added new item " + string(Inventory.box[# xx, yy]));
			
			return true;
		}	
	}
}

// Show debug message
show_debug_message("Inventory is full!");
return false;