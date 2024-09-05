{
  23) Desarrolle un programa que imprima los números Pares 
  entre 100 y 200.
}


program ejercicio23;

uses crt;
var i, num : byte;

BEGIN
	writeln('Los numeros pares entre el 100 y el 200 son:');
	for i := 100 to 200 do
		begin
			num := i mod 2;
			if (num = 0) then writeln(i, ' es par');
		end;
END.

