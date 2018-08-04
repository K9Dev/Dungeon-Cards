/// @description 

var card1 = spr_card_ui;
var card2 = spr_card_ui;
var card3 = spr_card_ui;
if (instance_exists(obj_Player)){
	draw_index = round(obj_Player.draw_energy_current / 14);
	if (obj_Player.card1 == 1){card1 = spr_card1}
	if (obj_Player.card2 == 2){card2 = spr_card2}
}

draw_sprite(spr_deck, 0, 64, 800);
draw_sprite(card1, 0, 320, 830);
draw_sprite(card2, 0, 430, 830);
draw_sprite(spr_card_ui, 0, 540, 830);
draw_sprite(spr_draw_cooldown, draw_index, 660, 830);
if (instance_exists(obj_Player)){
	hpbar = obj_Player.hp_max-obj_Player.hp;	
	draw_sprite(spr_hp_bar, hpbar, 780, 830);
	draw_text(800, 846, "HP: " + string(obj_Player.hp) + "/" + string(obj_Player.hp_max));
}
draw_sprite(spr_minimap_placeholder, 0, 1700, 830);