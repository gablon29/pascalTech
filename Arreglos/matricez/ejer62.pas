{
   62) Desarrolle un programa que permita ingresar las ventas de 5 
   días de 10 vendedores. Calcule las ventas totales por día y por 
   vendedor, y las ventas totales de la semana. Luego busque los 
   valores mínimo y máximo.
}


program ejercicio62;

uses crt, SysUtils;

const 
	LC = 6;
	LF = 11;
	
var i, j : byte;
	ventas : array[1..LC,1..LF] of integer;
	minimo, maximo : integer;

procedure loadArray();
begin
	Randomize;
	for i := 1 to LF - 1 do
	begin
		for j := 1 to LC - 1 do
		begin
			ventas[j,i] := Random(1000); // harcodeamos el valor de ventas
			ventas[LC,i] += ventas[j,i]; // acumulamos el total por empleado
			ventas[j,LF] += ventas[j,i];// acumulamos el total por dia de ventas
		end;
	end;
end;

procedure writeArray();
begin
	for i := 1 to LF do
	begin
		if i = LF then
		begin
		gotoxy(1,16);
		write('tot x sem')
		end;
		for j := 1 to LC do
		begin
			if j = LC then
			begin
			gotoxy(70,5);
			write('tot x vendedor')
			end;
			if (i = LF) or (j = LC) then
			textcolor(green) // pintamos de color verde total de filas y columnas
			else
			begin
				if ventas[j,i] = maximo then textcolor(blue) // pintamos si es el maximo valor;
				else
				begin
				if ventas[j,i] = minimo then textcolor(red) // pintamos de rojo el valor minimo;
				else textcolor(white);
				end;
			end;
			gotoxy(12*j, i+5);
			write(ventas[j,i]);
		end;
	end;
end;

function valorMinMax():integer;
begin
	clrscr;
	minimo := ventas[1,1];
	maximo :=  ventas[1,1];
	for i := 1 to LF - 1 do
	begin
		for j := 1 to LC - 1 do
		begin
			if minimo > ventas[j,i] then
			begin
			minimo := ventas[j,i];
			end;
			if maximo < ventas[j,i] then
			begin 
			maximo := ventas[j,i];
			end;
		end;
	end;
	valorMinMax:= minimo;
end;

BEGIN
	loadArray();
	valorMinMax();
	writeArray();
END.

