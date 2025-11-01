if(keyboard_check_pressed(vk_escape)){
	// Flips each time the user presses esc
	global.is_paused = !global.is_paused;
	
	if(global.is_paused){
		global.is_paused = true;
		
		// Hides and freezes gameplay
		layer_set_visible("Instances", false);
		
		// Pauses the audio and freezes all logic except this controller
		audio_pause_all();
		instance_deactivate_all(true);
		
		// Shows pause menu overlay
		if(!instance_exists(obj_pause_menu)){
			instance_create_layer(0, 0, "GUI", obj_pause_menu);
		}
	}
	else{
		global.is_paused = false;
		
		// Resumes logic and audio
		instance_activate_all();
		audio_resume_all();
		
		// Removes the pause menu overlay
		with (obj_pause_menu) instance_destroy();
	}
}