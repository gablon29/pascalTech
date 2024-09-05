{
  Desarrolle un programa que imprima los números
   del 1 al 10 y luego del 10 al 1. 
}


program caseProgram;

uses crt;
var 
	i, j : byte;

BEGIN
	 writeln('bienvenido al contador');
	 for i :=1 to 10 do
		begin
			writeln(i);
		end;
	writeln('bucle hacia abajo...');
	for j :=10 downto 1 do
		begin
		writeln(j);
		end;
END.

