/// @description Insert description here
// You can write your code in this editor

right_key = keyboard_check(vk_right) || keyboard_check(ord("D"));
left_key = keyboard_check(vk_left) || keyboard_check(ord("A"));
up_key = keyboard_check(vk_up) || keyboard_check(ord("W"));
down_key = keyboard_check(vk_down) || keyboard_check(ord("S"));


x_speed = (right_key - left_key) * moveSpeed;
y_speed = (down_key - up_key) * moveSpeed;

x += x_speed;
y += y_speed;

x += xspeed;
y += yspeed;