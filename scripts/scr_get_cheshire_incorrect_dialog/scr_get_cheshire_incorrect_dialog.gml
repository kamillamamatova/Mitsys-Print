/// @func scr_get_cheshire_incorrect_dialog(_remaining)
/// @desc Returns a dialog array for the Cheshire cat based on remaining tries
/// @param _remaining  how many attempts the player has left before reset

function scr_get_cheshire_incorrect_dialog(_remaining)
{
    var _messages;

    switch (_remaining)
    {
     
        case 2:
		
		  _messages = [
                { name: "Cheshire", msg: "First wrong door. Curious choice." }
            ];
        break;
          

        case 1:
		
		  _messages = [
                { name: "Cheshire", msg: "Twice mistaken. Are you sure you know where you’re going?" }
            ];
        break;

        case 0:
        default:
            _messages = [
                { name: "Cheshire", msg: "Three wrong turns! How delightful. Back to the beginning you go." }
            ];
        break;
    }

    return _messages;
}
