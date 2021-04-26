  
/// @description
show_debug_overlay(true);


#macro cam view_camera[0]
#macro view_w camera_get_view_width(view_camera[0])
#macro view_h camera_get_view_height(view_camera[0])

//aspect_ratio = display_get_width()/display_get_height();
aspect_ratio = 16/9;
if (aspect_ratio > 1.8) {
	aspect_ratio = 16/9;
}

view_height= 90;
view_width=round(view_height*aspect_ratio);
 
if(view_width & 1) view_width++;
if(view_height & 1) view_height++;

max_window_scale = min(floor(display_get_width()/view_width),floor(display_get_height()/view_height));

if(view_height * max_window_scale == display_get_height()){
    max_window_scale--;
}

window_scale = max_window_scale;

window_set_size(view_width*window_scale,view_height*window_scale);
alarm[0]=1;

surface_resize(application_surface,view_width*window_scale,view_height*window_scale);

