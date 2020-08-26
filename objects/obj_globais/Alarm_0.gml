/// @description criação de inimigos01

//Cada trigger sober o nível & randomizador de posição
global.nivel ++;
randomise();
audio_play_sound(snd_levelup,1,false);

//Trigando na room certa
if(room != rm_fase)
	{
		alarm[0] = false;
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
			var chance = irandom(100);
		if(global.nivel > 5)
			{
				verti = irandom_range(-256,-64);
			}

		//condições para criação dentro do laço
		if(chance<100)
			{
				var inimigo01 =instance_create_layer(horiz,verti,"Inimigos",obj_inimigo01);
			}
	}

// após o fim do laço, recontagem do alarme
if (instance_exists(obj_player))
	{
		alarm [0] = global.segundo * 6;
	}
else
	{
		alarm [0] = false;
	}