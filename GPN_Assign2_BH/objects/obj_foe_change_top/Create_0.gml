// Inherit the parent event
event_inherited();

path_start(self.path_enter, self.path_spd, path_action_stop, false);

// Initiates bullet pattern
bhpg_pattern_init(1, 0, 70, 3, (45 * 3), 0, 0, 1, 0, 15, 0, 0, 0, 0);
bhpg_bullet_init(obj_bullet_changing_fast, 5, 0, 0);