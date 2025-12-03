/// obj_gui_image_window – Draw GUI

if (!gui_is_open) exit;
if (gui_sprite == noone) exit;

var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

// How much of the GUI we allow the panel to use
var gui_margin = 0.9; // 90% of screen height/width

// Get raw sprite size (unscaled)
var spr_w = sprite_get_width(gui_sprite);
var spr_h = sprite_get_height(gui_sprite);

// Space available for JUST the image (panel minus padding & text)
var avail_w = gui_w * gui_margin - padding * 2;
var avail_h = gui_h * gui_margin - padding * 2 - 24;

// How much we *could* scale to fit in that space
var scale_w = avail_w / spr_w;
var scale_h = avail_h / spr_h;

// We don't want to zoom in beyond gui_scale, only shrink if needed
var scale = min(gui_scale, scale_w, scale_h);

// Final image size
var sw = spr_w * scale;
var sh = spr_h * scale;

// Panel size based on that
var panel_w = sw + padding * 2;
var panel_h = sh + padding * 2 + 24;

// Now this panel is guaranteed to be <= 90% of GUI in both directions,
// so centering it won't push the top offscreen.
var px = (gui_w - panel_w) * 0.5;
var py = (gui_h - panel_h) * 0.5;

// --- Background panel ---
draw_set_alpha(bg_alpha);
draw_set_color(bg_color);
draw_roundrect(px, py, px + panel_w, py + panel_h, false);

// Border
draw_set_alpha(1);
draw_set_color(border_color);
draw_roundrect(px, py, px + panel_w, py + panel_h, true);

// --- Draw the large image, centered in panel ---
var ix = px + panel_w * 0.5;
var iy = py + padding + sh * 0.5;

draw_sprite_ext(
    gui_sprite, gui_image_index,
    ix, iy,
    scale, scale,
    0,
    c_white, 1
);

// --- Close text ---
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_text(gui_w * 0.5, py + panel_h - padding, "Press ESC or Enter to step away");
