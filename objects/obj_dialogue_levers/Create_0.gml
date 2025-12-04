if (!global.narration_levers) {

	// prevent the player from moving to read the dialogue
	global.move = false;
	
	// actual dialogue
	dialogue = ["Oh no I better hurry up before I get consumed by the madness.",
				"Looks like I have to turn the correct levers to escape.",
				"** Press 'R' to turn the levers.",
				"** All adjacent levers will turn also.",
				"Goal: Turn all levers turned to the right."
	];

	text_index = 0;          // Which line we’re on
	dialogue_text = "";      // Text currently displayed
	text_speed = 2;          // Speed (frames per letter)
	char_timer = 0;          // Timer for typewriter effect
	finished = false;
	
	global.narration_levers = true;
	global.move = true;
}

else {
	instance_destroy();
}