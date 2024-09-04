{
	16) Desarrolle un programa que, de acuerdo al importe del sueldo
	ingresado por el usuario, calcule la Categoría de un Empleado, si:
	
 Hasta U$S 1000 = Cadete
 Más de U$S 1000 y hasta U$S 1500 = Maestranza
 Más de U$S 1500 y hasta U$S 2500 = Vendedor
 Más de U$S 2500 y hasta U$S 4000 = Encargado
 Más de U$S 4000 = Gerente
 
 implementaremos: 
 -> Definir sueldo como Integer;
 -> Desarrollar estructura condicional: CASE
 
}


program ejer16;

uses crt;


var sueldo : INTEGER; 
	categorias: array[1..5] of string;
	
	
BEGIN
	categorias[1] := 'cadete';
	categorias[2] := 'Maestranza';
	categorias[3] := 'Vendedor';
	categorias[4] := 'Encargado';
	categorias[5] := 'Gerente';

	sueldo := 0;
	// solicitamos ingreso de datos
	
	write('Bienvenido!! Ingrese el monto en formato numero para percibir el tipo de empleado: ');
	read(sueldo);
	
	// implementamos la estructura condiconal

	case sueldo of
		0..1000: write('El empleado es categoria ', categorias[1]);
		1001..1500: write('El empleado es categoria ', categorias[2]);
		1501..2500: write('El empleado es categoria ', categorias[3]);
		2501..4000: write('El empleado es categoria ', categorias[4]);
		4001..32000: write('El empleado es categoria ', categorias[5]);
	else
		write('el valor ingresado no es valido gil');
	end;
END.

