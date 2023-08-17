// Inherit the parent event
event_inherited();

path_start(self.path_enter, self.path_spd, path_action_stop, false);

// Initiates bullet pattern
bhpg_pattern_init(1, 0, 0, 2, 360, 0, 0, 1, 0, 14, 0, 0, 0, 0);
bhpg_bullet_init(obj_bullet_changing, 5, 0, 0);