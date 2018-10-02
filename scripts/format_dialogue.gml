var msg = argument[0];
/* var msg_length = string_length(msg);

for (var i = msg_length - 1; i > 0; i--){
    if (string_char_at(msg, i) == " "){
        msg = string_insert("#", msg, i)
        //message_length = string_length(msg);  //get the new character length for message
        break;
    }
} */

 //get the number of characters in the first message
/*var first_break = room_width/10;
var second_break = room_width/5.45;

if ((message_length > first_break) && (string_char_at(msg, 0) != ">")){ // fix printout for first line
    for (var i = first_break; i > 0; i--){
        if (string_char_at(msg, i) == " "){
            msg = string_insert("#", msg, i)
            message_length = string_length(msg);  //get the new character length for message
            break;
        }
    }
}
if ((message_length > second_break) && (string_char_at(msg, 0) != ">")){ // fix printout for first line
    for (var i = second_break; i > 0; i--){
        if (string_char_at(msg, i) == " "){
            msg = string_insert("#", msg, i)
            message_length = string_length(msg);  //get the new character length for message
            break;
        }
    }
} */
return msg; 
