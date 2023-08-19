// Inherit the parent event
event_inherited();

self.Die = function() {
	bhpg_pattern_step();
	
	global.score += score_given;
	instance_destroy();
}
path_start(self.path_enter, self.path_spd, path_action_stop, false);

bhpg_pattern_init(shot_amt, shot_spread, random_range(180, 360), 10, 3600, 0, 1, 1, 0, 25, 16, 16, 0, 0);
bhpg_bullet_init(obj_bullet_main, 0, 0.1, 0);