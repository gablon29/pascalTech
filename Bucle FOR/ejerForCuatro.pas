{
	Cálculo del factorial
	Escribe un programa que pida un número entero positivo y calcule su 
	factorial usando un bucle for.

}


program untitled;

uses crt;
var i, n, inicio : integer;

BEGIN
	writeln('Bienvenido al programa que calcula el factorial del numero que ingreses');
	write('ingresa un numero: ');
	read(n);
	inicio := n - 1;
	if n <= 1 then write('el factorial de ', n, ' es ', n);
	for i := inicio downto 1 do
		begin
			writeln(i, ' * ', n);
			n := n * i;
			writeln(n);
		end;
	write('El factorial es: ', n);
END.

