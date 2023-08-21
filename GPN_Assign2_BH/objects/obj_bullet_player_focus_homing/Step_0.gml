speed += accel;

if (instance_nearest(x, y, obj_foe) != noone) {
	var near = instance_nearest(x, y, obj_foe);
	move_towards_point(near.x, near.y, speed);
	image_angle = point_direction(x, y, near.x, near.y); 
} else {direction += curve; image_angle = direction}

