myinteract = 3;
global.msc = 0;
global.typer = 5;
global.facechoice = 0;
global.faceemotion = 0;


global.msg[0] = scr_gettext("chara_001"); // *.../
global.msg[1] = scr_gettext("chara_002"); // *Greetings./
global.msg[2] = scr_gettext("chara_003"); // *I am Chara, but you already know that, don’t you?/
global.msg[3] = scr_gettext("chara_004"); // *Despite only being here for a short while, I have seen the love and joy you bring to everyone./
global.msg[4] = scr_gettext("chara_005"); // *My birthday wish for you Robin: To be happy, healthy, and to receive the love and joy from everyone./
global.msg[5] = scr_gettext("chara_006"); // *Happy Birthday Robin./%%
global.msg[6] = scr_gettext("chara_007");

mydialoguer = instance_create(0, 0, obj_dialoguer);
talkedto += 1;
