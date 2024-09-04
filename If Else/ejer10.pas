{
   10) programa para saber si un numero ingresado es de dos cifras
}


program twoCifras;

uses crt;
var i : integer;

BEGIN
	write('ingrese un numero: ');
	read(i);
	if (i < 0) then i := i * (-1);
	// si el numero es mayor a 9 ya tiene dos cifras
	if ((i >= 10) and (i <= 99)) then
		write('el numero ingresado tiene dos cifras')
	else
		write('El numero ingresado no tiene 2 cifras');
END.

