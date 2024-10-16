{
 46) Desarrolle un programa con una FUNCIÓN que determine si un 
 caracter ingresado por el usuario es un número, una letra minúscula 
 o mayúscula, u otro caracter 
}


program ejer46;

uses crt;
var i : char;

function identificador(valor: char):boolean;
var codigo : byte;
begin
	codigo:= ord(valor);
	case codigo of
	32..47: write('Su character ingresado es un simbolo');
	48..57: write('Su character ingresado es un numero');
	65..90: write('Su character es una letra en mayuscula');
	97..122: write('Su character es una letra en minuscula');
	else write('Codigo ingresado incorrecto o fuera de parametro');
	end;
	identificador:= true;
end;

BEGIN
	write('Ingrese un character: ');
	readln(i);
	identificador(i);
END.

