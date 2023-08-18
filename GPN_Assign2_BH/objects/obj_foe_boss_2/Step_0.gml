if (phase == 2) {
	if (last_shot_time + 1 / shot_per_sec <= current_time / 1000) {
		// First set
		bhpg_pattern_init(1, 0, 245, 4, (45 * 4), 0, 0, 1, 0, 3, 0, 0, 0, 0);
		bhpg_bullet_init(obj_bullet_changing, 4, 0, 0);
		bhpg_pattern_step();
		
		last_shot_time = current_time / 1000; }
	
	if (last_shot_time_2 + 1 / shot_per_sec_2 <= current_time / 1000) {
		// Second set
		bhpg_pattern_init(1, 0, random_range(0, 360), 1, 0, 0, 0, 1, 0, 100, 0, 0, 0, 0);
		bhpg_bullet_init(obj_bullet_splitting, 2, 0, 0);
		bhpg_pattern_step();
		
		last_shot_time_2 = current_time / 1000; }
}
else if (path_position == 1) {
	bhpg_pattern_step();
}