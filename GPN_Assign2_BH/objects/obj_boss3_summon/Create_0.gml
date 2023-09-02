// Bullet setup
image_speed = 0;
curve = 0;

damage = 1;
pierce = false;
friendly = false;

// Shooting setup

shot_per_sec = 20;
last_shot_time = 0;
last_shot_time_2 = 0;

i = 0;

self.Aim = function(player) {
	target = player;
	
	// Set the shot angle
	shot_angle = point_direction(self.x, self.y, target.x + random_range(2, 7), target.y + random_range(2, 7))
}


