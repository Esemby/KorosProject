global.entrance = 25;
global.door_exit_id = door_exit_id;
instance_create(0, 0, obj_persistentfader);

if(door_destination == room_area_zero && door_exit_id == "marker_x") {
    audio_stop_all();
    audio_play_sound(mus_bndbyfrnship,10,true);
}

if(door_destination == room_ruins1)
    audio_stop_all();

room_goto(door_destination);