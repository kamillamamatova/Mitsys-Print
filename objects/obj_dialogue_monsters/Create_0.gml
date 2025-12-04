// narration for monsters

if (!global.narration_monsters) {

    // prevent the player from moving to read the dialogue
    global.move = false;

    // actual dialogue
    dialogue = [
        "Oh my.. there's so many monsters and rubble everywhere",
		"I see another civilian on the other side!",
		"I should go talk to him.",
        "But how will I get across?",
		"Oh I can use the cleansing mist to help me!",
        "** Use the cleansing mist to get through, avoiding the monsters and rubble",
        "** Hold 'C' to create the cleansing mist **",
        "Goal: Escape the monsters using the cleansing mist and talk to the civilian."
    ];

    text_index = 0;      
    dialogue_text = "";  
    text_speed = 2;      
    char_timer = 0;      
    finished = false;

    // mark narration as already shown
    global.narration_monsters = true;
	global.move = true;
}

else {
    instance_destroy();  
}