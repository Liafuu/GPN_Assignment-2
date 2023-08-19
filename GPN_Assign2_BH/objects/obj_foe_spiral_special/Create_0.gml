event_inherited();

path_start(self.path_enter, self.path_spd, path_action_stop, false);

// Initiates bullet pattern
bhpg_pattern_init(shot_amt, shot_spread, 180, 3, 1080, 1, 2, 1, 30, 12, 16, 16, 0, 0);
bhpg_bullet_init(obj_bullet_spiral, 2, -0.10, 0);
