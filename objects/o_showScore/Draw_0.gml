draw_set_font(fontTransition);

if (global.midTransitionAnim == true) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text_transformed(camera_get_view_x(view_camera[0])+60,camera_get_view_y(view_camera[0])+yStartScore,global.levelScore,0.5,0.5,0);
	draw_text_transformed(camera_get_view_x(view_camera[0])+80,camera_get_view_y(view_camera[0])+yStart,"/",0.5,0.5,0);
	draw_text_transformed(camera_get_view_x(view_camera[0])+100,camera_get_view_y(view_camera[0])+yStartTotal,global.levelRequirement,0.5,0.5,0);
	draw_set_halign(fa_left);
	draw_set_valign(fa_left);
}