{
   29) Desarrolle un programa que permita agrupar personas ingresadas 
   por el usuario por su Edad, hasta que ingrese cero, luego imprimir 
   el total y el porcentaje por grupo, si:
	Hasta 10 años = Niño
	Hasta 18 años = Adolescente
	Hasta 40 años = Adulto
	Hasta 60 años = Mayor
	Más de 60 años = Anciano
}


program ejercicio29;

uses crt;
var edad, ninos, adolecentes, adultos, mayor, anciano : byte;

BEGIN
	ninos:= 0;
	adolecentes:= 0;
	adultos:=0;
	mayor:=0;
	anciano:=0;
	write('Ingrese la edad del sujeto: ');
	read(edad);
	while edad <> 0 do
		begin
			case edad of
				0..10:ninos+= 1;
				11..18: adolecentes += 1;
				19..40: adultos += 1;
				41..60: mayor += 1;
				61..200: anciano += 1;
			else
				write('Valor invalido por favor ingrese una edad dentro del rango de 0 a 300');
			end;
			write('Por favor ingrese la edad del siguiente sujeto: ');
			read(edad);
		end;
	writeln('Los parametros de valores son los siguientes:');
	writeln('cantidad de ninos: ', ninos);
	writeln('cantidad de adolecentes: ', adolecentes);
	writeln('cantidad de adultos: ', adultos);
	writeln('cantidad de mayores: ', mayor);
	writeln('cantidad de ancianos: ', anciano);
END.

