scr_depth(0, 0, 0, 0, 0);
var ang = point_direction(x,y, obj_mainchara.x, obj_mainchara.y);
if(ang >= 45 && ang < 135){
    sprite_index = usprite;
} else if(ang >= 135 && ang < 225) {
    sprite_index = lsprite;
} else if(ang >= 225 && ang < 315) {
    sprite_index = dsprite;
} else {
    sprite_index = rsprite;
}