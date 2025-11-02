dialogue = [
    "It’s a quiet morning in Celestine Woods...",
    "Aribel looks around, unsure of where Misty went.",
    "Suddenly, a soft voice calls out from the distance..."
];

text_index = 0;          // Which line we’re on
dialogue_text = "";       // Text currently displayed
text_speed = 2;          // Speed (frames per letter)
char_timer = 0;          // Timer for typewriter effect
finished = false;