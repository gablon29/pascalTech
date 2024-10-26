{
   61) Desarrolle un programa que llene con números enteros una matriz 
   de 4f x 5c, luego sume cada fila y columna, y la suma total de la 
   matriz, luego imprima la matriz diferenciando el color de los totales
}


program Ejercicio61;

uses crt, SysUtils;

const 
	LC = 6;
	LF = 5;
	
var i, j : byte;
	numeros : array[1..LC,1..LF] of integer;

procedure loadArray();
begin
	Randomize;
	for i := 1 to LF -1 do
	begin
		for j := 1 to LC-1 do
		begin
			numeros[j,i] := Random(100);
			numeros[LC,i] += numeros[j,i]; // acumulamos el total de la fila
			numeros[j,LF] += numeros[j,i]; // acumulamos el total de la columna
			numeros[LC,LF] += numeros[LC,i] + numeros[j,LF];
		end;
	end;
end;
procedure writeArray();
begin
	for i := 1 to LF do
	begin
		for j := 1 to LC do
		begin
			gotoxy(10*j, i+5);
			write(numeros[j,i]);
		end;
	end;
end;
BEGIN
	loadArray();
	writeArray();
	
END.

