/// @description configuração

//Configuração visual

//Rotação de imagem
image_angle += rotacao * global.nivel;

//Efeito de aumentar e diminuir
if(aumentar)
	{
		image_xscale += taxa;
		image_yscale += taxa;
		if(image_xscale >= 1.15)
			{
				aumentar = false;
				diminuir = true;
			}
	}
if(diminuir)
	{
		image_xscale -= taxa;
		image_yscale -= taxa;
		if(image_xscale <= 0.85)
			{
				aumentar = true;
				diminuir = false;
			}
	}

//Objeto fora da tela
if(x > room_width + 100 || y > room_height + 100)
	{
		instance_destroy();
	}