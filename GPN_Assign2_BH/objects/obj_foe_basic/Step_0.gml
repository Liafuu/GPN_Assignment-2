event_inherited();

// Makes enemies always shoot
if (true) {
	if (last_shot_time + 1 / shot_per_sec <= current_time / 1000) {
		bhpg_pattern_init(1, 0, 270, 6, 1800, 0, 0, 1, 30, 15, 16, 16, 0, 0);
		bhpg_bullet_init(obj_foe_bullet, 5, 0, 0);
		bhpg_pattern_step();
		last_shot_time = current_time / 1000;
	}
}


