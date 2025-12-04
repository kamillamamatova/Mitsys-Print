if (!global.narration_mist) {

	// prevent the player from moving to read the dialogue
	global.move = false;
	// actual dialogue
	dialogue = ["I see another civilian on the other side!",
				"I should help these civilians get across the mist.",
				"** Press and spam 'E' to make the civilians follow you. **",
				"** Avoid the rubble and use the cleansing mist to help get through.",
				"Goal: Get the civilians safely through the mist to the other side."
	];

	text_index = 0;          // Which line we’re on
	dialogue_text = "";       // Text currently displayed
	text_speed = 2;          // Speed (frames per letter)
	char_timer = 0;          // Timer for typewriter effect
	finished = false;
	
	global.narration_mist = true;
	global.move = true;
}

else {
	instance_destroy();
}