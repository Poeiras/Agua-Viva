/// @description drop do coração

randomise();

//Trigando na room certa
if(room != rm_fase)
	{
		alarm[4] = false;
		exit;
	}

// Variável para definir o range de instancias criadas * nível do jogo
var repete = 1;

// laço de repetição quando o alarme trigga
repeat (repete)
	{		
		//Variáveis de posição
			var horiz = irandom_range(64,room_width-64); 
			var verti = irandom_range(-128,-64);
			var chance = irandom(100);
		//condições para criação dentro do laço
		if(chance > 50)
			{
				var coracao=instance_create_layer(horiz,verti,"Inimigos",obj_coracao);
			}
	}

// após o fim do laço, recontagem do alarme
if (instance_exists(obj_player))
	{
		alarm [4] = global.segundo * 5;
	}
else
	{
		alarm [4] = 0;
	}