// explaining the rules of Misty's Print and controls

// setting the font
draw_set_font(fnt_prologue);

// setting the color of the text to white
draw_set_color(c_yellow);

// goal
var goal = "Goal: Solve the puzzles found in each of the 4 levels (books) to find Misty and escape the library.";

// controls
var controls = "Play in a 3rd POV as Aribel, and press the arrow keys or WASD to navigate";

// line space between each line
var line_spacing = 35;

// max width to wrap text
var max_width = 630;

// actually drawing the text
draw_text_ext(200, 240, goal, line_spacing, max_width);

draw_text_ext(200, 380, controls, line_spacing, max_width);

draw_text(350, 530, "(Press enter to continue)");