event_inherited();

// Initializes the bullet pattern
bhpg_pattern_init(1, 0, 0, 1, 0, 0, 0, 1, 0, 60, 0, 0, 0, 150);
bhpg_bullet_init(obj_boss3_summon, 5, 0, 2);

// Shows healthbar
self.max_health = self.health
healthbar_width = 91;
healthbar_height = 21;
