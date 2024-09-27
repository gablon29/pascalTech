{
  38) Desarrolle un programa que dibuje una tabla de 4 filas y 6 
  columnas en el centro de la pantalla
}


program ejer38;

uses crt;
var x, y : byte;

BEGIN
	textcolor(green);
	// pintamos las lineas verticales
	for x := 50 to 58 do
		begin
		// marcamos la primera linea horizontal
		gotoxy(x, 4);
		write('_');
		for y := 5 to 10 do
			begin
			gotoxy(x, y);
			// si es impar entonces es una linea horizontal y si es par entonces es una linea vertical.
			if (x mod 2 = 0) then 
				write('|')
			else
				write('_');
			end;
		end;
END.

