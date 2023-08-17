if (xdir < 0) {xm = -1;}
else if (xdir > 0) {xm = 1;}

if (instance_number(obj_foe_midboss) < 1) {instance_destroy(self)}

self.image_angle += 1 * xm;

if (self.xdir == -64 || self.xdir == 64) {
	if (last_shot_time + 1 / shot_per_sec <= current_time / 1000) {
		// First set
		bhpg_pattern_init(2, 10, ((15 * xm) * i), 5, 1800, 0, 0, 1, 0, 5, 16, 16, 0, 0);
		bhpg_bullet_init(obj_bullet_main, 5, 0, 0);
		bhpg_pattern_step();
		
		i++;
		if (i > 18) { i = 0; }
		last_shot_time = current_time / 1000;
	}
}



