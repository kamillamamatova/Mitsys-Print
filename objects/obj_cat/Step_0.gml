/* Directional movement with arrow keys or WASD

right_key = keyboard_check(vk_right) || keyboard_check(ord("D"));
left_key = keyboard_check(vk_left) || keyboard_check(ord("A"));
up_key = keyboard_check(vk_up) || keyboard_check(ord("W"));
down_key = keyboard_check(vk_down) || keyboard_check(ord("S"));

// Getting x and y speed
x_speed = (right_key - left_key) * moveSpeed;
y_speed = (down_key - up_key) * moveSpeed;

// Moves the player
x += x_speed;
y += y_speed;