// obj_room_shadow — Draw End (world space, after instances)
var cam = view_camera[0];
var vx  = camera_get_view_x(cam);
var vy  = camera_get_view_y(cam);
draw_sprite(spr_lib_interior_shade, 0, vx, vy); // position over the current view