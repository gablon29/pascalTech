{
  56) Desarrolle un programa que llene un vector con 20 números enteros 
  al azar. Determine cuál es el mayor, el menor, y en qué posición está 
  cada uno. Calcule el promedio y liste con color blanco los números 
  superiores al promedio y con color naranja los números inferiores al 
  promedio. 
}


program ejer56;

uses crt, SysUtils;

const 
	limiteSup = 6;
	
var i : byte;
	numArray : array[1..limiteSup] of integer;
	
// cargamos el array;
procedure loadArray();

begin
	Randomize;
	for i := 1 to Length(numArray) do
	begin
		numArray[i] := Random(100);
		writeln('se cargo el num: ', numArray[i]);
	end;
end;

function promedio(acum: integer; cont: byte):real;
begin
	promedio:= acum / cont;
end; 

procedure pintandoNumeros();
var prom := 
begin
	for i := 1 to Length(numArray) do
	begin
		if numArray < 
	end;
end;

function elMayorMenor(): integer;
var mayor, menor, acum : integer;
begin
	acum := 0;
	mayor := numArray[1];
	menor := numArray[1];
	for i := 1 to Length(numArray) do
	begin
		if mayor < numArray[i] then mayor := numArray[i];
		if menor > numArray[i] then menor := numArray[i];
		acum += numArray[i];
	end;
	writeln('El menor es: ', menor);
	writeln('El mayor es: ', mayor);
	writeln('El total es ', acum);
	writeln('El promedio es: ', promedio(acum, Length(numArray)):5:2);
	elMayorMenor:= menor;
end;

procedure pintandoNumeros();
begin
	
end;

BEGIN
	loadArray();
	elMayorMenor();
END.

