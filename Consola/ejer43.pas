{
  43) Desarrolle un programa que dibuje el Triángulo de Pascal de una 
  dimensión dada por el usuario, en el centro de la pantalla.
}


program ejer43;

uses crt;
var lado, x, y, i, ladoInf : byte;

BEGIN
	clrscr;
	textcolor(red);
	write('elige un valor para el lado del triangulo: ');
	read(lado);
	lado += 3;
	x := 60;
	for y := 4 to lado do
	begin
	gotoxy(x, y);
	write('\');
	x += 1;
	end;
	x := 59;
	for y := 4 to lado do
	begin
	gotoxy(x, y);
	write('/');
	x -= 1;
	end;
	ladoInf := lado div 2;
	x += 2;
	for i := 1 to ladoInf do
	begin
	gotoxy(x, lado);
	write('__');
	x += 3;
	end;
	
END.

