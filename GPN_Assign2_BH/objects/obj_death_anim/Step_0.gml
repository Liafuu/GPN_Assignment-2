// If image gets created
image_xscale += 0.1;
image_yscale += 0.1;

// Once fully transparent, destroy the instance
image_alpha -= 0.05;

if (image_alpha < 0.05) {
	obj_player_hitbox.dead = true;
	obj_player_hitbox.Update();
	
	instance_destroy(self)};








