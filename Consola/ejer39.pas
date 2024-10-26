{
  39) Desarrolle un programa que dibuje una grilla de 3 x 3 en el 
  centro de la pantalla, y luego pinte cada recuadro con un color 
  distinto.
}


program ejer39;

uses crt;

var 
  x, y, count: byte;

BEGIN
  clrscr;  { Limpiar la pantalla }
  count := 1;  { Iniciar el contador de colores }
  
  for x := 39 to 41 do  { Rango ajustado para la grilla }
	  begin
		for y := 9 to 11 do  { Ajuste de la altura de la grilla }
			begin
			  gotoxy(x, y);  { Colocar el cursor en la posición x, y }
			  textbackground(count);  { Asignar un color diferente }
			  write(' ');  { Pintar el cuadro }
			  count += 1;  { Incrementar el color para el siguiente cuadro }
			  
			  if count > 15 then  { Evitar exceder el rango de colores (0-15) }
				count := 1;
			end;
	  end;
  
  textbackground(black);  { Restaurar el color de fondo al final }
  gotoxy(1, 1);  { Mover el cursor a una esquina segura }
END.


