{
   Desarrolle un programa que imprima el número de docena
   («primera», «segunda» o «tercera») dado el resultado 
   de una jugada de ruleta (del 0 al 36).
   
   ejemplo: 
   sabemos que a docena = 12 unidades -> entonces...
   si el numero ingresado es 5 corresponde a la <primera> docena,
   el 17 corresponde a la <segunda> docena;
   
   implementamos una estructura condicional, donde trabajaremos con rangos,
   0..12, 13..24, 24..36;
}

//2024/09/04
program ejer14;

uses crt;
var num : byte;

BEGIN
	// ingresamos los datos
	write('ingrese un numero: ');
	read(num);
	
	// implementamos la estructura condicional CASE
	case num of
		0..12: write('el numero ', num, ' corresponde a la <primera> docena');
		13..24: write('el numero ', num, ' corresponde a la <segunda> docena');
		25..36: write('el numero ', num, ' corresponde a la <tercera> docena');
	else
		write('ingrese un numero valido pelotudo!!');
	end;
END.

