{
   44) Desarrolle un programa con una FUNCIÓN para convertir un caracter
   ingresado por el usuario en mayúscula.
}


program ejer44;

uses crt;
var palabra : string;

procedure validacion();
begin
	repeat
	write('ingrese una palabra mayor a 1: ');
	readln(palabra); // utilizamos ln para que lea el string
	if Length(palabra) > 1 then
	else
	begin
	writeln('Error: la palabra debe contener mas de un caracter. ');
	end;
	until Length(palabra) > 1;
end;


function convertirMayus(pal: string): string;
begin
	convertirMayus := UpCase(pal);
end;


BEGIN
	// ingresamos el dato
	validacion();
	writeln('la palabra en mayuscula es: ');
	textcolor(red);
	writeln(convertirMayus(palabra));
	textcolor(green);
	write('y contiene: ',Length(palabra), '  de caracteres');
END.

