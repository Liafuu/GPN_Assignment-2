event_inherited();

shot_per_sec = 3;

last_shot_time = 0;
last_shot_time_2 = 0;
last_shot_time_3 = 0;

i = 0;
i2 = 0;
b = 0;

// Shows healthbar
self.max_health = self.health
healthbar_width = 91;
healthbar_height = 21;

self.Aim = function(player) {
	target = player;
	
	// Set the shot angle
	shot_angle = point_direction(self.x, self.y, target.x + random_range(2, 7), target.y + random_range(2, 7))
}
