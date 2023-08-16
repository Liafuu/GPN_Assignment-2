if(true) {
	if (last_shot_time + 1 / shot_per_sec <= current_time / 1000) {
		// First Set
		self.Aim(obj_player_hitbox.id);
		bhpg_pattern_init(2, 20, shot_angle, 1, 0, 0, 0, 1, 0, 15, 0, 0, random_x, random_y);
		bhpg_bullet_init(obj_bullet_target, 5, 0, 0);
		bhpg_pattern_step();
		
		// Only enables the second set of bullets if double_shot is true		
		if (double_shot) {
			// Second set of bullets
			self.Aim(obj_player_hitbox.id);
			bhpg_pattern_init(2, 20, shot_angle, 1, 0, 0, 0, 1, 0, 15, 0, 0, random_x, random_y);
			bhpg_bullet_init(obj_bullet_target, 5, 0, 0);
			bhpg_pattern_step();
		}
		
		last_shot_time = current_time / 1000;
	}
}



