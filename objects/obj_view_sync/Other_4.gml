/// Force a fixed viewport, keep per-room camera from editor

// --- constants ---
var VIEWPORT_W = 1024;
var VIEWPORT_H = 768;

// --- get the room's editor-defined camera ---
var cam  = view_camera[0];
var camW = camera_get_view_width(cam);   // as set in Room Editor
var camH = camera_get_view_height(cam);  // as set in Room Editor

// 1) DO NOT change the camera size (we keep camW/camH from editor)

// 2) Fix the game window (viewport) to 1024×768
window_set_size(VIEWPORT_W, VIEWPORT_H);
window_center();

// 3) Render resolution: match the application surface to the camera
//    (GameMaker will scale this to the 1024×768 window)
if (surface_exists(application_surface)) {
    surface_resize(application_surface, camW, camH);
}

// 4) GUI space — choose ONE of these depending on what you want:

// a) GUI matches CAMERA (UI anchored to world units – good for pixel UI)
display_set_gui_size(camW, camH);

// b) GUI matches VIEWPORT (UI anchored to the fixed window size)
// display_set_gui_size(VIEWPORT_W, VIEWPORT_H);
