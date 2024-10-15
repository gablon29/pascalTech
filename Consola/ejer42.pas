{
  42) Desarrolle un programa que pinte toda la pantalla con la Bandera 
  Argentina. 
}


program untitled;

uses crt;
var y, x : byte;

BEGIN
	for y := 1 to 30 do
	begin
		for x := 1 to 120 do
		begin
		gotoxy(x, y);
		if (y > 1) and (y < 10) then textbackground(blue); // franja celestes
		if (y > 10) and (y < 20) then textbackground(white); // franja blanca
		if y > 20 then textbackground(blue);  // franja celeste
		write(' ');
		end;
	end;	
END.

