
menu_x = x;
menu_y = y;
button_h = 50;
menu_type = 0
// buttons

button[0] = "Human";
button[1] = "Robot";
button[2] = "Sylph";
button[3] = "Back";
buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;

global.current_char = ""
characters_selected = 0;

c_one = "";
c_two =  "";
c_three = "";


global.Hselected = false
global.Rselected = false
global.Sselected = false