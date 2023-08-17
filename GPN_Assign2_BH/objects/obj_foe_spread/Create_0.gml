event_inherited();

path_start(self.path_enter, self.path_spd, path_action_stop, false);

// Initializes the bullet pattern
bhpg_pattern_init(shot_amt, shot_spread, 270, 6, 1800, 0, 1, 1, 10, 25, 16, 16, 0, 0);
bhpg_bullet_init(obj_bullet_main, 4, 0, 0);


