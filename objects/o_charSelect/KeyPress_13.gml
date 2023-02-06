
switch(menu_index) {

	case 0: //Human
		if (global.Hselected != true) {

			show_debug_message("Human")
			global.current_char = "Human"
			instance_create_depth(200,300,depth,o_fight)
			instance_destroy()
		}
		break;
		
	case 1: //Robot
		if (global.Rselected != true) {
			
			show_debug_message("Robot")
			global.current_char = "Robot"
			instance_create_depth(200,300,depth,o_fight)
			instance_destroy()
		}
		break;
		
	case 2: //Sylph
		if (global.Sselected != true) {
			
			show_debug_message("Sylph")
			global.current_char = "Sylph"
			instance_create_depth(200,300,depth,o_fight)
			instance_destroy()
		}
		break;
		
	case 3: //Back
		characters_selected -= 1
		
		show_debug_message("Back")
		if characters_selected < 0 {
			instance_create_depth(x,y,depth,o_Menu)
			instance_destroy()
		}
		break;
}

if (characters_selected == 3) {
	c_three += current_char
	show_debug_message(c_three);
	
	scr_charSelect(c_one,c_two,c_three);
	
	instance_destroy();
} else if (characters_selected == 2) {
	c_two += current_char
	show_debug_message(c_two)
} else if (characters_selected == 1) {
	c_one += current_char
	show_debug_message(c_one)
}
