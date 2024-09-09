{
  Imprimir números consecutivos 
  Escribe un programa que imprima los números del 1 al 50 en una línea, 
  separados por comas.

}


program EjerForUno;

uses crt;
var i : byte;

BEGIN
	writeln('Bienvenido al programa que imprime los numeros del uno al diez en una linea separados por comas.');
	for i := 0 to 50 do
		begin
			write(i, ', ');
		end
	
END.

