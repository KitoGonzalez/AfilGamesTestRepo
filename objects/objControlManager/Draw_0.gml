draw_set_font(global.fnt_global);
draw_set_halign(fa_center);

switch(global.str_game_state)
{
	case"start":
		
		
		draw_set_color(c_white)
		draw_text(room_width div 2-1, 600-1, str_start);
		
		break;
		
	case"start_menu":
		draw_sprite(spr_menu_title,0,room_width div 2, room_height div 3);
		
		for(var _i = 0 ; _i < array_length(arr_menu);_i++)
		{
		
			draw_set_color(c_white)
			draw_text(room_width div 2, 400-1+_i*100, arr_menu[_i]);
			
		//if(global.num_option == _i) draw_sprite(spr_katana,0,500,420 + _i *100);

		}
				draw_sprite(spr_katana,0,500,420 + global.num_option *100);

		break;
		
	case"game_option":
	
		
		draw_set_color(c_white)
		draw_text(455, 500-1, str_music_volumen);
		draw_text(580, 300-1, str_fullscreen);

		draw_text(910, 500-1, str_effects_volumen);

		
	
		draw_text(room_width div 2-1, 650-1, str_back);
	break;

	case "game_new":
		
		draw_set_color(c_white)
		draw_text(room_width div 2-1, 600-1, str_back);
	break;
	
	case "exit":
		draw_set_color(c_black)
		draw_text(room_width div 2-1, 360-1, str_yes_no);
		draw_set_color(c_white)
		draw_text(room_width div 2-1, 290-1, str_close);	
		draw_text(room_width div 2-1, 600-1, str_back);
	break;
}