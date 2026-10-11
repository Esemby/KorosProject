myinteract = 3;
global.msc = 0;
global.typer = 5;
global.facechoice = 0;
global.faceemotion = 0;


if(talkedto == 0) {
    global.msg[0] = scr_gettext("esemby_001");  // Hello Koro!/
    global.msg[1] = scr_gettext("esemby_002"); // As you can see, we're hard at    work!/
    global.msg[2] = scr_gettext("esemby_003"); // Send codeword salmon so I know   you read this :3/%%
}


if(talkedto == 1 || talkedto >=4)
    global.msg[0] = scr_gettext("esemby_004"); // That's right, codeword salmon :3/%%
    
if(talkedto == 2)
    global.msg[0] = scr_gettext("esemby_005"); // That's right, codeword salmon :3/%%
if(talkedto == 3)
    global.msg[0] = scr_gettext("esemby_006"); // That's right, codeword salmon :3/%%


mydialoguer = instance_create(0, 0, obj_dialoguer);
talkedto += 1;
