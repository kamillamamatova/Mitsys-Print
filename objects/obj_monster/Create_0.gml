event_inherited();

//Movement AI 
// Create a path resource instance (you can reuse the same one)
monster_path = path_add(); 

// Set an alarm to control how often the path recalculates (e.g., every 1 second)
alarm[0] = 60;

// Cleansed system 
state = "normal";
image_blend = c_red;
