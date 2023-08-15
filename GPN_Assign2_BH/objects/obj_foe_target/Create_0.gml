event_inherited();

// Aiming at target player
shot_per_sec = 3;
last_shot_time = 0;

self.Aim = function(player) {
	target = player;
	shot_angle = point_direction(self.x, self.y, target.x, target.y)
}

path_start(self.path_enter, self.path_spd, path_action_stop, false);

