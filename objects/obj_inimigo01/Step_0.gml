/// @description configuração

//Configuração visual
image_angle += rotacao;
if(image_xscale <= 1 && image_yscale <= 1)
	{
		image_xscale += taxa;
		image_yscale += taxa;
	}
if(image_xscale >= 1.5 && image_yscale >= 1.5)
	{
		image_xscale -= taxa;
		image_yscale -= taxa;
	}

//Objeto fora da tela
if(x > room_width + 100 || y > room_height + 100)
	{
		instance_destroy();
	}