event_inherited();

// Initiates the shots
if(true) {
	if (last_shot_time + 1 / shot_per_sec <= current_time / 1000) {
		self.Aim(obj_player_hitbox.id);
		
		bhpg_pattern_init(1, 20, shot_angle, 1, 90, 0, 0, 1, 0, 4, 0, 0, 0, 0);
		bhpg_bullet_init(obj_foe_bullet, 5, 0, 0);
		bhpg_pattern_step();
		last_shot_time = current_time / 1000;
	}
}



