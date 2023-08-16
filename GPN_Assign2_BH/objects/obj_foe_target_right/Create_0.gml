event_inherited();

// Aiming at target player
shot_per_sec = 3;
last_shot_time = 0;

self.Aim = function(player) {
	target = player;
	
	// Randomly set the bullet spawns to a certain x and y position
	random_x = random_range(-16, 16);
	random_y = random_range(-16, 16);
	
	// Set the shot angle
	shot_angle = point_direction(self.x, self.y, target.x + random_range(-3, 5), target.y + random_range(-3, 5))
}

path_start(self.path_enter, self.path_spd, path_action_stop, false);

