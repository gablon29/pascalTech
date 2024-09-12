{
	Suma de números pares
	Realiza un programa que sume todos los números pares del 1 al 100 e 
	imprima el resultado.
}


program untitled;

uses crt;
var 
	i : byte;
	acum : integer;
BEGIN
	acum := 0;
	writeln('Bienvenido al programa: que sume todos los numeros pares del 1 al 100 e imprime el resultado.');
	for i := 1 to 100 do
		begin
			if (i mod 2 = 0) then acum += i;
		end;
	write('el resultado de sumar todos los numeros pares de 1 al 100 es: ', acum);
	
END.

