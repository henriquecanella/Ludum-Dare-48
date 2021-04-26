if (global.concluded == 1) {
	if (room == Room1) {
		global.concluded = -1;
		global.levelPassed = -1;
		room_goto(RoomWin1);
	}
	if (room == Room2) {
		global.concluded = -1;
		global.levelPassed = -1;
		room_goto(RoomWin2);
	}
	if (room == Room3) {
		global.concluded = -1;
		global.levelPassed = -1;
		room_goto(RoomWin3);
	}
	if (room == Room4) {
		global.concluded = -1;
		global.levelPassed = -1;
		room_goto(RoomWin4);
	}
	if (room == Room5) {
		global.concluded = -1;
		global.levelPassed = -1;
		room_goto(RoomWin5);
	}
}
else if (global.concluded == 0) {
	show_debug_message("pq ta aq ?");
	if (room == Room1) {
		global.concluded = -1;
		global.levelPassed = -1;
		room_goto(RoomLoose1);
	}
	if (room == Room2) {
		global.concluded = -1;
		global.levelPassed = -1;
		room_goto(RoomLoose2);
	}
	if (room == Room3) {
		global.concluded = -1;
		global.levelPassed = -1;
		room_goto(RoomLoose3);
	}
	if (room == Room4) {
		global.concluded = -1;
		global.levelPassed = -1;
		room_goto(RoomLoose4);
	}
	if (room == Room5) {
		global.concluded = -1;
		global.levelPassed = -1;
		room_goto(RoomLoose5);
	}
}