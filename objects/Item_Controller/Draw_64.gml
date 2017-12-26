/// Draw Hovering over Items
//draw_text_ext(10,10,string_hash_to_newline("Press space to randomize loot. Hover over items to see descriptions."),25,255);

//log("Drawing details..");

draw_text(200, 100,"Item Instances: " + string(Mouse_Controller.items_total));
draw_text(200, 130,"Hovering over: " + string(Mouse_Controller.hovered_item_id));

var hovered_item_id = Mouse_Controller.hovered_item_id;

if(hovered_item_id != noone){
	
	var icon = global.arrayWeapons[hovered_item_id, 0];
	var name = global.arrayWeapons[hovered_item_id, 1];
	var type = global.arrayWeapons[hovered_item_id, 2];
	var dmg = global.arrayWeapons[hovered_item_id, 3];
	var desc = global.arrayWeapons[hovered_item_id, 4];
	var quality = global.arrayWeapons[hovered_item_id, 5];
	var bonus1 = global.arrayWeapons[hovered_item_id, 6];
	var bonus2 = global.arrayWeapons[hovered_item_id, 7];
	var req = global.arrayWeapons[hovered_item_id, 8];
		
	//log("Drawing ID: " + string(hovered_item_id));

	scr_show_item_details_hover(icon,name,type,dmg,desc,quality,bonus1,bonus2,req);
	
	Mouse_Controller.hovered_item_id = noone;
}


	
