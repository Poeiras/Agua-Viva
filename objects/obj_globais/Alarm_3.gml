/// @description alarme de drop de inimigos

//Cada trigger sober o nível & randomizador de posição
randomise();

//Trigando na room certa
if(room != rm_fase)
	{
		alarm[3] = false;
		exit;
	}

// Variável para definir o range de instancias criadas * nível do jogo
var repete = 1 * global.nivel;

// laço de repetição quando o alarme trigga
repeat (repete)
	{		
		//Variáveis de posição
			var horiz = irandom_range(64,room_width-64); 
			var verti = irandom_range(-128,-64);
		if(global.nivel > 5)
			{
				verti = irandom_range(-256,-64);
			}
		//condições para criação dentro do laço
			var inimigo01 =instance_create_layer(horiz,verti,"Inimigos",obj_inimigo01);
			var inimigo02 =instance_create_layer(horiz,verti,"Inimigos",obj_inimigo02);
			var inimigo03 =instance_create_layer(horiz,verti,"Inimigos",obj_inimigo03);
	}

// após o fim do laço, recontagem do alarme
if (instance_exists(obj_player))
	{
		alarm [3] = global.segundo * 8;
	}
else
	{
		alarm [3] = 0;
	}