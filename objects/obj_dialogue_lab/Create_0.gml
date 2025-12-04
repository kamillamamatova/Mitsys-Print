if (!global.narration_monsters) {

    // prevent the player from moving to read the dialogue
    global.move = false;

    // actual dialogue
    dialogue = [
        "I better hurry up before I get consumed by the madness",
        "** Press 'R' to turns the levers **",
        "Goal: Turn all the levers to the right to open the safe",
		"All adjacent levers will also turn",
    ];

    text_index = 0;      
    dialogue_text = "";  
    text_speed = 2;      
    char_timer = 0;      
    finished = false;

    // mark narration as already shown
    global.narration_monsters = true;
}

else {
    instance_destroy();  
}