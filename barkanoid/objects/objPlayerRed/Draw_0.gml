draw_circle(x, y, playerReach * 16, true);
draw_sprite(objPlayerRed, image_index, x, y);

draw_set_font(alphaFont);
draw_set_color(c_white);
draw_text(x + 32, y - 32, string(canHasBall) + " : " + string(hasBall));