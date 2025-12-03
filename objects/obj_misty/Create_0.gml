// misty's paths

// if Misty is in rm_prologue
if (room == rm_prologue) {
	path_start(pt_prologue, 3, path_action_stop, false);
}

// if Misty is in rm_exterior
if (room == rm_exterior) {
	path_start(pt_misty, 2.25, path_action_stop, false);
}