/// player tick
show_debug_message(player_obj.sprite_index)
show_debug_message(x)

if (x > xprevious){
    if (sprite_index != player_spr_right){
       sprite_index = player_spr_right
        image_speed = 0.15 //todo see if this is possible in code        
    }
}
else if (x < xprevious){
    if (sprite_index != player_spr_left){
        sprite_index = player_spr_left
        image_speed = 0.15 //todo see if this is possible in code
    }
}
else if (y > yprevious){
    if (sprite_index != player_spr_down){
        sprite_index = player_spr_down
        image_speed = 0.15 //todo see if this is possible in code    
    }
}
else if (y < yprevious){
    if (sprite_index != player_spr_down){
        sprite_index = player_spr_up
        image_speed = 0.15 //todo see if this is possible in code
    }
}
else {
    image_speed = 0;
    image_index = 0;
}
