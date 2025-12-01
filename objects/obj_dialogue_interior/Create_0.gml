if (global.dialogue_rm_interior_shown) {
    instance_destroy(); // Prevent dialogue box from appearing again
    exit;               // Stop running the rest of the Create Event
}

// actual dialogue
dialogue = ["I'm in the library.",
			"Huh? These must be Misty's pawprints on the floor.",
			"Maybe, if I follow them, they'll lead me to Misty!",
			"Goal: Follow Misty's pawprints",
];

global.dialogue_rm_interior_shown = true;

text_index = 0;          // Which line we’re on
dialogue_text = "";       // Text currently displayed
text_speed = 2;          // Speed (frames per letter)
char_timer = 0;          // Timer for typewriter effect
finished = false;