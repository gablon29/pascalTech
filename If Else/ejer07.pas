{
     7) Desarrolle un programa que determine si un número ingresado por 
     el usuario es Positivo, Negativo o Neutro.
}


program programDetectionPositivOrNegative;

uses crt;
var i : Integer;

BEGIN
	writeln('bienvenido al programa para saber si el numero ingresado es positivo o negativo');
	write('Ahora ingrese un numero: ');
	read(i);
	if (i = 0) then write('el numero ', i, ' es neutro');
	if (i > 0) then write('el numero ', i, ' es positivo')
	else write(' el numero ingresado es negativo');
END.

