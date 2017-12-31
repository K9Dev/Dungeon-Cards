/// 
items_total = ds_list_size(global.all_item_instances);

//log("Start checking for Items in list.. Total Items: " + string(items_total));
if(items_total == 0){
		Mouse_Controller.hovered_item_id = noone;
}else{

	for(var i = 0; i < items_total; i++){
	
		var item_obj = instance_position(mouse_x, mouse_y, obj_Item);
	
		var item_from_list = ds_list_find_value(global.all_item_instances, i);
	
		//log("Checking item from list: " + string(item_from_list) + " against item: " + string(item_obj));
	
		if(string(item_from_list) == string(item_obj)){
			Mouse_Controller.hovered_item_id = item_obj.itemId;
			//log("Hovered Item set to: " + string(Mouse_Controller.hovered_item_id) + " from Object: " + string(item_obj));
		}else{
			//Mouse_Controller.hovered_item_id = noone;
			//log("No Objects hovering..");
		}
	}
}
