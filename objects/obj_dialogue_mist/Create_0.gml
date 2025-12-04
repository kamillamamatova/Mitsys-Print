if (!global.narration_mist) {

	// prevent the player from moving to read the dialogue
	global.move = false;
	// actual dialogue
	dialogue = ["** Press 'E' to make the civilians follow you. **",
				"Goal: Get the civilians safely through the mist to the other side."
	];

	text_index = 0;          // Which line we’re on
	dialogue_text = "";       // Text currently displayed
	text_speed = 2;          // Speed (frames per letter)
	char_timer = 0;          // Timer for typewriter effect
	finished = false;
	
	global.narration_rm0 = true;
}

else {
	instance_destroy();
}