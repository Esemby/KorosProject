global.entrance = 25;
global.door_exit_id = door_exit_id;
instance_create(0, 0, obj_persistentfader);

if(door_destination=="room_area_zero")
    room_goto(room_area_zero);
    
if(door_destination=="room_area_zero_a")
    room_goto(room_area_zero_a);
    
if(door_destination=="room_area_zero_b")
    room_goto(room_area_zero_b);
    
if(door_destination=="room_area_zero_c")
    room_goto(room_area_zero_c);

if(door_destination=="room_area_zero_bar")
    room_goto(room_area_zero_bar);

if(door_destination=="room_area_zero_casino")
    room_goto(room_area_zero_casino);

if(door_destination=="room_area_zero_school")
    room_goto(room_area_zero_school);

if(door_destination=="room_area_zero_ralsei_hallway")
    room_goto(room_area_zero_ralsei_hallway);

if(door_destination=="room_area_zero_ralsei_chamber")
    room_goto(room_area_zero_ralsei_chamber);
    
if(door_destination=="room_ruins1")
    room_goto(room_ruins1);