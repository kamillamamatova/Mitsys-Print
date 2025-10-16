// prologue explaining Aribel and Misty

// setting the font
draw_set_font(fnt_prologue);

// setting the color of the text to white
draw_set_color(c_yellow);

// text
var my_text = "On a journey to find answers, Aribel and her cat Misty stumble upon an enchanted forest. Something triggers Misty to go to the library, however, she's too fast. Aribel must catch up to Misty before she loses her.";

// line space between each line
var line_spacing = 35;

// max width to wrap text
var max_width = 630;

// actually drawing the text
draw_text_ext(200, 290, my_text, line_spacing, max_width);

draw_text(350, 530, "(Press enter to continue)");