myinteract = 3;
global.msc = 0;
global.typer = 5;
global.facechoice = 0;
global.faceemotion = 0;


if(talkedto == 0){
    global.msg[0] = "A slotmachine! people say it can have 10 different results, wanna try?/%%" 
} else if(broken == 0) {
    global.msg[0] = "You pull the lever of the slot   machine.../"    
    rand = irandom(9) 
    rand = talkedto
           if(rand == 0) {
        global.msg[1] = "You won a bill of 42 dollars and 67 cents!/"
        global.msg[2] = "Please pay it before you leave...or else.../%%"
    } else if(rand == 1) {
        global.msg[1] = "You won a rupoor! You loose 50   rupees./%%"
    } else if(rand == 2) {
        global.msg[1] = "You landed on a Bowser field, youloose all your coins/%%"
    } else if(rand == 3) {
        global.msg[1] = "You almost aligned 3 bombs!      At 3 bombs, the machine explodes/%%"
    } else if(rand == 4) {
        global.msg[1] = "you couldn't align ANY symbols,  there aren't even that many,     sheesh/%%"
    } else if(rand == 5) {
        global.msg[1] = "you got 2 of 3 cherries matched, you get a coupon!/"
        global.msg[2] = "The coupon is expired.../%%"
    } else if(rand == 6) {
        global.msg[1] = "You aligned 3 cherries and won   50 USD!/"
        global.msg[2] = "The underground does not accept  or trade USD/%%"
    } else if(rand == 7) {
        global.msg[1] = "Congrantulations! You won a free hug!/%%"
    } else if(rand == 8) {
        global.msg[1] = "777!!! You won the entire Jackpotof 0 GOLD! (Another machine won  10 minutes ago)/%%"
    } else {
        broken = 1;
        global.msg[1] = "You somehow broke the machine.../%%"
    }
} else {
    global.msg[0] = "SOMEONE broke the machine.../%%" 
}

mydialoguer = instance_create(0, 0, obj_dialoguer);
talkedto += 1;
