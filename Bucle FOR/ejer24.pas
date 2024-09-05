{
 24) Desarrolle un programa que imprima los números múltiplos de 5 
 entre 200 y 400.  
}


program untitled;

uses crt;
var i, multiplo : integer;

BEGIN
	write('Los numeros multiplos de 5 entre 200 y 400 son: ');
	for i := 200 to 400 do
		begin
			multiplo := i mod 5;
			if (multiplo = 0) then writeln(i);
		end
END.

