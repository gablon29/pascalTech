{
  9) Desarrolle un programa que de dos números ingresados por el 
  usuario determine si uno de ellos es múltiplo del otro.
}


program esMultiplo;

uses crt;
var 
	num1, num2, tot : integer;

BEGIN
	write('ingresa un numero para comenzar la operacion: ');
	read(num1);
	write('ahora ingresa el siguiente numero para saber si es multiplo: ');
	read(num2);
	tot := num1 mod num2;
	if (num2 > num1) then 
		write('El primer numero no puede ser menor al segundo sino la division dara negativo')
	else 
		if (tot = 0) then 
			write('el ', num1, ' si es multiplo de ', num2)
		else 
			write('el ', num1, ' no es multiplo de ', num2);
		
END.

