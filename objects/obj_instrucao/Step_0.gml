/// @description configuração
//Configuração visual
//Efeito de aumentar e diminuir
if(aumentar)
	{
		image_xscale += taxa;
		image_yscale += taxa;
		if(image_xscale >= 1.05)
			{
				aumentar = false;
				diminuir = true;
			}
	}
if(diminuir)
	{
		image_xscale -= taxa;
		image_yscale -= taxa;
		if(image_xscale <= 0.95)
			{
				aumentar = true;
				diminuir = false;
			}
	}
//contador do texto
var clique, toque, posicao;
clique	= mouse_check_button_released(mb_left);
toque	= mouse_x && mouse_y;
posicao	= position_meeting(mouse_x,mouse_y,obj_instrucao);

if(posicao)
	{
		image_alpha = 0.75;
		if(clique)
			{
				n1++;
			}
	}
else
	{
		image_alpha = 1;
	}
if(n1 >= 4)
	{
		n1 = 1;
	}