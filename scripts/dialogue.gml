/// dialogue(...)
//if (argument[0] == 100004){
/* BEDROOM */
var int_obj = argument[0];
if (int_obj == tv){
    msg[0] = "It's an old TV and a gaming console. The disc inside says 'Animal Crossing'.";
    //msg[0] = "It's an old TV and a gaming console. The disc inside says 'Animal Crossing'. It's an old TV and a gaming console. The disc inside says 'Animal Crossing'.";
    msg[1] = "This disc is very tiny.";
}
else if (argument[0] == computer){
    if (argument[1] == 0){
        msg[0] = "Incorrect password. Guess you didn't know what";

        computer.object_index.blocked = true;
    }
    else if (argument[1] == 1){
        msg[0] = "Access granted!";
        msg[1] = "The background is some weird meme about kermit the frog.";
        msg[2] = "The icons are a mess of photoshop files and pirated movies.";
    }
    else {
        if (computer.object_index.blocked){
            msg[0] = "It froze.";
        }
        else {
            msg[0] = "It's password protected.";
            msg[1] = "The hint is 'you know what ;) hehe'";
            msg[2] = ">Try 'penis' #Try 'boobs'";            
        }
    }
}
else if (int_obj == dude_interact){
    if (argument[1] == 0){
        msg[0] = "Well hey there buttercup!";
    }
    else {
        msg[0] = "Test";
    }
    
}
else if (argument [0] == 100009){
    msg[0] = "The twin bed has chip crumbs on the duvet.";
    msg[1] = "There's a cell phone next to the pillow.";
}
/* KITCHEN */
else if (argument[0] == 100020){
    msg[0] = "Cheese sticks, strawberries, and diet shasta.";
}
else if (argument[0] == 100026){
    msg[0] = "Kraft mac n cheese.";
}
else if (argument[0] == 100027){
    msg[0] = "There's a note. It says: 'Dont forget to water the plants! Love you! -Mom'";
}
/* OUTSIDE HOUSE */
else if (argument[0] == 100034){
    msg[0] = "It says, 'Oh shit not you again!'";
}
else if (argument[0] == 100039){
    msg[0] = "They look kind of dead.";
}
/* EMPTY FIELD */
else if (argument[0] == 100049){
    msg[0] = "It says, 'Hydrangia Park'.";
    msg[1] = "Beneath that is etched, 'RIKU <3 CLOUD xP muahaha'";
}
/* SCHOOL OUTSIDE */
else if (argument[0] == 100066){
    msg[0] = "Hydrangia Middle School";
    msg[1] = "GO HORSHOECRABS!";
}
else if (argument[0] == game_runner.friend_int){
    if (game_runner.debug){
        msg[0] = "go ahead nancy";
        game_runner.friend_talked = true;
    }
    else {
        if (game_runner.d_box == -1){
            game_runner.d_box++;
            game_runner.friend_talked = true;
            msg[0] = "HEY RIKU! Jeez, what took you so long?";
            msg[1] = ">Sorry I'm late #Who are you?";    
        }
        else if (game_runner.d_box == 0){
            game_runner.d_box++;
            if (argument[1] == 0){
                game_runner.path = 0;
                msg[0] = "Yeah yeah... so did you study for today's test?";
                msg[1] = ">What test? #Yeah I did"
            }
            else if (argument[1] == 1){
                game_runner.path = 1;
                game_runner.suspect = true;
                msg[0] = "Haha, what do you mean?";
                msg[1] = "You don't know me?";
                msg[2] = ">No, sorry #Err, forget about it"
            }
        }
        else if (game_runner.d_box == 1){
            game_runner.d_box++;
            if (game_runner.path == 0){ // faking it path
                if (argument[1] == 0){
                    msg[0] = "Oh my god, the history test!! It's gonna kill meeeee";
                    msg[1] = "I texted you to remind you and everything! Let's go inside."
                }
                else if (argument[1] == 1){
                    msg[0] = "Ugh you're so smart. It's not fair.";
                    msg[1] = "Let's go inside. Don't guard your paper too closely...";
                }      
            }
            if (game_runner.path == 1){ // owning up path
                if (argument[1] == 0){
                    msg[0] = "... you're scaring me dude. Are you okay?";
                    msg[1] = "Let's just go inside.";
                }
                else if (argument[1] == 1){
                    msg[0] = "Were you just fucking with me?";
                    msg[1] = "Anyway, hope this history test goes okay. Ha ha...";
                }
            }
        } 
    }

}
/* OUTSIDE OTHER HOUSE */
else if (argument[0] == 100082){
    msg[0] = "It's locked.";
}
else if (argument[0] == 100079){
    msg[0] = "It says, 'Welcome!'";
}
else if (argument[0] == 100083){
    msg[0] = "Yikes. Kind of a mess in there.";
    msg[1] = "A cat comes to the window as you look in.";
}
/* INSIDE SCHOOL */
else if (argument[0] == 100092){
    if (game_runner.d_box == -1){
        game_runner.d_box++;
        if (game_runner.suspect){
            msg[0] = "About what you said earlier...";
            msg[1] = "Were you just messing around? Or do you have a player now?"
            msg[2] = ">I am playing a game #I don't know what's going on";
        }
        else {
            msg[0] = "Phew, glad that's over.";
            msg[1] = "So, you've been acting kinda funny today...";
            msg[2] = ">I am playing a game #I don't know what's going on";
        }
    }
    else if (game_runner.d_box == 0){
        game_runner.d_box++;
        if (argument[1] == 0){
            msg[0] = "I knew it! Oh my god, I've never known anybody that's had this happen.";
            msg[1] = "Supposedly it's more common for teenagers."
            msg[2] = "So you're looking down on all this? Do you have super powers? Can you stop time?"
        }
        else if (argument[1] == 1){
            msg[0] = "Stop avoiding the question! Ugh, either you have a concussion or you have a player.";
            msg[1] = "Just humor me. Try stopping time or something.";
        }
    }
    else if (game_runner.d_box == 1){
        game_runner.friend_talked2 = true;
        game_runner.d_box++;
        msg[0] = "Did you pause?!";
        msg[1] = ">Yes #I dunno how";
    }
    else if (game_runner.d_box == 2){
        game_runner.d_box++;
        if (argument[1] == 0){
            msg[0] = "Whaaat. I didn't notice anything. That's so creepy.";
        }
        else if (argument[1] == 1){
            msg[0] = "Well that's lame. Did you try ESC? Maybe you do have a concussion.";
        }
        msg[1] = "But if you're not my friend, then who are you?";
        msg[2] = ">I'm just me. #I still don't know who YOU are.";
    }
    else if (game_runner.d_box == 3){
        game_runner.d_box++;
        if (argument[1] == 0){
            msg[0] = ". . .";
        }
        else if (argument[1] == 1){
            msg[0] = "Riku always calls me Cloud. It's just our nicknames. You wouldn't understand.";
        }
        msg[1] = "So what happens now?";
        msg[2] = ">I play until it's over, I guess. #You tell me.";
    }
    else if (game_runner.d_box == 4){
        game_runner.d_box++;
        if (argument[1] == 0){
            msg[0] = "Until it's over?! What does that mean!";
            msg[1] = "Couldn't you have picked someone else to control instead of my best friend?";
            msg[2] = "Who do you think you are, actually! Sir! Madam!?";
            msg[3] = "Almighty god who controls people like Sims... ?";
            msg[4] = "Whatever you are, you should give Riku back.";
            msg[5] = ">Ok #No";
        }
        else if (argument[1] == 1){
            msg[0] = "Not to be rude, but it'd be cool if you just left, so I could get Riku back.";
            msg[1] = ">Ok #No";
        }
    }
    else if (game_runner.d_box == 5){
        game_runner.d_box++;
        if (argument[1] == 0){
            msg[0] = "Ok, whenever you're ready. Sooner than than later preferrably.";
            msg[1] = "I hope you didn't bomb that test.";
        }
        else if (argument[1] == 1){
            msg[0] = "Wha - you JERK!";
            msg[1] = "Whatever, go take a long walk off a short pier asshole!";
            msg[2] = "WAIT... don't do that. DON'T DO THAT"
        }
    }
    else if (game_runner.d_box == 6){
        msg[0] = "Could you give her back?";
    }
}
else if (argument[0] == 100094){
    if (game_runner.suspect){
        if ((100094).object_index.blocked){
            msg[0] = "Oh, uh hey...";
            msg[1] = "(Why didn't you say she was behind me!?)";
        }
        else {
            msg[0] = "Heard she's being controlled...";
            (100094).object_index.blocked = true;
        }
    }
    else {
        if ((100094).object_index.blocked){
            msg[0] = "(Why is she still hanging around?)"
        }
        else {
            msg[0] = "How'd you do?"
            (100094).object_index.blocked = true;
        }
    }

}

else {
    msg[0] = "[ERROR] Uh oh. Oh jeez. Please tell Nancy that this interaction is busted.";
}

return msg;
