{
  25) Desarrolle un programa que permita sumar “N” números 
  ingresados por el usuario, luego imprimir el total y el promedio.
  
  procedimiento: 
  -> N => sera el numero ingresado por el usuario que lo utilizaremos
  como limite superior en nuestro bucle
  -> si N = 0 => ??
  -> si N = 1 => se corre el programa
}


program ejerc25;

uses crt;
var
	nota : integer;
	i, acum, rango : longInt;
	promedio : real;


BEGIN
	acum:= 0;
	
	write('Ingrese el numero de notas para sacar el promedio: ');
	read(rango);
	if (rango = 0) then write('El valor ingresado es incorrecto')
	else 
		begin
			for i := 1 to rango do
				begin
					write('Ingrese la nota: ');
					read(nota);
					acum += nota;
					if  i <> 1 then writeln('Usted ha ingresado ', nota, ' acumulando un total de: ', acum);
				end;
			writeln('ingresando un total de: ', rango, ' notas, acumulo un valor de: ', acum);
			promedio := acum / rango;
			write('Generando un promedio de: ', promedio:5:2);
		end;
END.

