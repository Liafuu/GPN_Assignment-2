if (going_up) {
	distance -= vspeed;
	
	if (distance > max_dist) {
		going_up = false;
	}
} else if (!going_up) {
	vspeed = 1.5;
	distance += vspeed;
	
	if (distance > max_dist_2) {
		vspeed = 0;
	}
}

image_angle += 4

