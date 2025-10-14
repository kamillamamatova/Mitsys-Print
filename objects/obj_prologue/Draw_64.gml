// prologue explaining Aribel and Misty

// setting the font
draw_set_font(fnt_prologue);

// setting the color of the text to white
draw_set_color(c_white);
var my_text = "On a journey to find answers, Aribel and her sidekick Misty stumble upon an enchanted forest. Something triggers Misty to go to the library, however, she's too fast and Aribel tries to catch up to her.";
var line_spacing = 16; // Adjust as needed
var max_width = 1000; // Adjust as needed

draw_text_ext(250, 350, my_text, line_spacing, max_width);
