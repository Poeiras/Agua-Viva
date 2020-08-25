/// @description Interface

//Fonte
draw_set_color(c_white);

//Instruções
if(room = rm_menu)
	{
		draw_text(global.metadex,10,"USE AS SETAS PARA SE MOVER");
		draw_text(global.metadex,30,"NAVEGUE O MÁXIMO POSSÍVEL COM Á AGUA VIVA");
		draw_text(global.metadex,50,"AS ONDAS INIMIGOS SÃO INIFITAS");
	}

//posições dos mostradores de jogo
if(room = rm_fase)
	{
		draw_text (global.metadex-32,25,"ONDA DE INIMIGOS: " + string (global.nivel));
		if(global.morto)
			{
				draw_text(global.metadex-32,50,texto_jogo[0]);
			}
	}
// Mostradores de recordes
if(room = rm_recorde)
	{
		draw_text(global.metadex,50,"OBRIGADO POR JOGAR!");
		draw_text(global.metadex,75,"CONFIRA NOSSO SITE E CADASTRE-SE NO FACEBOOK!");
		draw_text(global.metadex,100,"SUA ÚLTIMA PARTIDA: " + string(int64(global.last)));
		draw_text(global.metadex,125,"A ONDA MAIS DIFÍCIL QUE VOCÊ CHEGOU: "  +string(int64(global.recorde)));
	}