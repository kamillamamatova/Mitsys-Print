// Uses these variables to draw the background image
var _camx = camera_get_view_x(view_camera[0]);
var _camy = camera_get_view_y(view_camera[0]);

// Parallax
// 1 means the original camera value is being kept
var _p = 1;

draw_sprite_tiled(bg_testing, 0, _camx * _p, _camy * _p);
draw_sprite_tiled(bg_testing, 1, _camx * .0025, _camy * .0025);