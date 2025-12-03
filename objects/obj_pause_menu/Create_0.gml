// Initializes globals if game controller isn't present yet
if(!variable_global_exists("music_volume")) global.music_volume = 1;
if(!variable_global_exists("sound_volume")) global.sound_volume = 1;
if(!variable_global_exists("music_on")) global.music_on = true;
if(!variable_global_exists("sound_on")) global.sound_on = true;
if(!variable_global_exists("brightness")) global.brightness = 0;

width = 64;
height = 104;

// How far the text is from the side of the actual text box
op_border = 8;

// Distance between different options
op_space = 16;

pos = 0;
window_size_pos = 0;
brightness_pos = 0;
audio_pos = 0;

// Pause menu
option[0, 0] = "Continue Game";
option[0, 1] = "Settings";
option[0, 2] = "Quit Game";

// Settings menu
option[1, 0] = "Windows Size";
option[1, 1] = "Brightness";
option[1, 2] = "Audio";
option[1, 3] = "Controls";
option[1, 4] = "Back";

// Windows Size
option[2, 0] = "x1";
option[2, 1] = "x2";
option[2, 2] = "x3";
option[2, 3] = "Back";

// Brightness
option[3, 0] = "100%";
option[3, 1] = "80%";
option[3, 2] = "60%";
option[3, 3] = "40%";
option[3, 4] = "20%";
option[3, 5] = "Back";

// Audio
option[4, 0] = "Music: On";
option[4, 1] = "Sound: On";
option[4, 2] = "Music Vol: 100%";
option[4, 3] = "Sound Vol: 100%";
option[4, 4] = "Back";

// Controls
option[5, 0] = "Back";

op_length = 0;
menu_level = 0;

width = 0;
height = 0;