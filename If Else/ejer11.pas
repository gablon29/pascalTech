{
   11) Desarrolle un programa que determine si un número ingresado
   por el usuario es de tres cifras y es par.
}


program num3yPar;

uses crt;
var i : integer;

BEGIN
	writeln('Bienvenido al programa');
	write('ingrese un numero entero: ');
	read(i);
	// convertimos el numero en + si es -
	if (i < 0) then
		i := i * (-1);
	if ((i >= 100) and (i <= 999)) then
		begin
			if (i mod 2 = 0) then
				write('el numero ingresado tiene 3 cifras es par')
			else
				write('el numero no es par gil!');
		end
	else
		write('el numero no es de 3 cifras putito');
		
END.

