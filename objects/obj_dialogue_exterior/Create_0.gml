// if the exterior dialogue hasn't been shown once
if (!global.narration_exterior_shown) {
	
	// prevent the player from moving to read the dialogue
	global.move = false;
	
	display_set_gui_size(683, 384);
	gpu_set_texfilter(false);

	dialogue = ["I better chase after Misty and see where she ran off to.",
				"I think I saw her running off to the library.",
				"** Use the WASD or arrow keys to move Aribel **",
				"** Press shift to sprint **",
				"Goal: Find the library.",
	];

	text_index = 0;          // Which line we’re on
	dialogue_text = "";      // Text currently displayed
	text_speed = 2;          // Speed (frames per letter)
	char_timer = 0;          // Timer for typewriter effect
	finished = false;
	
	// exterior dialogue is complete
	global.narration_exterior_shown = true;
}

// the player walked back in the room and has already seen the dialogue
// prevent the player from seeing the dialogue again
else {
	instance_destroy();
}