{
  12) Desarrolle un programa que de tres números 
   ingresados por el usuario determine cuál es el mayor.
}


program numeroMayor;

uses crt;
var num1, num2, num3 : integer;


BEGIN
	write('ingrese los numeros para comenzar el proceso: ');
	read(num1);
	writeln('valores ingresados: ', num1);
	write('ahora ingrese el segundo valor: ');
	read(num2);
	writeln('valores ingresados: ', num1, ' , ',num2);
	write('ahora ingrese el tercer valor: ');
	read(num3);
	if ((num1 = num2) or (num1 = num3) or (num2 = num3)) then write('no se puede realizar la comparacion con numeros repetidos imbecil!!🤯')
	else
		if ((num1 > num2) and (num1 > num3)) then write('el numero ingresado ', num1, ' es el mayor');
		if ((num2 > num1) and (num2 > num3)) then write('el numero ingresado ', num2, ' es el mayor');
		if ((num3 > num1) and (num3 > num2)) then write('el numero ingresado ', num3, ' es el mayor');
	
END.

