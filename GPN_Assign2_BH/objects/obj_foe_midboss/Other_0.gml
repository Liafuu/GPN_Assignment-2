// Drops a heart and disappears when outside of the room
if (seen_in_room) {
	life_pickup = instance_create(self.x, self.y, obj_pickup)
	life_pickup.image_xscale = 4;
	life_pickup.image_yscale = 4;
	
	ScoreCheck();
	instance_destroy(self);
}

