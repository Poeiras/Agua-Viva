/// @description movimento

/// @description config player
//as variáveis só checam os botões

var esq = keyboard_check(vk_left);
var dir = keyboard_check(vk_right);
var cima = keyboard_check(vk_up);
var baixo = keyboard_check(vk_down);

// Operação de movimento = (1 - 0) * velocidade = movimento
var horizontal = (dir - esq ) * velocidade;
var vertical = (baixo - cima ) * velocidade;

// as mudanças dos eixos são operações feitas pelas variáveis positivas
x += horizontal;
y += vertical;
x = clamp(x,30, room_width	- 30);
y = clamp(y,30, room_height	- 30);

//Fim do player
if(vida <= 0)
	{
		instance_destroy();
	}
		
//Contador do texto
contador ++;
if(contador > global.segundo * 3)
	{
		n1 ++;
		contador = 0;
		if(n1 >= 2)
			{
				n1 = 0;
			}
	}
		