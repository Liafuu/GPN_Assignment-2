/// @description Create a new bullet

if (true) {
	self.Aim(obj_player_hitbox.id);
	bhpg_pattern_init(1, 0, shot_angle, 1, 0, 0, 0, 1, 5, 1, 0, 0, random_x, random_y);
	bhpg_bullet_init(obj_bullet_changed, 3.5, 0, 0);
	bhpg_pattern_step();
}

action_kill_object();







