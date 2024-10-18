{
   54) Desarrolle un programa que permita cargar 10 nombres de países. 
   Luego el usuario puede ingresar 1 letra y el programa debe imprimir 
   el listado de los países con nombre que inicien con la letra 
   ingresada.
}


program ejer54;

uses crt;
var str : array[1] of string;
	p : string;
BEGIN
	p := 'hola';
	str[1] := p;
	write(str[1][1]);
	
END.

