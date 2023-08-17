if (phase == 1) {
	//if (last_shot_time + 1 / shot_per_sec <= current_time / 1000) {
	//	// First set
	//	bhpg_pattern_init(1, 0, (13 * i), 5, 1800, 0, 0, 1, 0, 5, 0, 0, -64, -64);
	//	bhpg_bullet_init(obj_bullet_main, 5, 0, 0);
	//	bhpg_pattern_step();
		
	//	i++;
	//	if (i > 18) { i = 0;}
	//	last_shot_time = current_time / 1000; }
	
	//if (last_shot_time_2 + 1 / shot_per_sec_2 <= current_time / 1000) {
	//	// Second set
	//	bhpg_pattern_init(1, 0, 360 - (13 * i2), 5, 1800, 0, 0, 1, 0, 5, 0, 0, 64, -64);
	//	bhpg_bullet_init(obj_bullet_main, 5, 0, 0);
	//	bhpg_pattern_step();
		
	//	i2++;
	//	if (i2 > 18) { i2 = 0; }
	//	last_shot_time_2 = current_time / 1000; }
		
	//if (last_shot_time_3 + 1 / shot_per_sec_4 <= current_time / 1000) {
	//	// Second set
	//	bhpg_pattern_init(1, 0, (13 * i3), 5, 1800, 0, 0, 1, 0, 5, 0, 0, -64, 64);
	//	bhpg_bullet_init(obj_bullet_main, 5, 0, 0);
	//	bhpg_pattern_step();
		
	//	i3++;
	//	if (i3 > 18) { i3 = 0; }
	//	last_shot_time_3 = current_time / 1000; }
		
	//if (last_shot_time_4 + 1 / shot_per_sec_4 <= current_time / 1000) {
	//	// Second set
	//	bhpg_pattern_init(1, 0, 360 - (13 * i4), 5, 1800, 0, 0, 1, 0, 5, 0, 0, 64, 64);
	//	bhpg_bullet_init(obj_bullet_main, 5, 0, 0);
	//	bhpg_pattern_step();
		
	//	i4++;
	//	if (i4 > 18) { i4 = 0; }
	//	last_shot_time_4 = current_time / 1000; }
		
} else if (path_position == 1) {
	bhpg_pattern_step();
}

