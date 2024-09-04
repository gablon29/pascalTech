{
  8) Desarrolle un programa que determine si un número ingresado por el 
  usuario es Par o Impar.
}


program untitled;

uses crt;
var i : integer;

BEGIN
	write('Ingrese un numero para decirle si es par o impar: ');
	read(i);
	if ( i = 1) then write('El numero ingresado es impar')
	else
		begin
			i := i mod 2;
			if (i = 0) then write('el numero ingresado es par')
			else write('el numero ingresado es impar');
		end;
END.

