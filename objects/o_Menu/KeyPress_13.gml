switch(menu_index) {

	case 0: //Start
	
	instance_create_depth(x,y,depth,o_charSelect)
	show_debug_message("Character Select")
	instance_destroy(self)
	
	break;
	case 1: //QuickStart
	show_debug_message("Quick Start")
	break;
	case 2: //Options
	
	instance_create_depth(x,y,depth,o_optionsMenu)
	instance_destroy(self)
	
	break;
	case 3: //Quit
		game_end() ;
		break;
}
