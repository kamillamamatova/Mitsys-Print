/// obj_LibraryDoorPuzzle – Draw GUI

var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

// If no UI is open, do nothing
if (!viewing_window && !entering_code) exit;

// Darken the whole screen once, shared by both UIs
draw_set_alpha(0.7);
draw_set_color(c_black);
draw_rectangle(0, 0, gui_w, gui_h, false);
draw_set_alpha(1);

// Common settings
var old_halign = draw_get_halign();
var old_valign = draw_get_valign();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/////////////////////////////////////
// 1. WINDOW VIEW OVERLAY
/////////////////////////////////////
if (viewing_window)
{
    // Panel behind the window image
    var panel_w = gui_w * 0.6;
    var panel_h = gui_h * 0.6;
    var panel_x1 = (gui_w - panel_w) * 0.5;
    var panel_y1 = (gui_h - panel_h) * 0.5;
    var panel_x2 = panel_x1 + panel_w;
    var panel_y2 = panel_y1 + panel_h;

    // Panel background
    draw_set_color(make_color_rgb(20, 20, 28));
    draw_rectangle(panel_x1, panel_y1, panel_x2, panel_y2, false);

    // Border
    draw_set_color(make_color_rgb(120, 90, 60));
    draw_rectangle(panel_x1 + 2, panel_y1 + 2, panel_x2 - 2, panel_y2 - 2, true);

    // Draw the interior sprite centered in the panel
    if (instance_exists(current_window_id))
    {
        var spr = current_window_id.interior_sprite;
        if (spr != noone)
        {
            var cx = gui_w * 0.5;
            var cy = gui_h * 0.5;
            draw_sprite(spr, 0, cx, cy);
        }
    }

    // Title + hint
    draw_set_color(c_white);
    draw_text(gui_w * 0.5, panel_y1 - 28, "Library Window");
    draw_text(gui_w * 0.5, panel_y2 + 20, "Press 'Q' to step away");
}

/////////////////////////////////////
// 2. CODE ENTRY / PADLOCK OVERLAY
/////////////////////////////////////
if (entering_code)
{
    var box_w = 320;
    var box_h = 180;
    var bx1 = gui_w * 0.5 - box_w * 0.5;
    var by1 = gui_h * 0.5 - box_h * 0.5;
    var bx2 = bx1 + box_w;
    var by2 = by1 + box_h;

    // Panel background
    draw_set_color(make_color_rgb(20, 20, 28));
    draw_rectangle(bx1, by1, bx2, by2, false);

    // Border
    draw_set_color(make_color_rgb(160, 120, 80));
    draw_rectangle(bx1 + 2, by1 + 2, bx2 - 2, by2 - 2, true);

    // Title
    draw_set_color(c_white);
    draw_text(gui_w * 0.5, by1 + 24, "Door Lock");

    // Build a 4-slot display from the code_input
    var shown = code_input;
    var needed = 4 - string_length(shown);
    // Fill remaining with underscores
    for (var i = 0; i < needed; i++) {
        shown += "_";
    }

    // Draw the 4 boxes
    var slots = 4;
    var slot_w = 48;
    var gap = 12;
    var total_w = slots * slot_w + (slots - 1) * gap;
    var start_x = gui_w * 0.5 - total_w * 0.5;
    var slot_y = (by1 + by2) * 0.5;

    for (var s = 0; s < slots; s++)
    {
        var sx1 = start_x + s * (slot_w + gap);
        var sx2 = sx1 + slot_w;
        var sy1 = slot_y - slot_w * 0.5;
        var sy2 = slot_y + slot_w * 0.5;

        // Box
        draw_set_color(make_color_rgb(40, 35, 30));
        draw_rectangle(sx1, sy1, sx2, sy2, false);
        draw_set_color(make_color_rgb(200, 170, 120));
        draw_rectangle(sx1 + 2, sy1 + 2, sx2 - 2, sy2 - 2, true);

        // Digit / underscore
        var ch = string_char_at(shown, s + 1);
        draw_set_color(c_white);
        draw_text((sx1 + sx2) * 0.5, (sy1 + sy2) * 0.5, ch);
    }

    // Controls hint
    draw_set_color(c_ltgray);
    draw_set_halign(fa_center);
    draw_text(gui_w * 0.5, by2 - 24, "Type digits, ENTER to confirm, 'Q' to cancel");
}

// Restore alignment
draw_set_halign(old_halign);
draw_set_valign(old_valign);
