/// @description corações
draw_self();

var numero = 32;
repeat (vida)
	{
		draw_sprite_ext(spr_heart,0,global.metadex+numero,50,1,1,0,c_white,1);
		numero +=32;
	}