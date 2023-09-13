/// @description Insert description here
// You can write your code in this editor

if (self.seen_in_room) {
	bhpg_pattern_init(4, 60, (self.image_angle + 150), 1, 0, 0, 0, 1, 5, 1, 0, 0, 0, 0);
	bhpg_bullet_init(obj_bullet_changed, 5, 0, 0);
	bhpg_pattern_step();
	
	action_kill_object();
}






