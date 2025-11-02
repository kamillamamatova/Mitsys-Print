// dialogue box for prologue

// Background box
draw_set_color(c_black);
draw_rectangle(250, 150, 750, 300, false); // (x1, y1, x2, y2)
draw_set_color(c_white);

// x1 and x2 increase to move right
// y1 and y2 increase to move down
// box's size is difference between coordinates

// Text
draw_text(270, 170, dialogue_text);