// Set up box visuals
var box_x = 150;
var box_y = 150;
var box_width = 750;
var box_height = 150;

draw_set_font(fnt_prologue_box);
draw_set_alpha(0.7);
draw_set_color(c_black);
draw_rectangle(box_x, box_y, box_x + box_width, box_y + box_height, false);
draw_set_alpha(1);

draw_set_color(c_white);
draw_rectangle(box_x, box_y, box_x + box_width, box_y + box_height, true);

draw_set_font(fnt_prologue_box);
draw_set_color(c_white);

// Padding around the text
var padding = 25;

// Draw text that wraps to fit inside the box
draw_text_ext(box_x + padding, box_y + padding, dialogue_text, -1, box_width - padding * 2);

// Optional: "Press enter" hint
if (string_length(dialogue_text) == string_length(dialogue[text_index])) {
    draw_text(box_x + box_width - 150, box_y + box_height - 30, "[ENTER]");
}
