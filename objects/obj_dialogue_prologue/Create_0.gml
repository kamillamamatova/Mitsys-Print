// dialogue for prologue

if (instance_number(obj_dialogue_prologue) == 0) {
    instance_create_layer(0, 0, "Instances", obj_dialogue_prologue);
}

// actual dialogue
dialogue = ["The forest had always been Aribel's quiet place.",
			"When she was little, she and her mother used to walk these trails, reading stories beneath the old maple trees.",
			"Now, years later, only the wind remembered their voices.",
			"Aribel sighs softly.",
			"\"Come on, Misty... just a little further.\"",
			"Suddenly, Misty freezes and without warning, Misty darts off into the forest.",
			"\"Misty! Wait!\"",
			"Aribel's heart pounds.",
			"\"She's all I have left of Mom. Please, don't run off!\"",
			"Aribel sprints after her, chasing the sound of fading pawsteps through the forest.",			
];

text_index = 0;          // Which line we’re on
dialogue_text = "";       // Text currently displayed
text_speed = 2;          // Speed (frames per letter)
char_timer = 0;          // Timer for typewriter effect
finished = false;