{
  59) Desarrolle un programa que llene con números enteros una matriz 
  de 3f x 8c, luego sume cada fila y almacene los totales en una 
  columna adicional, luego imprima la matriz diferenciando el color de 
  los totales.
}


program ejer59;

uses crt, SysUtils;
const 
	L_COLUM = 8;
	L_FILAS = 3;
var i, j : byte;
	numeros : array[1..L_COLUM, 1..L_FILAS] of integer;
	
procedure loadArray();
begin
Randomize;
for i := 1 to L_FILAS do
begin
	for j := 1 to L_COLUM - 1 do
	begin
		numeros[j,i] := Random(100);
		// acumulamos el total de la fila;
		numeros[L_COLUM, i] += numeros[j,i];
	end;
end;
end;

procedure writeNumbers();
begin
// recorremos las COLUMNAS
for i := 1 to L_COLUM do
begin
	if i < L_COLUM then
		begin
		gotoxy(10*i,4);
		write('Col: ',i);
		end
		else
		begin
		gotoxy(10*i,4);
		write('Total');
		end;
	if i = L_COLUM then 
		textcolor(green)
		else
		textcolor(white);
	// recorremos las FILAS
	for j := 1 to L_FILAS do
	begin
		//generamos las columnas de todo una fila primero
		gotoxy(10*i,j+4);
		write('| ',numeros[i,j], ' |');
	end;
end;
end;
	
BEGIN
	loadArray();
	writeNumbers();
END.

