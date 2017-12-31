/// Init Inventory Object

//log("CREATING INVENTORY");

draw_set_font(inv_txt_font);

visible = false;
invOpen = false;

global.invObj = object_index;

width = 4;
height = 4;

box_size = 40;

// Create DS Grid
// Items 
box = ds_grid_create(width, height);
ds_grid_clear(box, noone);

// Items count
count = ds_grid_create(width, height);
ds_grid_clear(count, 0);

// Add and remove items
/*repeat(5){
	scr_pickup_item(global.arrayWeapons[1,0]);
}

scr_pickup_item(global.arrayWeapons[2,0]);
scr_pickup_item(global.arrayWeapons[3,0]);*/

