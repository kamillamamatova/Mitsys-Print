// Directional movement with arrow keys or WASD

if (instance_exists(obj_dialog)) exit; // Condition to stop player/npc from moving

right_key = keyboard_check(vk_right) || keyboard_check(ord("D"));
left_key = keyboard_check(vk_left) || keyboard_check(ord("A"));
up_key = keyboard_check(vk_up) || keyboard_check(ord("W"));
down_key = keyboard_check(vk_down) || keyboard_check(ord("S"));

//shift for increased speed if shift is pressed
if (keyboard_check(vk_shift)) {move_spd +=4}


// Gets xspd and yspd
xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

// For collision
if place_meeting(x + xspd, y, obj_wall){
	xspd = 0;
}
if place_meeting(x, y + yspd, obj_wall){
	yspd = 0;
}
// Moves the player
x += xspd;
y += yspd;

// Sets sprite
mask_index = sprite[DOWN]

if yspd == 0{
	if xspd > 0{ face = RIGHT;}
	if xspd < 0{ face = LEFT;}
}

if xspd > 0 && face == LEFT{ face = RIGHT};
if xspd < 0 && face == RIGHT{ face = LEFT};

if xspd = 0{
	if yspd > 0{ face = DOWN;}
	if yspd < 0{ face = UP;}
}

if yspd > 0 && face == UP{ face = DOWN};
if yspd < 0 && face == DOWN{ face = UP};

sprite_index = sprite[face];

// Animates
if xspd == 0 && yspd == 0{
	image_index = 0;
	
}

//reset move speed
move_spd = 2;

// Depth
depth = -bbox_bottom;

