event_inherited();

// Initializes the bullet pattern
bhpg_pattern_init(shot_amt, shot_spread, 270, 1, 0, 0, 0, 1, 0, 10, 0, 0, 0, 0);
bhpg_bullet_init(obj_bullet_main, 5, 0, 0);

// Shows healthbar
self.max_health = self.health
healthbar_width = 91;
healthbar_height = 21;
