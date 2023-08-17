/// @description Override

// Misc
friendly = true;
focus = false;


// Shot cool down
shot_per_sec = 15;
last_shot_time = 0;


self.Aim = function() {
	if (instance_number(obj_foe) > 0) { 
		target = obj_foe;
		shot_angle = point_direction(self.x, self.y, target.x, target.y)
	} else { shot_angle = 270; }
}