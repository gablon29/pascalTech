{
   13) Desarrolle un programa que determine de que 
   tipo es un triángulo (equilátero, escaleno, isósceles) 
   ingresando sus lados. 
   Definicion:
   equilatero: todos los lados son iguales
   escaleno: dos lados iguales y uno desigual
   isoceles: todos los lados distintos
}


program triangulo;

uses crt;
var lado1, lado2, lado3 : integer;

BEGIN
	writeln('ingrese el valor de los lados del triangulo para determinar el tipo');
	write('ingrese el valor del primer lado: ');
	read(lado1);
	write('ahora ingrese el valor del lado 2: ');
	read(lado2);
	write('ingrese el ultimo valor: ');
	read(lado3);
	
	//realizamos la op de comparacion
	if ((lado1 = lado2) and (lado1 = lado3)) then
		write('el triangulo es equilatero');
	if ((lado1 <> lado2) and (lado2 = lado3) or (lado2 <> lado3) and (lado1 = lado3)) then
		write('el triangulo es escaleno');
	if ((lado1 <> lado2) and (lado1 <> lado3)) then
		write('el triangulo es isoceles');
	
	
END.

