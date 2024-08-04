var _key_accept, _key_anykey, _key_up, _key_down, _key_restart, _key_escape;

_key_up = keyboard_check_pressed(vk_up);
_key_down = keyboard_check_pressed(vk_down);
_key_accept = keyboard_check_pressed(vk_enter);
_key_anykey = keyboard_check_pressed(vk_anykey);
_key_escape = keyboard_check_pressed(vk_escape);


_key_restart = keyboard_check_pressed(ord("R"));
if(_key_restart) game_restart();

switch(global.str_game_state)
{
	case "start":
	
		if(_key_anykey){
			audio_play_sound(snd_buttonsound,10,false);	
			global.str_game_state = "start_menu"
		}
		break;
		
	case "start_menu":
	
		instance_create_layer(688, 416,"Instances", obj_button_play)
		instance_create_layer(688, 519,"Instances", obj_button_options)
		instance_create_layer(683, 635,"Instances", obj_button_exit)

		
		if(_key_up)
		{
			if(global.num_option > 0) global.num_option--;
		}
		if(_key_down)
		{
			if(global.num_option < array_length(arr_menu) -1 )global.num_option++;
		}
		if(_key_escape){
				audio_play_sound(snd_buttonsound,10,false);
				game_end();
			}
		if (_key_accept)
		{
			audio_play_sound(snd_buttonsound,10,false);
		 switch(global.num_option)
			{
				case 0:
				room_goto(rm_gameplay);
				global.str_game_state = "game_new";
				break;
				
				case 1:
			
				global.str_game_state = "game_option";
				break;
				
				case 2:
				//game_end();
				global.str_game_state = "exit";
				break;
			}
		}
		case "game_option":
		if(global.str_game_state = "game_option"){
			instance_create_layer(560, 480,"Instances_2", obj_music_volume_up)
			instance_create_layer(560, 536,"Instances_2", obj_music_volume_down)
			instance_create_layer(780, 480,"Instances_2", obj_effects_volume_up)
			instance_create_layer(780, 536,"Instances_2", obj_effects_volume_down)
			instance_create_layer(700, 300-1,"Instances_2", obj_button_fs)


		}
			
			if(_key_escape){
				audio_play_sound(snd_buttonsound,10,false);
				room_goto(rm_menu);
				global.str_game_state = "start_menu"
			}
		break;
	
		case "game_new":
			if(_key_escape){
				audio_play_sound(snd_buttonsound,10,false)
				room_goto(rm_menu);
				global.str_game_state = "start_menu"
			}
		break;
		
			case "exit":
			instance_create_layer(600, 384,"Instances", obj_button_exit)
			instance_create_layer(768, 384,"Instances", obj_button_goback)
			if(_key_escape){
				audio_play_sound(snd_buttonsound,10,false)
				room_goto(rm_menu);
				global.str_game_state = "start_menu"
			}
		break;
	
}