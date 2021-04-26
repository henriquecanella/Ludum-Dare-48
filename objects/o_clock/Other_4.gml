show_debug_message("entrou aq!!!!!!!!!!!");
show_debug_message("entrou aq!!!!!!!!!!!");
show_debug_message("entrou aq!!!!!!!!!!!");

if (room == Room1) {
	global.levelTimer = room_speed * 50 ;
}
if (room == Room2) {
	global.levelTimer = room_speed * 40;
}
if (room == Room3) {
	global.levelTimer = room_speed * 35;
}
if (room == Room4) {
	global.levelTimer = room_speed * 30;
}
if (room == Room5) {
	global.levelTimer = room_speed * 30;
}

show_debug_message(timer);
show_debug_message(global.concluded);
timer = global.levelTimer;