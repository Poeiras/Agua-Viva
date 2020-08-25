/// @description criação de inimigos
//Cada trigger sober o nível
//show_debug_message("triggado");
global.nivel ++;
randomise();
//Trigando na room certa
if(room != rm_fase)
	{
		alarm[0] = false;
		exit;
	}

// Variável para definir o range de instancias criadas * nível do jogo
var repete = irandom_range(1,4) * global.nivel;


// laço de repetição quando o alarme trigga
repeat (repete)
	{		
		//Variáveis de posição
			var horiz = irandom_range(-256,room_width); 
			var verti = irandom_range(-128,-64);
			var chance = irandom(100);
		if(global.nivel > 5)
			{
				verti = irandom_range(-256,-64);
			}

		//condições para criação dentro do laço
		if (chance >= 67)
			{
				var inimigo03 = instance_create_layer(horiz,verti,"Inimigos",obj_inimigo03);
			}
		if (chance >= 33 || chance <= 66)
			{
				var inimigo02 = instance_create_layer(horiz,verti,"Inimigos",obj_inimigo02);
			}
		if(chance < 33)
			{
				var inimigo01 =instance_create_layer(horiz,verti,"Inimigos",obj_inimigo01);
			}
	}

// após o fim do laço, recontagem do alarme
if (instance_exists(obj_player))
	{
		alarm [0] = global.segundo * 5;
		if(global.nivel > 6)
			{
				alarm = global.segundo *7.5;
			}
	}
else
	{
		alarm [0] = 0;
	}