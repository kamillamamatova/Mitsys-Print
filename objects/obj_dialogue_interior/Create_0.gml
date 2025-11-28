// actual dialogue
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