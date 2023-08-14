event_inherited();

self.shot_per_sec = 2;
self.last_shot_time = 0;

self.health = 20;
self.OnDamage = function(bullet) {
	self.health -= obj_bullet.damage;
	instance_destroy(bullet);
	if (self.health <= 0) {
		instance_destroy();
	}
}




