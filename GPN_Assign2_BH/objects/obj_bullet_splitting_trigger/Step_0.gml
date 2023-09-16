// Inherit the parent event
event_inherited();

if (split) {
	speed -= 0.028;
	
	if (self.speed < 0) {
		bhpg_pattern_init(1, 0, 0, 14, (335 * 14), 0, 0, 1, 5, 1, 13, 13, 0, 0);
		bhpg_bullet_init(obj_bullet_main, 0, 0.02, 0);
		bhpg_pattern_step();

		instance_destroy(self);
	}
}