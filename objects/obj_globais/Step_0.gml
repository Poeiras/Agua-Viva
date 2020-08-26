/// @description configurações de níveis

//Recorde
if(global.nivel > global.recorde)
	{
		global.recorde = global.nivel;
	}
global.last = global.nivel;
//Mudança de tela de morte
if(global.morto)
	{
		cont_morte ++;
		if(cont_morte >= global.segundo *3)
			{
				cont_morte = 0;
				instance_create_layer(global.metadex,global.metadey,"Botao",obj_recorde);
			}
	}