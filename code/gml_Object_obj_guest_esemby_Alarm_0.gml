myinteract = 3;
global.msc = 0;
global.typer = 5;
global.facechoice = 0;
global.faceemotion = 0;

if(global.unlocked_ralsei == 0) {
    global.unlocked_ralsei = 1;
    global.msg[0] = "Let me open the portal for you!/%%";
} else if(global.charname == "chara") {
    global.msg[0] = "This is my friend Chara!/";
    global.msg[1] = "Chara is a wonderful friend!/";
    global.msg[2] = "I hope that, whenever Chara is###not feeling well, she remembers##how loved and valued she is!/";
    global.msg[3] = "This is a test to see if the thing I thought might work actually works%%";
} else {
    
}

mydialoguer = instance_create(0, 0, obj_dialoguer);
talkedto += 1;
