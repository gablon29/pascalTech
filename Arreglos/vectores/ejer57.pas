{
  57) Desarrolle un programa que solicite el ingreso del sueldo de 10 empleados (valores entre 100 y 2000). Calcule
el promedio de los sueldos y liste con color azul los sueldos superiores al promedio y con color amarillo los
sueldos inferiores al promedio. Permita buscar un sueldo e indique su posición en la lista
}


program ejer57;

uses crt, SysUtils;

const 
	LIMT_SUP = 10;
	EMP = 10;

var i : byte;
	sueldos : array[1..LIMT_SUP] of integer;
	sueldo : integer;
// sacando el promedio
function promedio(acum: integer;cont : byte): real;
begin
	promedio:= acum / cont;
	writeln('El promedio es de: ', promedio:5:2);
end;

// pintando los sueldos
procedure pinterest(promedio : real);
begin
for i := 1 to Length(sueldos) do
begin
if sueldos[i] < promedio then
begin
	textcolor(yellow);
	writeln('Sueldo: ', sueldos[i]);
end
else
begin
	textcolor(blue);
	writeln('Sueldo: ', sueldos[i]);
end;
end;
end;

// llenando el arreglo
procedure loadSueldos();
var acum : integer;
	rango : real;
begin
Randomize;
acum := 0;
for i := 1 to Length(sueldos) do
begin
	sueldos[i] := Random(2000);
	acum += sueldos[i];
end;
	rango := promedio(acum,EMP);
	pinterest(rango);
end;	

// buscador
procedure filterSueldo(sueldo: integer);
var cont : byte;
begin
cont := 0;
for i := 1 to Length(sueldos) do
begin
if sueldo = sueldos[i] then
begin 
writeln('valor identificado en el lugar ', i, ' de la lista');
cont += 1;
end
end;
if cont = 0 then writeln('No se encontro el valor ingresado');
end;


BEGIN
	loadSueldos();
	textcolor(white);
	write('Ingrese el sueldo que quiere buscar: ');
	read(sueldo);
	filterSueldo(sueldo);
END.

