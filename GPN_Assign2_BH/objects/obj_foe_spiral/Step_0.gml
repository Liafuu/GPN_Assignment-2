// Makes enemies shoot
if (path_stop && self.path_position == 1) {
	bhpg_pattern_step();
} else if (!path_stop) {
	bhpg_pattern_step();
}

