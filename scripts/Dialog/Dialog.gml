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
	"Civilian" : c_purple,
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

dock_dialog = [
{
	name: "Civilian",
	msg: "I... I can’t escape! Everytime I leave by boat..."
},
{
	name: "Civilian",
	msg: "I end up here! Again!"
},
{
	name: "Aribel",
	msg: "What is this odd feeling coming from the city?"
},
{
	name: "Civilian",
	msg: "It is coming from that malevolent creature, Cthulhu!"
},
{
	name: "Civilian",
	msg: "His psychic powers make people mad and then into monsters..."
},

{
	name: "Civilian",
	msg: "You seem to just have come in contact with the city..."
},
{
	name: "Civilian",
	msg: "Try and --- Argh!"
},
{
	name: "Civilian",
	msg: "And find the artifact I left behind... It can repel and cleanse the madness"
},
{
	name: "Civilian",
	msg: "Made by Dr . Henry Armitage... before he subdued to the madness..."
},

{
	name: "Civilian",
	msg: "Urgh Arrgh"
},
]