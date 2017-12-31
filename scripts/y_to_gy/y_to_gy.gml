/// y_to_gy(y)

var yy = argument0 - 35;

//log("Given Y: " + string(yy) + "   Inv Y: " + string(Inventory.y));

if (yy < Inventory.y){
	return -1;
}

var result = (yy - Inventory.y) div Inventory.box_size;

//log("Returning Value: " + string(result));
return result;
