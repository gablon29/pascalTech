{
   6) Desarrolle un programa que de dos números ingresados por el 
   usuario determine cuál es el mayor.
}


program OperacionBooleanas;

uses crt;

// declaracion de variables
var 
	i, a : integer;


BEGIN
	writeln('Bienvenido al programa de operaciones logicas');
	write('ingrese un numero: ');
	read(i);
	writeln('Ahora ingrese el segundo numero para saber si es mayor o menor a ', i);
	read(a);
	if (i = a) then write('Los numeros ingresados son iguales')
	else
		if (i > a) then 
			write('el numero: ',i, ' es mayor a el numero: ', a)
		else 
			write('el numero: ', a, ' es mayor a el numero: ', i);
END.

