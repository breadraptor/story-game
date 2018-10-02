///move_room()
//trace("leaving so soon?", instance_place(x, y, exit_obj));
if (!interacting){ //this check might be unnecessary
    game_runner.player_x = x; //are we still using these?
    game_runner.player_y = y;
    
    var ex = instance_place(x, y, exit_obj); // theres gotta be an exit_obj because we pressed space in one to get here... right?
    room_goal = ex.room_goal;
    game_runner.previous_room = room;
    if (room_goal != -1){
        room_goto(room_goal);
    }
    else {
        trace("looks like that exit isn't hooked up yet. ID ", instance_place(x, y, exit_obj));
    }
    
    /*
    if (ex == down_stairs_your_house){
        room_goal = ex.room_goal;
    }
    else if (ex == up_stairs_your_house) {
        
    }

    else if (instance_place(x, y, exit_obj) == exit_your_house){
        room_goto(2);
        game_runner.entrance = 0;
    }
    else if (instance_place(x, y, exit_obj) == entrance_your_house){
        room_goto(1);
        game_runner.entrance = 1;
    } 
    else if (instance_place(x, y, exit_obj) == down_from_house){
        // go down to sign area
        room_goto(3);
        game_runner.entrance = 0;
    }
    /* else if (instance_place(x, y, exit_obj) == 100039){
        // go left to other house
        room_goto(5);
        game_runner.entrance = 0;
    } 
    else if (instance_place(x, y, exit_obj) == up_from_field){
        // go up to house
        room_goto(2);
        game_runner.entrance = 1;
    }
    else if (instance_place(x, y, exit_obj) == left_from_field){
        //go left to school
        room_goto(4);
        game_runner.entrance = 0;
    }
    else if (instance_place(x, y, exit_obj) == right_from_school){
        //go right to field
        room_goto(3);
        game_runner.entrance = 1;
    }
    else if (instance_place(x, y, exit_obj) == up_from_school){
        //go north to other house
        room_goto(5);
        game_runner.entrance = 1;
    }
    else if (instance_place(x, y, exit_obj) == down_from_other_house){
        // go south to school
        room_goto(4);
        game_runner.entrance = 1;
    }
    else if (instance_place(x, y, exit_obj) == right_from_other_house){
        // go right to your house
        room_goto(2);
        game_runner.entrance = 2;
    }
    else if (instance_place(x, y, exit_obj) == left_from_your_house){
        // go left to other house
        room_goto(5);
        game_runner.entrance = 0;
    }
    else if (instance_place(x, y, exit_obj) == enter_school){
        if (game_runner.friend_talked){
            room_goto(6);
            game_runner.entrance = 0;
        }
    }
    else if (instance_place(x, y, exit_obj) == exit_school){
        if (game_runner.friend_talked2){
            room_goto(4);
            game_runner.entrance = 2;
        }
    } */

}

