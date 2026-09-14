event_inherited();
spd = 1.5;
flee_speed = 3.5;
flee_distance = 80;
var _dir = random(360);
hspeed = lengthdir_x(spd, _dir);
vspeed = lengthdir_y(spd, _dir);
change_dir_timer = room_speed * 2;
fish_value = 20;