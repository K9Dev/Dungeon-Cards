/// x_to_gx(x)

var xx = argument0;

log("Given X: " + string(xx) + "   Inv X: " + string(Inventory.x));

if (xx < Inventory.x){
	return -1;
}

var result = (xx - Inventory.x) div Inventory.box_size;

log("Returning Value: " + string(result));
return result;