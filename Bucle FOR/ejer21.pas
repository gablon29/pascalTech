{
	Desarrolle un programa que sume 10 números
	 enteros ingresados por el usuario, 
	 y luego calcule el total y el promedio. 
}
 // contador = para las cantidad de iteraciones
 // acumulador = para ir sumando los valores
 // promedio = para guardar el resultado

program untitled;

uses crt;
var
	i : byte;
	nota : integer;
	acumulador : longint;
	prom : real;

BEGIN
	acumulador := 0;
	for i:=1 to 10 do
		begin
			write('escribe el valor numerico: ');
			readln(nota);
			acumulador += nota;
			writeln(' ');
			writeln(' el valor actual: ',acumulador);
			writeln('Cantidad de notas ingresadas: ', i);
		end;
		prom := acumulador / 10;
		writeln('el promedio de: ', prom:5:2);
END.

