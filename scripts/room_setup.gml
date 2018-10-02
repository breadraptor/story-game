///room_setup(...)
//trace("in room ", room, "via entrance ", game_runner.entrance);
if (game_runner.debug){
    if (instance_exists(collision_obj)){
        collision_obj.visible = true;
    }
    if (instance_exists(kissable_obj)){
        kissable_obj.visible = true;
    }
    if (instance_exists(interaction_obj)){
        interaction_obj.visible = true;
    }
    if (instance_exists(exit_obj)){
        exit_obj.visible = true;
    }
}
/* if (game_runner.fir){
    trace("creating player in room_setup");
    instance_create(120, 120, player_obj);
} */
/*
if (room == 0){ //bedroom
    if (game_runner.entrance == 1){
        // from stairs
        player_obj.x = 105;
        player_obj.y = 90;
    }  
}
if (room == 1){ // kitchen
    if (game_runner.entrance == 0){
        // from upstairs
       // player_obj.x = down_stairs_your_house.player_x;
        //player_obj.y = down_stairs_your_house.player_y;
    }
    if (game_runner.entrance == 1){
        // from outside
        player_obj.x = 92;
        player_obj.y = 180;
    }
}
if (room == 2){ //outside your house
    if (game_runner.entrance == 0){
        // leaving house
        player_obj.x = 129;
        player_obj.y = 152;
    }
    else if (game_runner.entrance == 1){
        // from the south
        player_obj.x = game_runner.player_x;
        player_obj.y = 177;
    }
    else if (game_runner.entrance == 2){
        // from the west
        player_obj.x = 70; 
        player_obj.y = game_runner.player_y;
    }
}
if (room == 3){ // sign area
    if (game_runner.entrance == 0){
        // down from house
        player_obj.x = game_runner.player_x;
        player_obj.y = 65;
    }
    if (game_runner.entrance == 1){
        // from left
        player_obj.x = 77;
        player_obj.y = game_runner.player_y;
        if (player_obj.y > 177){
            show_message("you fool!");
        }
    }
}
if (room == 4){ //school
    if (!game_runner.friend_talked){
        var col_obj = instance_create(210, 142, collision_obj);
        game_runner.friend_coll = col_obj; // nice variables names bro
        //col_obj.xscale = .1;
        //col_obj.yscale = .1;
        //trace(col_obj.xscale);
        var int_obj = instance_create(220, 157, interaction_obj);
        game_runner.friend_int = int_obj;
        //int_obj.xscale = .72;
        int_obj.xscale = .72;
        int_obj.yscale = .94;
        instance_create(219, 158, friend_obj);
    }
    if (game_runner.entrance == 0){
        // from house
        player_obj.x = 245;
        player_obj.y = game_runner.player_y;
    }
    if (game_runner.entrance == 1){
        // from north
        player_obj.x = game_runner.player_x;
        player_obj.y = 65;
    }
    if (game_runner.entrance == 2){
        //from inside school
        player_obj.x = 190;
        player_obj.y = 157; 
    }
}
if (room == 5){ // friend's house
    if (game_runner.entrance == 0){ // from your house
        player_obj.x = 240;
        player_obj.y = game_runner.player_y;
    }
    if (game_runner.entrance == 1){ // from school
        player_obj.x = game_runner.player_x;
        player_obj.y = 174;
    }
}
if (room == 6){ // inside school
    if (game_runner.entrance == 0){ // from outside
        player_obj.x = 159;
        player_obj.y = 179; 
        if (!game_runner.friend_talked2){
            var inst = instance_create(150, 150, transition_obj);
        }
        
    }
} */

