/// create_text(ineraction_id, choice)
//choice = -1 if no choice, or 0=choice1 and 1=choice2
var pos_x = text_box_obj.x - (text_box_obj.sprite_width / 2) + 15;
var pos_y = text_box_obj.y - (text_box_obj.sprite_height / 2) + 15;
inst = instance_create(pos_x, pos_y, text_obj);
with (inst){ //this creates these variables in text_obj
    interaction_id = argument[0];
    message = discover_dialogue(interaction_id); //todo this breaks choice!
    message_end = array_length_1d(message) - 1; // last number in our array
    message_length = string_length(message[message_current]);
}

return inst;

