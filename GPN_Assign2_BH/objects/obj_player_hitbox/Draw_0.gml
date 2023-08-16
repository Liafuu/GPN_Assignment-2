// Only draws itself when focus mode is active
if (key_focus) {
	draw_self();
}

if (self.Invuln()) {
	object_set_sprite(obj_player, spr_player_invuln);
} else {
	object_set_sprite(obj_player, spr_player);
}


