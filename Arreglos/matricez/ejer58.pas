{
   58) Desarrolle un programa que permita almacenar números ingresados 
   por el usuario en la primera fila de una matriz de 5 columnas, y en 
   la segunda fila almacene el cuadrado de cada número, luego imprima 
   la matriz diferenciando el color de los números y su respectivo 
   cuadrado 
}


program manejoMatriz;

uses crt, SysUtils;

const 
	L_FILAS = 2;
	L_COLUMNAS = 5;

var colum, fila : byte;
	nums : array[1..L_COLUMNAS,1..L_FILAS] of integer;

procedure loadArray();
begin
	for colum := 1 to L_COLUMNAS do
	begin
		for fila := 1 to L_FILAS - 1 do
		begin
			write('Inserte un valor para la columna ', colum, ' en la fila ', fila, ' : ');
			read(nums[colum,fila]);
			nums[colum,2] := nums[colum,fila] * nums[colum,fila];
		end;
	end;
end;

procedure mostrarArray();
begin
clrscr;
gotoxy(1,4);
write('valor:');
gotoxy(1,5);
write('cuadrado:');
for colum := 1 to L_COLUMNAS do
begin
	for fila := 1 to L_FILAS do
	begin
	gotoxy(colum*12,fila+3);
	write(nums[colum, fila]);
	end;
end;
end;

BEGIN
	loadArray();
	mostrarArray();
	
END.

