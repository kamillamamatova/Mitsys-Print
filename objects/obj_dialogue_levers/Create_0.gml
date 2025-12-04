if (!global.narration_levers) {

	// prevent the player from moving to read the dialogue
	global.move = false;
	// actual dialogue
	dialogue = ["Levers",
				"Goal: Escape the monsters using the cleansing mist and get to the other size"
	];

	text_index = 0;          // Which line we’re on
	dialogue_text = "";       // Text currently displayed
	text_speed = 2;          // Speed (frames per letter)
	char_timer = 0;          // Timer for typewriter effect
	finished = false;
	
	global.narration_levers = true;
	global.move = true;
}

else {
	instance_destroy();
}