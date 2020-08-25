/// @description player vivo
if(room = rm_fase &&! instance_exists(obj_player))
	{
		instance_create_layer(global.metadex,room_height - 100,"Player",obj_player);
		global.vivo = true;
		global.morto = false;
		
		//Alarme de inimigos
		alarm[0] = global.segundo *2;
	}