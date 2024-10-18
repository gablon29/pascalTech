{
  51) Desarrolle un programa que permita generar un sorteo de la 
  Quiniela (10 números de 3 cifras generados al azar). Imprimir los 
  números en el orden en que salieron sorteados. Permitir buscar un 
  número sorteado
}


program ejer50;

uses crt, SysUtils;

// declaramos los datos importantes para procesos 
const
	indiceSup = 4;
	indiceInf = 1;
	limiteSup = 100;
	limiteInf = 999;
	
var 
	numWynner : array[indiceInf..indiceSup] of integer;
	num : byte;
	
// validacion de busqueda
procedure validacionBusqueda();
var
	seguir : boolean;
begin
	repeat
	write('ingrese el lugar que desea saber su valor:  ');
	seguir := false;
	read(num);
	if (num < indiceInf) or (num > indiceSup) then writeln('Error: el valor ingresado es incorrecto')
	else 
	seguir:= true;
	until seguir = true;
end;

procedure encontrarNum();
var
	i : byte;
	numSort : integer;
begin
	Randomize;
	for i := indiceInf to indiceSup do
	begin
	numSort:= limiteInf + Random(limiteSup - limiteInf + 1);
	writeln('numero sorteado: ', numSort);
	numWynner[i] := numSort;
	readkey;
	end;
end;

// funcion para buscar por indice
function filtrarPorIndice():integer;

begin
	validacionBusqueda();
	filtrarPorIndice:= numWynner[num];
	write('El valor es: ', filtrarPorIndice);
end;

BEGIN
	encontrarNum();
	readkey;
	filtrarPorIndice();
END.

