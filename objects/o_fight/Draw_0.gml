
var i = 0 
repeat(buttons)  {
	
	draw_set_font(Font_main)
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	
	if (menu_index == i) draw_set_color(c_maroon)
	
	draw_text(menu_x, menu_y + button_h * i, button[i]);
	i++;
}




//drawing player stuff
draw_text_color(x,150,string(global.current_char),c_white,c_white,c_white,c_white,1)
if (global.current_char = "Human"){
	draw_sprite(spr_H,0,x,y-75)	
}
if (global.current_char = "Robot"){
	draw_sprite(spr_R,0,x,y-75)	
}
if (global.current_char = "Sylph"){
	draw_sprite(spr_S,0,x,y-75)	
}
draw_set_color(c_blue)
draw_rectangle(x-(Mana/2),y-10,x+(Mana/2),y-20,false)

draw_set_color(c_green)
draw_rectangle(x-(Hp/2),y-25,x+(Hp/2),y-35,false)


//drawing enemy stuff
draw_text_color(x+300,150,string(global.Etype),c_white,c_white,c_white,c_white,1)
if (global.Etype = "Scorpion"){
	draw_sprite(spr_E1,0,x+300,y-75)	
}
if (global.Etype = "Yutyrannus"){
	draw_sprite(spr_E2,0,x+300,y-75)	
}
if (global.Etype = "Parrot"){
	draw_sprite(spr_E3,0,x+300,y-75)	
}
draw_set_color(c_blue)
draw_rectangle(x-(EMana/2)+300,y-10,x+(EMana/2)+300,y-20,false)

draw_set_color(c_green)
draw_rectangle(x-(EHp/2)+300,y-25,x+(EHp/2)+300,y-35,false)