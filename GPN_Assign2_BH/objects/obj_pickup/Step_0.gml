if (going_up) {
	distance -= vspeed;
	
	if (distance > max_dist) {
		going_up = false;
	}
} else {
	vspeed = 1.5;
}


