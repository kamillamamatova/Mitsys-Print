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
	"Dr. Henry" : c_maroon,
}

global.char_portraits = {
	"Aribel" : spr_portrait_aribel,
	"Cheshire" : spr_portrait_cheshire,
	"Lily" : spr_portrait_lily,
	"Daffodil" : spr_portrait_daffodil,
	"Cosmo" : spr_portrait_cosmo,
	"Tulip" : spr_portrait_tulip,
	"Civilian" : spr_portrait_civilian,
	"Dr. Henry" : spr_portrait_scientist,
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
    msg: "Made by Dr . Henry Armitage... before his lab got consumed by the madness..."
},

{
    name: "Civilian",
    msg: "Urgh Arrgh",
	msg: "** Walk over the artifact to pick it up. **"
},

{	name: "Civilian",
	msg: "Goal: Find the artifact and exit.",
	msg: "Press 'C' to activate a cleansing pulse that expands around you"
}
]

global.mist_dialog = [
{
    name: "Dr Henry",
    msg: "I see you are free enough from the mist to use my Madness Cleansing artifact"
},
{
    name: "Dr Henry",
    msg: "Please get everyone here safe!"
},
]

global.monster = [
{
	name: "Civilian",
	msg: "I see you have the Madness Cleansing artifact!"
},
{
	name: "Civilian",
	msg: "We could really use your help!"
},
{
	name: "Civilian",
	msg: "We are trapped by these monsters and the Madness Mist!"
},
{
	name: "Civilian",
	msg: "If we touch it, we will turn into one of those monsters..."
},
{
	name: "Abigail",
	msg: "Oh no! I will be glad to help!"
},
{
	name: "Civilian",
	msg: "Thank you! The artifact should be able to momentaneously cleanse the mist..."
},
{
	name: "Civilian",
	msg: "We are trying to reach Dr. Henry to retrive his Second Artifact!"
},
]

global.mist_dialog2 = [
{
    name: "Dr. Henry",
    msg: "You did it!"
},
{
    name: "Dr. Henry",
    msg: "I see one of my artifacts has been of great help..."
},
{
    name: "Dr. Henry",
    msg: "I am trying to reach my second artifact..."
},
{
    name: "Dr. Henry",
    msg: "One that will end all of this chaos!"
},
{
    name: "Dr. Henry",
    msg: "Unfortunately..."
},
{
    name: "Dr. Henry",
    msg: "I had to evacuate my lab due to the high concentration of madness mist inside"
},
{
    name: "Dr. Henry",
    msg: "The concentration is so high, the artifact you carry will not aid you...",
    msg: "Unfortunately , I had to evacuate my lab due to the high concentration of madness mist inside"
},
{
    name: "Dr. Henry",
    msg: "The concentration is so high, the artifact you carry will not aid you in any way..."
},
{
    name: "Dr. Henry",
    msg: "However, you will still be able to withstand longer than any of us in there... "
},
{
    name: "Dr. Henry",
    msg: "Please go in there and open the safe where the complimenting artifact is..."
},
{
    name: "Aribel",
    msg: "I got this, count on me!"
},
{
    name: "Dr. Henry",
    msg: "To open the safe all levers must be turned to the right...",
    msg: "To open the safe all levers must be activated..."
},
{
    name: "Dr. Henry",
    msg: "Good luck!",
},
]