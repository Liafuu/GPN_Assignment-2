event_inherited();

self.health = 4;
self.OnDamage = function(bullet) {
	self.health -= obj_bullet.damage;
	if (self.health <= 0) {
		instance_destroy();
	}
}




