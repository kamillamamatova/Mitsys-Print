function create_dialog(_messages){
	if (instance_exists(obj_dialog)) return;
	
	var _inst = instance_create_depth(0, 0, 0, obj_dialog);
	_inst.messages = _messages;
	_inst.current_message =0;
}


char_colors = {
	"Aribel" : c_aqua,
	"Cheshire" : c_orange
}

laugh_cat = [
{ 
	name: "Cheshire",
	msg: "Heh heh heh."
}
]
rmA_dialog = [
{
	name: "Cheshire",
	msg: "You are lucky time is not of the essence."
}
]

rmB_dialog = [
{
	name: "Cheshire",
	msg: "Not even the sun lays to enter my maze."
}
]

rm0_dialog = [
{ 
	name: "Cheshire",
	msg: "Welcome to the Ambigous Maze.."
},

{ 
	name: "Cheshire",
	msg: "To leave, you must go through the right door in each room..."
},

{ 
	name: "Cheshire",
	msg: "If you pick the wrong door, you will know...(Cackle, Cackle)"
},

{ 
	name: "Cheshire",
	msg: "Make the wrong decision twice...and you will be back to where you started"
},

{ 
	name: "Cheshire",
	msg: "But don't worry, I'll help you out... "
},

{ 
	name: "Cheshire",
	msg: "(Tee hee hee.)"
},

{ 
	name: "Cheshire",
	msg: "First clue..."
},

{ 
	name: "Cheshire",
	msg: "Let the eyes of the maze choose the door..."
},
]