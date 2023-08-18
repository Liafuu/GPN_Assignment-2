// Inherit the parent event
event_inherited();

i = 0;
i2 = 0;

self.Aim = function(player) {
	target = player;
	
	// Set the shot angle
	shot_angle = point_direction(self.x, self.y, target.x + random_range(2, 7), target.y + random_range(2, 7))
}