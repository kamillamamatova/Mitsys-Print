if (!global.narration_rm0) {

	// prevent the player from moving to read the dialogue
	global.move = false;
	// actual dialogue
	dialogue = ["Looks like I'm in The Call of Cthulhu book.",
				"Maybe I can find a civilian to talk to and they can help me.",
				"Goal: Talk to the civilian."
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