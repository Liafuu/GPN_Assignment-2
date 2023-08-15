event_inherited();

path_start(self.path_enter, self.path_spd, path_action_stop, false);

// Initializes the bullet pattern
bhpg_pattern_init(1, 0, 270, 6, 1800, 0, 2, 1, 1, 50, 16, 16, 0, 0);
bhpg_bullet_init(obj_foe_bullet, 4, 0, 0);


