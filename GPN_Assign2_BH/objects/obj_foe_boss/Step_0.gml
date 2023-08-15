// Stops shooting for phase 3 as it is a targetting phase - uses a different thing entirely
// Also prevents shooting until path is done
if (path_position == 1 && !phase_2) {
	bhpg_pattern_step();
} else if (path_position == 1 && phase_2 && !phase_3) {
	if (last_shot_time + 1 / shot_per_sec <= current_time / 1000) {
		// First set
		self.Aim(obj_player_hitbox.id);
		bhpg_pattern_init(1, 0, shot_angle, 6, 2160, 0, 0, 1, 0, 3, 32, 32, random_x, random_y);
		bhpg_bullet_init(obj_foe_bullet_t, 4, 0, 0);
		bhpg_pattern_step();
		
		last_shot_time = current_time / 1000;
	}
	
	if (last_shot_time_2 + 1 / shot_per_sec_2 <= current_time / 1000) {
		
		// Third set
		bhpg_pattern_init(1, 0, 0, 25, 9000, 0, 0, 1, 0, 100, 0, 0, 0, 0);
		bhpg_bullet_init(obj_foe_bullet, 2, 0, 0);
		bhpg_pattern_step();
		
		last_shot_time_2 = current_time / 1000
	}
	
} else if (path_position == 1) {
	bhpg_pattern_step();
}

if (phase_2 && !phase_3) {
	if (last_shot_time + 1 / shot_per_sec_2 <= current_time / 1000) {
		bhpg_pattern_init(1, 0, 0, 25, 9000, 0, 0, 1, 0, 100, 0, 0, 0, 0);
		bhpg_bullet_init(obj_foe_bullet, 2, 0, 0);
		bhpg_pattern_step();
		
		last_shot_time_2 = current_time / 1000
	}
}