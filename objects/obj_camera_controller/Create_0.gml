/// obj_camera_controller: Create

// Use the active camera (change [0] to [1] if your game actually uses view 1)
cam = view_camera[0];

cam_x = camera_get_view_x(cam);
cam_y = camera_get_view_y(cam);

// 0.05 = very floaty, 0.2 = snappy. 0.10–0.14 is comfy.
follow_speed = 0.12;

// Screen shake (you can ignore these if you’re not using them)
shake_mag   = 0;
shake_decay = 0.85;
