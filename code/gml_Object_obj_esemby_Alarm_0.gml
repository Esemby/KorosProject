myinteract = 3;
global.msc = 0;
global.typer = 5;
global.facechoice = 0;
global.faceemotion = 0;

global.msg[0] = scr_gettext("esemby_001"); 
global.msg[1] = scr_gettext("esemby_002");
global.msg[2] = scr_gettext("esemby_003");

if(talkedto > 0)
    global.msg[0] = scr_gettext("esemby_004");

mydialoguer = instance_create(0, 0, obj_dialoguer);
talkedto += 1;
