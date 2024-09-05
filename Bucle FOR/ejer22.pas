{
   22) Desarrolle un programa que imprima los números del 1 al 100 
   con una pausa cada 20 números.
   
   resolucion:
   -> Ocupamos la funcion Delay() => pasando como retardo la cantidad
   de milisegundos que hay en 1' (60000);
   -> generamos bucles anidados por que delay tiene un limite maximo de
   de demora, asegurando la ejecucion adecuada a traves del segundo bucle
}
{$mode objfpc}

program untitled;

uses crt;
var i, j :  integer;

BEGIN
	for i:= 0 to 100 do
		begin
			for j :=0 to 20 do
				begin
					Delay(60000);
				end;
			write(i);
		end;
END.

