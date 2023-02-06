

var i = 0 
repeat(buttons)  {
	
	draw_set_font(Font_main)
	draw_set_halign(fa_center)
	draw_set_color(c_black)
	
	if (menu_index == i) draw_set_color(c_maroon)
	
	draw_text(menu_x, menu_y + button_h * i, button[i]);
	i++;
}

draw_text_color(x,150,"Pick Three Characters",c_black,c_black,c_black,c_black,1)


