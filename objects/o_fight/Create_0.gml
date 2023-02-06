randomize();
global.Etype = choose("Scorpion","Yutyrannus","Parrot")
if (global.Etype = "Scorpion"){
	scr_E1stats();	
}
if (global.Etype = "Yutyrannus"){
	scr_E2stats();	
}
if (global.Etype = "Parrot"){
	scr_E3stats();	
}
if (global.current_char = "Human"){
	scr_Hstats();	
}
if (global.current_char = "Robot"){
	scr_Rstats();	
}
if (global.current_char = "Sylph"){
	scr_Sstats();	
}



menu_x = x;
menu_y = y;
button_h = 50;

// buttons
button[0] = "Melee";
button[1] = "Magic";
button[2] = "Sheild";
buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;

