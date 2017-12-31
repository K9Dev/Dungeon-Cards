// Check if Player opened inventory

if(key_inv & !invOpen){
	with(global.invObj){
		visible = true;
	}
	
	invOpen = true;
}else if(key_inv & invOpen){
	with(global.invObj){
		visible = false;
	}
	
	invOpen = false;
}
