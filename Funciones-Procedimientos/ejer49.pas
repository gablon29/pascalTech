{
  49) Desarrolle un programa con un PROCEDIMIENTO para generar N números 
  al azar, y una FUNCIÓN para calcular su valor promedio.
}


program ejer49;

uses crt, SysUtils;
var num : byte;
	acum : integer;
	
// procedimiento para obtener numeros al azar
procedure generadorNumAleatorios();
var i, numAzar : byte;
begin
	numAzar := 0;
	Randomize; // inicializamos la semilla
	write('Cuantos valores desea obtener: ');
	read(num);
	for i := 1 to num do
	begin
		numAzar := Random(100);
		writeln('surge: ', numAzar);
		acum += numAzar;
		writeln('Presione una tecla para continuar');
		readkey;
	end;
	writeln('EL total acumulado es: ', acum);
end;

// funcion para sacar el promedio
function promedio(): real;
begin
	promedio := acum / num;
	writeln('El promedio de: ', promedio:5:2);
end;

BEGIN
	generadorNumAleatorios();
	promedio();
	
END.

