{
  51) Desarrolle un programa que permita generar un sorteo de la 
  Quiniela (10 números de 3 cifras generados al azar). Imprimir los 
  números en el orden en que salieron sorteados. Permitir buscar un 
  número sorteado
}


program ejer50;

uses crt, SysUtils;

const
	indiceSup = 3;
	indiceInf = 1;
	limiteSup = 100;
	limiteInf = 999;
	
var 
	numWynner : array[indiceInf..indiceSup] of integer;
	
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
BEGIN
	encontrarNum();
END.

