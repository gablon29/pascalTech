{
  26) Desarrolle un programa que permita sumar números ingresados por 
  el usuario, hasta que ingrese cero, luego imprimir el total y el promedio.
}


program sumador;

uses crt;
var 
	valor, cont, acum : integer;
	prom : real;


BEGIN
	acum := 0;
	cont := 0;
	valor := 1;
	writeln('Bienvenido al programa para sumar numeros...');
	while valor <> 0 do 
		begin
			write('Ingrese un valor: ');
			read(valor);
			acum += valor;
			cont += 1;
		end;
	prom := acum / cont;
	writeln('El valor del total de los numeros ingresados es: ', acum);
	writeln('Al ingresar ', cont, ' notas'); 
	write('con un promedio de: ', prom:5:2);
END.

