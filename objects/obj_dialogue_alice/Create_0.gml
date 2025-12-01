// actual dialogue
dialogue = ["I've seemed to stumble upon the Alice and Wonderland book.",
			"Looks like I'm stuck in a maze.",
			"Maybe I can find clues to escape from one of these doors...",
			"Goal: Escape the maze."
];

text_index = 0;          // Which line we’re on
dialogue_text = "";       // Text currently displayed
text_speed = 2;          // Speed (frames per letter)
char_timer = 0;          // Timer for typewriter effect
finished = false;