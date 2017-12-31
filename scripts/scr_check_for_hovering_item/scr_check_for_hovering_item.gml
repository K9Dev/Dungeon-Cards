/// 
var itemsCount = argument0;

for(var i = 0; i < itemsCount; i++){
	
	var item_obj = instance_position(mouse_x, mouse_y, obj_Item);
	
	var item_from_list = ds_list_find_value(global.all_item_instances, i);
	
	//log("Checking item from list: " + string(item_from_list) + " against item: " + string(item_obj));
	
	if(string(item_from_list) == string(item_obj)){
		return item_obj;
		//log("Hovered Item set to: " + string(Mouse_Controller.hovered_item_id) + " from Object: " + string(item_obj));
	}
}

return noone;

