// 1. Collect all levers that exist in the room
var i = 0;
with (obj_lever)
{
    other.levers[i] = id;
    index = i;  // Save index into the lever
    i++;
}

// 2. Define neighbors for the Lights-Out effect
levers[0].neighbors = [1, 3];
levers[1].neighbors = [0, 2, 4];
levers[2].neighbors = [1, 5];

levers[3].neighbors = [0, 4, 6];
levers[4].neighbors = [1, 3, 5, 7];
levers[5].neighbors = [2, 4, 8];

levers[6].neighbors = [3, 7];
levers[7].neighbors = [4, 6, 8];
levers[8].neighbors = [5, 7];


// 3. Randomize starting pattern (3 random ON)
for (var j = 0; j < 3; j++)
{
    var pick = irandom(lever_count - 1);
    with (levers[pick])
    {
        state = 1;
    }
}
