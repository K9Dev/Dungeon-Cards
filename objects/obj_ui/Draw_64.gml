/// @description Insert description here
// You can write your code in this editor
hpbar = 0;

draw_sprite(spr_deck, 0, 64, 800);
draw_sprite(spr_card_ui, 0, 320, 830);
draw_sprite(spr_card_ui, 0, 430, 830);
draw_sprite(spr_card_ui, 0, 540, 830);
draw_sprite(spr_draw_cooldown, 0, 660, 830);
if (instance_exists(obj_Player)){
	hpbar = obj_Player.hp_max-obj_Player.hp;	
	draw_sprite(spr_hp_bar, hpbar, 780, 830);
	draw_text(800, 846, "HP: " + string(obj_Player.hp) + "/" + string(obj_Player.hp_max));
}
draw_sprite(spr_minimap_placeholder, 0, 1700, 830);