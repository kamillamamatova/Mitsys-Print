function create_dialog(_messages){
	if (instance_exists(obj_dialog)) return;
	
	var _inst = instance_create_depth(0, 0, 0, obj_dialog);
	_inst.messages = _messages;
	_inst.current_message =0;
}


char_colors = {
	"Aribel" : c_aqua,
	"Cheshire" : c_orange,
	"Lily" : c_white,
	"Daffodil" : c_yellow,
	"Cosmo" : c_fuchsia,
	"Tulip" : c_red,
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
	msg: "I have hands but no arms, I can run but never walk."
}
]

rmB_dialog = [
{
	name: "Cheshire",
	msg: "Follow the guilty to the correct door."
}
]

rmB_dialog_lily = [
{
	name: "Lily",
	msg: "Cosmo did it!"
}
]

rmB_dialog_daffodil = [
{
	name: "Daffodil",
	msg: "It wasn't me!"
}
]

rmB_dialog_cosmo = [
{
	name: "Cosmo",
	msg: "Lily is lying!"
}
]

rmB_dialog_tulip = [
{
	name: "Tulip",
	msg: "Daffodil is lying!"
}

]

rmC_dialog = [
{
	name: "Cheshire",
	msg: "This strange life often requires one to think outside of their walls."
},
{
	name: "Cheshire",
	msg:"Only then will you reach into the far upper left corners of success."
}
]

rmD_dialog = [
{
	name: "Cheshire",
	msg: "That's all I got for now unfortunately."
},
{
	name: "Cheshire",
	msg:"My creators want to thank you for checking out what they got for now!"
}

]

rm0_dialog = [
{ 
	name: "Cheshire",
	msg: "Welcome to the Ambiguous Maze.."
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
}

]