// Inherit the parent event
event_inherited();

i++;
if (i > 30) {
	bhpg_pattern_init(1, 0, 0, 5, 1800, 0, 0, 1, 5, 1, 32, 32, 0, 0);
	bhpg_bullet_init(obj_bullet_target, 0, -0.02, 0);
	bhpg_pattern_step();
	
	bhpg_pattern_init(1, 0, 0, 10, 3600, 0, 0, 1, 5, 1, 16, 16, 0, 0);
	bhpg_bullet_init(obj_bullet_split_pink, 0, 0.01, 0);
	bhpg_pattern_step();

	instance_destroy(self);
}