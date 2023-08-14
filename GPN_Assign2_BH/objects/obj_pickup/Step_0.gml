/// @description Insert description here
// You can write your code in this editor

self.y -= self.yspeed

if (true) {
	if (last_fall_time + fall_timer > (current_time / 1000)) {
		self.y += (self.yspeed * 2);
		last_fall_time = current_time / 1000;
	}
}




