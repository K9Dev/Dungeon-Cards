/// 
var invOpen = global.invObj.invOpen;

if(!invOpen){
	return;
}

items_total = ds_list_size(global.all_item_instances);

//log("Start checking for Items in list.. Total Items: " + string(items_total));
if(items_total == 0){
		Mouse_Controller.hovered_item_id = noone;
}else{
	var item = scr_check_for_hovering_item(items_total);
	
	if(item != noone){
		Mouse_Controller.hovered_item_id = item.itemId;
	}
}