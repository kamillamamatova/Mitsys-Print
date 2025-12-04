//var bar_x = 20;
//var bar_y = 20;
//var bar_w = 200;
//var bar_h = 20;

//// Background
//draw_set_color(c_black);
//draw_rectangle(bar_x, bar_y, bar_x + bar_w, bar_y + bar_h, false);

//// Fill amount
//var fill = bar_w * (madness_percent / 100);

//draw_set_color(c_red);
//draw_rectangle(bar_x, bar_y, bar_x + fill, bar_y + bar_h, false);

//// Text
//draw_set_color(c_white);
//draw_text(bar_x, bar_y - 18, "Madness: " + string(round(madness_percent)) + "%");
// GUI size
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

// Bar placement (RIGHT SIDE)
var bar_w = 220;
var bar_h = 22;

var bar_x = gui_w - bar_w - 30; // 30px from the right edge
var bar_y = 30;                 // top padding

// Background
draw_set_color(c_black);
draw_rectangle(bar_x, bar_y, bar_x + bar_w, bar_y + bar_h, false);

// Fill amount
var fill = bar_w * (madness_percent / 100);

draw_set_color(c_red);
draw_rectangle(bar_x, bar_y, bar_x + fill, bar_y + bar_h, false);

// Text (centered above bar)
draw_set_color(c_white);
draw_text(bar_x + bar_w/2 - 40, bar_y - 18, 
    "Madness: " + string(round(madness_percent)) + "%");
