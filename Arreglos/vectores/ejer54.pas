{
   54) Desarrolle un programa que permita cargar 10 nombres de países. 
   Luego el usuario puede ingresar 1 letra y el programa debe imprimir 
   el listado de los países con nombre que inicien con la letra 
   ingresada.
}


program ejer54;

uses crt;

const 
	limiteSup = 10;

var countrys : array[1..limiteSup] of string;
	i : byte;
	
// guardamos los paises
procedure countrySave();
var pais : string;
begin
	for i := 1 to Length(countrys) do
	begin
		writeln('Ingresa el pais numero ', i, ' : ');
		readln(pais);
		countrys[i] := pais;
	end;
end;
// procedimiento para filtrar por la primera letra
procedure filtrarPorLetra();
var letra : char;
	count : byte;
begin
	count := 0;
	writeln('Ingresa la letra para comenzar la busqueda: ');
	readln(letra);
	for i := 1 to Length(countrys) do
	begin
		if letra = countrys[i][1] then 
		begin
		writeln(countrys[i]);
		count += 1;
		end;
	end;
	if count = 0 then write('No se encontraron paises que inicien con esa letra');
end;


BEGIN
	countrySave();
	filtrarPorLetra();
END.

