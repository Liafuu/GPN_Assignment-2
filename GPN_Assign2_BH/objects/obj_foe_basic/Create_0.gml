event_inherited();

self.health = 20;
self.OnDamage = function(bullet) {
	self.health -= obj_bullet.damage;
	instance_destroy(bullet);
	if (self.health <= 0) {
		instance_destroy();
	}
}




