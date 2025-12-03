// if the interior dialogue hasn't been shown once
if (!global.narration_interior_shown) {

	// prevent the player from moving to read the dialogue
	global.move = false;
	
	dialogue = ["I'm in the library.",
				"Huh? These must be Misty's pawprints on the floor.",
				"Maybe, if I follow them, they'll lead me to Misty!",
				"Goal: Follow Misty's pawprints",
	];

	text_index = 0;          // Which line we’re on
	dialogue_text = "";       // Text currently displayed
	text_speed = 2;          // Speed (frames per letter)
	char_timer = 0;          // Timer for typewriter effect
	finished = false;

	// interior dialogue is complete and is now shown once
	global.narration_interior_shown = true;
}

// the player walked back in the room and has already seen the dialogue
// prevent the player from seeing the dialogue again
else {
	instance_destroy();
}