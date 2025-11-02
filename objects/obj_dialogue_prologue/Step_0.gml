if (!finished) {
    // Typewriter effect
    char_timer++;
	
    if (char_timer >= text_speed && string_length(dialogue_text) < string_length(dialogue[text_index])) {
        dialogue_text = string_copy(dialogue[text_index], 1, string_length(dialogue_text) + 1);
        char_timer = 0;
    }

    // When done typing and player presses a key, advance
    if (string_length(dialogue_text) == string_length(dialogue[text_index])) {
        if (keyboard_check_pressed(vk_enter)) {
            if (text_index < array_length(dialogue) - 1) {
                text_index++;
                dialogue_text = "";
                finished = false;
            } else {
                instance_destroy(); // remove dialogue box after last line
				if (keyboard_check_pressed(vk_enter))
					{
						room_goto(rm_exterior);
					}
            }
        }
    }
}