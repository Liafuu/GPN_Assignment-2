if (phase == 3 && instance_number(obj_boss_summon_2) == 2) {
	draw_sprite(spr_healthbar_bg, 0, self.x - 10, self.y - 50);
	draw_sprite_stretched(spr_healthbar, 0, self.x - 40, self.y - 55, (self.health / self.max_health) * healthbar_width, 13);
} else if (phase != 3 && path_position == 1) {
	draw_sprite(spr_healthbar_bg, 0, self.x - 10, self.y - 50);
	draw_sprite_stretched(spr_healthbar, 0, self.x - 40, self.y - 55, (self.health / self.max_health) * healthbar_width, 13);
}






