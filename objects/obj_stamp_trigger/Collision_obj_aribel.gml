/// obj_stamp_trigger – Collision with obj_aribel

if (has_stamped) exit; // don’t stamp twice from the same trigger
has_stamped = true;

// Create the persistent floor stamp instance
var s = instance_create_layer(target_x, target_y, "Instances", obj_floor_stamp);

// Tell it what to draw and where
s.stamp_sprite = stamp_sprite;
s.stamp_x = target_x;
s.stamp_y = target_y;

instance_destroy();


