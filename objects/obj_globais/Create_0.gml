/// @description globais
//Sistema
global.segundo	= game_get_speed(gamespeed_fps);
global.metadex	= room_width/2;
global.metadey	= room_height/2;

//Flow do jogo
global.nivel	= 0;
global.recorde	= 0;
global.last		= 0;

//Player
global.vivo = false;	// verifica se ele está na tela
global.morto = false;	//verifica se foi morto por inimigos

//Textos de jogo
texto_jogo[0] = "FIM DO JOGO!"; 
cont_morte = 0;
