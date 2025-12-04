//Movement AI 
// Create a path resource instance (you can reuse the same one)
monster_path = -1;

if (global.monsters_go) {
    monster_path = path_add();
    alarm[0] = 60;

    state = "normal";
    image_blend = c_red;
    speed = 1; // IMPORTANT — must move!
}
else {
    state = "idle";
    speed = 0; // frozen until dialogue finished
}