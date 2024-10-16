{
   47) Desarrolle un programa con una FUNCIÓN para calcular la potencia 
   N de un número ingresado por el usuario.
}


program ejer47;

uses crt, math;
var num, exponente, resul: real;

function elevar(num:real):real;
begin
resul:= power(num, exponente);
elevar:= resul;
end;

BEGIN
	write('Ingrese un numero: ');
	read(num);
	write('ahora ingrese el exponent: ');
	read(exponente);
	write('resultado: ', elevar(num):0:0);
	
END.

