draw_set_font(fontScore);
draw_text_transformed(camera_get_view_x(view_camera[0])+2,camera_get_view_y(view_camera[0])+2,"Score: " + string(global.levelScore),0.5,0.5,0);
draw_text_transformed(camera_get_view_x(view_camera[0])+2,camera_get_view_y(view_camera[0])+10,"Time: "+ string(round(timer / room_speed)),0.5,0.5,0);

if (global.levelPassed == 1) {
	draw_text_transformed(camera_get_view_x(view_camera[0])+60,camera_get_view_y(view_camera[0])+45,"You Win",1,1,0);
}
else if (global.levelScore == global.maxScore) {
		draw_text_transformed(camera_get_view_x(view_camera[0])+60,camera_get_view_y(view_camera[0])+45,"You Win",1,1,0);
}
else if (global.levelPassed == 0) {
	draw_text_transformed(camera_get_view_x(view_camera[0])+60,camera_get_view_y(view_camera[0])+45,"You Lose",1,1,0);

}