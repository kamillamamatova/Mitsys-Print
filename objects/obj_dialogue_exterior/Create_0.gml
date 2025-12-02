if (global.dialogue_rm_exterior_shown) {
	instance_destroy();
    exit;
}

display_set_gui_size(683, 384);
gpu_set_texfilter(false);

// actual dialogue
dialogue = ["I better chase after Misty and see where she ran off to.",
			"I think I saw her running off to the library.",
			"** Use the WASD or arrow keys to move Aribel **",
			"** Press shift to sprint **",
			"Goal: Find Misty in the library",
];

global.dialogue_rm_exterior_shown = true;

text_index = 0;          // Which line we’re on
dialogue_text = "";       // Text currently displayed
text_speed = 2;          // Speed (frames per letter)
char_timer = 0;          // Timer for typewriter effect
finished = false;