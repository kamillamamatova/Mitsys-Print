// drawing the GUI for rm_exterior

var box_width  = 310;
var box_height = 60;
var box_x = (display_get_gui_width() - box_width) / 2; // centers it horizontally
var box_y = 50; // adjust for vertical position (top area)

draw_set_alpha(1);
draw_set_color(c_black);
draw_rectangle(box_x, box_y, box_x + box_width, box_y + box_height, false);

draw_set_color(c_white);
draw_rectangle(box_x, box_y, box_x + box_width, box_y + box_height, true);

draw_set_font(fnt_exterior);

// Padding around the text
var padding = 2;

// Draw text that wraps to fit inside the box
draw_text_ext(box_x + padding, box_y + padding, dialogue_text, -1, box_width - padding * 2);

// Optional: "Press enter" hint
if (string_length(dialogue_text) == string_length(dialogue[text_index])) {
    draw_text(box_x + box_width - 60, box_y + box_height - 20, "[ENTER]");
}