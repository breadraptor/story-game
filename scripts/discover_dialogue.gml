///discover_dialogue(interaction_obj)
// takes an interaction object and, taking into account the day and other observations,
// returns the correct numbered Dialogue Experience (from dialogue)
var int_obj = argument[0];

if (int_obj == dude_interact){
    if (game_runner.day == 0){
        if (game_runner.dude_friendship == 0){
            return dialogue(int_obj, 0);
        }
    }
}

else {
    trace("int obj not found");
    return "[ERROR] I don't know who that is. (discover_dialogue)"; //todo this doesnt work
}
