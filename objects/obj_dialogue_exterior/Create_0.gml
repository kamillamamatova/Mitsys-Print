if (global.dialogue_rm_exterior_shown) {
    instance_destroy(); // Prevent dialogue box from appearing again
    exit;               // Stop running the rest of the Create Event
}

display_set_gui_size(683, 384);
gpu_set_texfilter(false);

global.dialogue_rm_exterior_shown = true;

// actual dialogue
dialogue = ["Whoa where am I?",
			"I guess I better find Misty and see where she ran off to.",
			"I think I saw her running off to the library.",
			"** Use the WASD or arrow keys to move Aribel **",
			"** Press shift to sprint **",
			"Goal: Find Misty in the library",
];

text_index = 0;          // Which line we’re on
dialogue_text = "";       // Text currently displayed
text_speed = 2;          // Speed (frames per letter)
char_timer = 0;          // Timer for typewriter effect
finished = false;