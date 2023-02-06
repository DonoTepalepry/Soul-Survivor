room_goto(rm_load)

char[0] = argument0
char[1] = argument1
char[2] = argument2

chars = array_length_1d(char);

i = 0
repeat(chars){
	show_debug_message(chars[i]) 
	i++;
}