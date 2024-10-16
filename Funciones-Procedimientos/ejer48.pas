{
  48) Desarrolle un programa con una FUNCIÓN para calcular el 
  porcentaje X de un número ingresado por el usuario
}


program ejer48;

uses crt;
var num, porcentaje : integer;

function calculo():real;
var resul : real;
begin
	resul := (porcentaje * num) / 100;
	calculo := resul;
end;
BEGIN
	write('ingrese el porcentaje: %');
	read(porcentaje);
	write('De cuanto: ');
	read(num);
	write(calculo():5:2);
	
END.

