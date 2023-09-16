event_inherited();

// Shows healthbar
self.max_health = self.health
healthbar_width = 91;
healthbar_height = 21;

bhpg_pattern_init(1, 0, 270, 24, (345 * 24), 0, 0, 0, 0, 60, 32, 32, 0, 0);
bhpg_bullet_init(obj_bullet_splitting_trigger, 3.5, 0, 0);
