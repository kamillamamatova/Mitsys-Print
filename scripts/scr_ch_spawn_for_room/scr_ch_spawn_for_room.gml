/// scr_ch_spawn_for_room(_rm)
// Returns a struct { x, y } for the spawn position in the given room.

function scr_ch_spawn_for_room(_rm)
{
		
    switch (_rm)
    {
        case rm_0:
            return { x: 538, y: 806 };

        case rm_A:
            return { x: 537, y: 639 };

        case rm_B:
            return { x: 417, y: 464 };

        case rm_C:
            return { x: 530, y: 630 };

        case rm_D:
            return { x: 544, y: 640 };
			
		case rm_E:
            return { x: 544, y: 640 };
			
		case rm_F:
            return { x: 544, y: 640 };
			
		case rm_G:
            return { x: 544, y: 640 };
			
		case rm_H:
            return { x: 544, y: 640 };

        case rm_wrong:
            return { x: 400, y: 600 };
			
		case rm_final:
            return { x: 1046, y: 1665 };

        default:
		
            return { x: 400, y: 400 };
    }
}
