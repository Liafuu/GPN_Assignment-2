event_inherited();

path_start(self.path_enter, self.path_spd, path_action_stop, false);

// Initiates bullet pattern
bhpg_pattern_init(shot_amt, 30, 180, 2, 400, 1, 2, 1, 30, 12, 16, 16, 0, 0);
bhpg_bullet_init(obj_foe_bullet, 2, -0.10, 0);
