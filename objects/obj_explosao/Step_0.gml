/// @description

image_xscale += taxa_escala;
image_yscale += taxa_escala;

if(image_index = 5)
	{
		image_alpha -= taxa_alfa;	
	}

if(image_alpha <= 0)
	{
		instance_destroy();
	}