{
	52) Desarrolle un programa para convertir una palabra ingresada 
	por el usuario en mayúsculas.
}


program untitled;

uses crt;

const
	operacion = 'min';
	
// funcion para pasar a mayuscula
function aMayuscula(str, strConvert:string): string;
var i : byte;
var codigo : byte;
	letra : char;
begin
	for i := 1 to Length(str) do
		begin
			letra := str[i];
			codigo := ord(letra) - 32;
			letra := chr(codigo);
			strConvert += letra;
		end;
	aMayuscula := strConvert;
	write('La palabra convertida es: ', aMayuscula);
end;

// procedimiento para convertir la cadena
procedure convertirCadena();
var palabra, palabraConvertida : string;
begin
	palabraConvertida := '';
	writeln('Ingrese una palabra');
	readln(palabra);
	aMayuscula(palabra, palabraConvertida); // invocamos la funcion de mayuscula
end;
BEGIN
	convertirCadena();
END.

