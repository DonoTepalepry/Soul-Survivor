switch(menu_index) {

	case 0: 
		show_debug_message("Melee")
		if (Pri > EPri){
			EHp -= ((Atk/EDef)*Mgt)
			Hp -=  choose(((EAtk/Def)*EMgt),((EMgk/Res)*EMMgt))
		}else{
			Hp -= choose(((EAtk/Def)*EMgt),((EMgk/Res)*EMMgt))
			EHp -= ((Atk/EDef)*Mgt)	
		}
	break;
	case 1: 

		if (Mana > 0){
			show_debug_message("Magic")
			if (Pri > EPri){
				EHp -= ((Mgk/Res)*MMgt)
				Mana -= 10
				Hp -= choose(((EAtk/Def)*EMgt),((EMgk/Res)*EMMgt))
			}else{
				Hp -= choose(((EAtk/Def)*EMgt),((EMgk/Res)*EMMgt))
				EHp -= ((Mgk/Res)*MMgt)
				Mana -= 10
				
			}
		}
	break;
	case 2: 
		show_debug_message("Guard")
	break;
}
