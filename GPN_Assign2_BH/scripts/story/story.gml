function Story() constructor {
	story_index = 0;
	stories = [];
	
	for (var i = 1; layer_exists("Story" + string(i)); i++) {
		var layer_data = layer_get_id("Story" + string(i));
		array_push(stories, layer_data);
		instance_deactivate_layer(layer_data);
	};
	
	if (StoryComplete()) {room_goto(rm_stage);};
	
	static StoryProgress = function() {
		instance_activate_layer(stories[story_index]);
		instance_deactivate_layer(stories[story_index - 1]);
		story_index++;
	};
	
	static StoryComplete = function() {
		return (story_index == array_length(stories));
	};
}