// Bullet setup

speed += accel;
direction += curve;
image_angle = direction;

if (instance_number(obj_foe_boss_2) < 1) {instance_destroy(self)}

if (last_shot_time + 1 / shot_per_sec <= current_time / 1000) {
	bhpg_pattern_init(1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0);
	bhpg_bullet_init(obj_bullet_split_giant, 0, 0, 0);
	bhpg_pattern_step();
		
	last_shot_time = current_time / 1000;
}




