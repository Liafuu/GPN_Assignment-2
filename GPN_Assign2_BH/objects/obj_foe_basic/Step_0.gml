event_inherited();

if (true) {
	if (last_shot_time + 1 / shot_per_sec <= current_time / 1000) {
		bhpg_pattern_init(1, 40, 270, 1, 90, 0, 0, 1, 30, 15, 124, 124, 0, -100);
		bhpg_bullet_init(obj_bullet, 5, 0, 0);
		bhpg_pattern_step();
		last_shot_time = current_time / 1000;
	}
}


