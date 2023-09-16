// Inherit the parent event
event_inherited();

if (split) {
	speed -= 0.025;
	
	if (self.speed < 0) {
		bhpg_pattern_init(1, 0, 0, 14, (335 * 14), 0, 0, 1, 5, 1, 16, 16, 0, 0);
		bhpg_bullet_init(obj_bullet_split_pink, 0, 0.02, 0);
		bhpg_pattern_step();

		instance_destroy(self);
	}
}