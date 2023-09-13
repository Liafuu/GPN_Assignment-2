// Inherit the parent event
event_inherited();

dist += speed;
if (dist > max_dist && shotstart == false) {
	speed = 0;
	shotstart = true;
}

if (shotstart) {
	if (last_shot_time + 1 / shot_per_sec <= current_time / 1000) {
		// First set of bullets
		bhpg_pattern_init(1, 0, 25 * i, 5, 360*5, 0, 0, 1, 30, 4, 16, 16, 0, 0);
		bhpg_bullet_init(obj_bullet_player_bombs, 5, 0.085, 1);
		bhpg_pattern_step();
		
		// Second set of bullets
		bhpg_pattern_init(1, 0, -25 * i, 5, 360*5, 0, 0, 1, 30, 4, 16, 16, 0, 0);
		bhpg_bullet_init(obj_bullet_player_bombs, 5, 0.085, 1);
		bhpg_pattern_step();
		
		i++;
		last_shot_time = current_time / 1000;
		if (i == 3) { instance_destroy(self); }
	}
}