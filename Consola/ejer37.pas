{
 37) Desarrolle un programa que dibuje un rectángulo de 4 filas de alto 
 30 columnas de ancho en el centro de la pantalla.
}


program ejer37;

uses crt;
var i: byte;


BEGIN
	textcolor(red);
	// dibujamos el rectangulo
	for i := 4 to 8 do
		begin
			gotoxy(40,i);
			write('|');
			
			gotoxy(70,i);
			write('|');
		end;
	for i := 40 to 70 do
		begin
			gotoxy(i, 4);
			write('_');
			
			gotoxy(i, 8);
			write('_');
		end;
END.

