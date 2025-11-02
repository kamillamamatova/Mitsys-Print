dialogue = [
    "It’s a quiet morning in Celestine Woods...",
    "Aribel looks around, unsure of where Misty went.",
    "Suddenly, a soft voice calls out from the distance...",
	"Goal: Solve the puzzles found in each of the 4 levels (books) to find Misty and escape the library.",
	"Play in a 3rd POV as Aribel, and press the arrow keys or WASD to navigate",
];

text_index = 0;          // Which line we’re on
dialogue_text = "";       // Text currently displayed
text_speed = 2;          // Speed (frames per letter)
char_timer = 0;          // Timer for typewriter effect
finished = false;