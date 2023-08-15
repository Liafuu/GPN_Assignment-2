#macro WAVE_DURA 30

function Level() constructor {
	wave_index = 0;
	waves = [];
	wave_timer = WAVE_DURA;
	
	for (var i = 1; layer_exists("Wave" + string(i)); i++) {
		var layer_data = layer_get_id("Wave" + string(i));
		array_push(waves, layer_data);
		instance_deactivate_layer(layer_data);
	};
	
	static Update = function() {
		wave_timer -= DT;
		
		if (instance_number(obj_foe) == 0 || wave_timer <= 0) {
			if (Complete()) {
				if (instance_number(obj_foe) == 0) {}
			} else { SendWave() }
		}
	}
	
	static SendWave = function() {
		instance_activate_layer(waves[wave_index]);
		wave_index++;
		wave_timer = WAVE_DURA;
	};
	
	static Complete = function() {
		return (wave_index == array_length(waves));
	}

}