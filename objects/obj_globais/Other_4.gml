/// @description player vivo
if(room = rm_fase &&! instance_exists(obj_player))
	{
		//Criador do player
		instance_create_layer(global.metadex,room_height - 100,"Player",obj_player);
		global.vivo		= true;
		global.morto	= false;
		global.nivel	= 1;
		global.last		= global.nivel;
		
		//Alarme de inimigos
		alarm[0] = global.segundo *2; //inimigo 01
		alarm[1] = global.segundo *4; //inimigo 02
		alarm[2] = global.segundo *6; //inimigo 03
		alarm[3] = global.segundo *8; //todos os inimigos
		alarm[4] = global.segundo *5; //coração
	}