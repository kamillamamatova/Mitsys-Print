function create_dialog(_messages){
	if (instance_exists(obj_dialog)) return;
	
	var _inst = instance_create_depth(0, 0, 0, obj_dialog);
	_inst.messages = _messages;
	_inst.current_message =0;
}


global.char_colors = {
	"Aribel" : c_purple,
	"Cheshire" : c_fuchsia,
	"Lily" : c_white,
	"Daffodil" : c_yellow,
	"Cosmo" : c_orange,
	"Tulip" : c_red,
	"Civilian" : c_aqua,
}

global.char_portraits = {
	"Aribel" : spr_portrait_aribel,
	"Cheshire" : spr_portrait_cheshire,
	"Lily" : spr_portrait_lily,
	"Daffodil" : spr_portrait_daffodil,
	"Cosmo" : spr_portrait_cosmo,
	"Tulip" : spr_portrait_tulip,
	"Civilian" : spr_portrait_civilian,
}

global.laugh_cat = [
{ 
	name: "Cheshire",
	msg: "Heh heh heh."
}
]

global.rmA_dialog = [
{
	name: "Cheshire",
	msg: "I have hands but no arms, I can run but never walk."
}
]

global.rmB_dialog = [
{
	name: "Cheshire",
	msg: "Follow the guilty to the correct door, but heed that only one flower speaks the truth."
}
]

global.rmB_dialog_lily = [
{
	name: "Lily",
	msg: "The Cosmo is truthful!"
}
]

global.rmB_dialog_daffodil = [
{
	name: "Daffodil",
	msg: "The Tulip always lies."
}
]

global.rmB_dialog_cosmo = [
{
	name: "Cosmo",
	msg: "Tulip did it!"
}
]

global.rmB_dialog_tulip = [
{
	name: "Tulip",
	msg: "Lily may be a liar but I know she didn't do it!"
}

]

global.rmC_dialog = [
{
	name: "Cheshire",
	msg: "This strange life often requires one to think outside of their walls."
},
{
	name: "Cheshire",
	msg:"Only then will you reach into the far upper left corners of success."
}
]



global.rm0_dialog = [
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


global.rmD_dialog = [

{ 
	name: "Cheshire",
	msg: "At least one sign utters truth, and at least another utters lies..."
},
{ 
	name: "Cheshire",
	msg: "Inspect their claims to find your way."
},




]


global.rm_D_red = [


{ 
	name: "Red",
	msg: "One of the other signs is false"
},

]
//Correct Path
global.rm_D_blue = [


{ 
	name: "Blue",
	msg: "My door leads to an incorrect way"
},

]

global.rm_D_yellow = [


{ 
	name: "Yellow",
	msg: "The red sign is true"
},

]


////////////


global.rm_E_dialog = [

{ 
	name: "Cheshire",
	msg: "Must I repeat myself?"
},


{ 
	name: "Cheshire",
	msg: "At least one sign utters truth, and at least another utters lies..."
},
{ 
	name: "Cheshire",
	msg: "Inspect their merits to find your way."
},




]


global.rm_E_red = [


{ 
	name: "Red",
	msg: "The yellow sign precedes the true path"
},

]

global.rm_E_blue = [


{ 
	name: "Blue",
	msg: "This sign and the red sign lead to incorrect paths"
},

]

//correct

global.rm_E_yellow = [


{ 
	name: "Yellow",
	msg: "All three signs lead to incorrect paths"
},

]


////////////


global.rm_F_dialog = [

{ 
	name: "Cheshire",
	msg: "..."
},


{ 
	name: "Cheshire",
	msg: "At least one sign utters truth, and at least another utters lies..."
},
{ 
	name: "Cheshire",
	msg: "The third can be either trutful or dishonest, in case that wasn't clear."
},




]

//correct
global.rm_F_red = [


{ 
	name: "Red",
	msg: "This sign precedes the true path."
},

]

global.rm_F_blue = [


{ 
	name: "Blue",
	msg: "..."
},

]

global.rm_F_yellow = [


{ 
	name: "Yellow",
	msg: "The red sign precedes the true path"
},

]

////////////


global.rm_G_dialog = [

{ 
	name: "Cheshire",
	msg: "..."
},


{ 
	name: "Cheshire",
	msg: "'At least one of the signs tells you the truth, at least one lies"
},

]


global.rm_G_red = [


{ 
	name: "Red",
	msg: "The yellow sign is true."
},

]

//correct
global.rm_G_blue = [


{ 
	name: "Blue",
	msg: "The truthful sign precedes the correct path."
},

]

global.rm_G_yellow = [


{ 
	name: "Yellow",
	msg: "The red sign is telling the truth."
},

]

////////////


global.rm_H_dialog = [

{ 
	name: "Cheshire",
	msg: "..."
},

{ 
	name: "Cheshire",
	msg: "How have you made it this far?"
},


{ 
	name: "Cheshire",
	msg: "'At least one of the signs tells you the truth, at least one lies."
},

]


global.rm_H_red = [


{ 
	name: "Red",
	msg: "The correct path is not next to the yellow sign"
},

]
// correct
global.rm_H_blue = [


{ 
	name: "Blue",
	msg: "I am as truthful as the yellow sign"
},

]

global.rm_H_yellow = [


{ 
	name: "Yellow",
	msg: "The correct path is next to the blue sign."
},

]







global.dock_dialog = [
	{ name: "Civilian", msg: "I... I can't escape!" },
]