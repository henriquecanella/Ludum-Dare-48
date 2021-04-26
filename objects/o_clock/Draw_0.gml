camera_x = camera_get_view_x(view_camera[0]);
camera_y = camera_get_view_y(view_camera[0]);

draw_set_font(fontScore);

if (global.cameraUpdated == false) {
	draw_text_transformed(camera_x+2,camera_y+2,"Score: " + string(global.levelScore),0.5,0.5,0);
	draw_text_transformed(camera_x+2,camera_y+10,"Time: "+ string(round(timer / room_speed)),0.5,0.5,0);
}
if (global.levelPassed == 1) {
	global.concluded = 1;
}
else if (global.levelScore == global.maxScore) {	
	global.concluded = 1;
}
else if (global.levelPassed == 0) {
	global.concluded = 0;
}