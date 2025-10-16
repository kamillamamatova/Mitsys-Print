if (instance_number(object_index) > 1) {
       instance_destroy();
       exit; // Prevents further code in the Create Event from running
   }

input_key = vk_space;
can_talk = false;
