/// Draw the inventory

//log("Inventory: Starting draw event");

draw_self();

for(var yy = 0; yy < width; yy++){
	for(var xx = 0; xx < height; xx++){
		
		// Add 7 and 35 to Coors for positioning in Inventory
		var tempX = x + 7 + (xx * box_size);
		var tempY = y + 35 + (yy * box_size);
			
		//log("Check Coors-- XX: " + string(xx) + " YY: " + string(yy));
		var spriteToDraw = box[# xx, yy];
		
		//log("Sprite to draw: " + string(spriteToDraw));
		
		if(spriteToDraw != -4){			
			
			//log("Drawing: " + string(spriteToDraw) + " at coors -- X: " + string(tempX) + "  Y: " + string(tempY));
			draw_sprite(spr_all_items, spriteToDraw, tempX, tempY);	
			
			//log("Count = " + string(count[# xx, yy]));
			if(count[# xx, yy] > 0){
				//log("Draw Circle with text: " + string(count[# xx, yy]));
				//draw_circle_colour(tempX, tempY - 6, 6, c_white, c_white, false);
				draw_text_color(tempX + 6, tempY + 5, "x" + string(count[# xx, yy]), c_black, c_black, c_black, c_black, 1);
			}
		} else {
				draw_sprite(spr_all_items, 0, tempX, tempY);			
		}
		
	}
}

// Add Background
//image_index = spr_inventory_bg;
