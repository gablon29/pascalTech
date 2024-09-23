{
 35) Desarrolle un programa que solicite al usuario un número entre 0 y 
 255, y luego devuelva el caracter ASCII correspondiente a ese código. 
 Incluir un menú con opción de continuar o salir.
}


program untitled;

uses crt;
var i : byte;

BEGIN
	i := 1;
	while i <> 0 do
		begin
			write('ingresa un valor numerico para saber su correspondiente simbolo si desea salir ingrese 0: ');
			read(i);
			writeln('el simbolo es: ');
			writeln(Char(i));
		end
END.

