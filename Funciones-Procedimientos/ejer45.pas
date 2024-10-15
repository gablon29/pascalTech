{
   45) Desarrolle un programa con una FUNCIÓN que determine si un 
   caracter ingresado por el usuario es un número.
}


program ejer45;

uses crt;
var i : char;

function conversorNum(letra : char): boolean;
var
	num, error:integer;
begin
	Val(letra, num, error); // convertimos el character en numero
	if error <> 0 then write('El caracter ingresado no es un numero')
	else write('El caracter ingresado es un numero: ', num);
	conversorNum:= true;
end;

BEGIN
	readln(i);
	conversorNum(i);
END.

