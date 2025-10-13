
function create_dialog(_messages){
	if(instance_exists(obj_dialog)) return;
	
	var _inst = instance_create_depth(0, 0, 0, obj_dialog);
	_inst.messages = _messages;
	_inst.current_message = 0;
}

char_colors = {
	"Aribel": c_navy,
	"Bluewy": c_aqua,
	"Cheshire Cat" : c_orange,
}




welcome_dialog = [
{
	name: "Bluewy",
	msg: "Press space to dialogue."
},

{
	name: "Aribel",
	msg: "It is working!"
},

{
	name: "Bluewy",
	msg: "Letss goo!"
},

{
	name: "Aribel",
	msg: "...."
},
]

ches_diag1 = [
{
	name: "Cheshire Cat",
	msg: "To continue on this journey, you need to answer this question."
}
]
