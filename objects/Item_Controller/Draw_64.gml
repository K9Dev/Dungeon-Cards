/// Draw Hovering over Items
//draw_text_ext(10,10,string_hash_to_newline("Press space to randomize loot. Hover over items to see descriptions."),25,255);

//log("Drawing details..");

draw_text(200, 100,"Item Instances: " + string(Mouse_Controller.items_total));
draw_text(200, 130,"Hovering over: " + string(Mouse_Controller.hovered_item_id));

var hovered_item_id = Mouse_Controller.hovered_item_id;

var arrayPos = noone;

if(hovered_item_id != noone){
	
	var weaponListSize = array_height_2d(global.arrayWeapons);

	for(var i = 0; i < weaponListSize; i++){
		if(global.arrayWeapons[i, 0] == hovered_item_id){
			arrayPos = i;
		}
	}
	
	if(arrayPos == noone){
		log("The Item is not listed in the Arsenal");
		return;
	}
	
	var icon = global.arrayWeapons[arrayPos, 0];
	var name = global.arrayWeapons[arrayPos, 1];
	var type = global.arrayWeapons[arrayPos, 2];
	var dmg = global.arrayWeapons[arrayPos, 3];
	var desc = global.arrayWeapons[arrayPos, 4];
	var quality = global.arrayWeapons[arrayPos, 5];
	var bonus1 = global.arrayWeapons[arrayPos, 6];
	var bonus2 = global.arrayWeapons[arrayPos, 7];
	var req = global.arrayWeapons[arrayPos, 8];
		
	//log("Drawing ID: " + string(arrayPos));

	scr_show_item_details_hover(icon,name,type,dmg,desc,quality,bonus1,bonus2,req);
	
	Mouse_Controller.hovered_item_id = noone;
}



	
