
if (room == room_area1)
    room_goto(room_area_zero);

if (room == room_area_zero) {
    audio_stop_all();
    room_goto(room_area1);
}