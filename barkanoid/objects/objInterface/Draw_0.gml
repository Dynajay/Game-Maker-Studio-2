draw_set_font(alphaFont);
draw_set_color(c_white);

draw_text(camera_get_view_x(view_camera[0]) + (room_width/2), camera_get_view_y(view_camera[0]), string((room_width - 64)/96));

if (objBall.y < 1000){draw_sprite(sprite5, image_index, objPlayerRed.x, camera_get_view_y(view_camera[0]) + 768 - 16);}

//draw_text(objBall.x, objBall.y, string(objBall.direction));