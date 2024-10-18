{
  55) Desarrolle un programa que solicite el ingreso de 15 notas 
  numéricas de alumnos, considerando que se aprueba con nota 6, liste 
  con color verde las notas aprobadas y con color rojo las notas 
  reprobadas. 
}


program ejer55;

uses crt;
const 
	limiteSup = 5;
	aprobado = 6;

var i : byte;
	notasAlum : array[1..limiteSup] of byte;
	
procedure cargarNotas();
var nota : byte;
begin
	for i := 1 to Length(notasAlum) do
	begin
		write('Ingrese la nota numero ', i, ' : ');
		read(nota);
		notasAlum[i] := nota;
	end;
end;

procedure listarNotas();
begin
	for i := 1 to Length(notasAlum) do
	begin
		if notasAlum[i] >= aprobado then
		begin
			textcolor(green);
			writeln(notasAlum[i])
		end
		else
		begin
			textcolor(red);
			writeln(notasAlum[i]);
		end;
	end;
end;

BEGIN
	cargarNotas();
	listarNotas();
END.

