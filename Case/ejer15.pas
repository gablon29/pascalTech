{
  15) Desarrolle un programa que, de acuerdo a la cantidad de kilómetros
   ingresados por el usuario, calcule el valor Acumulativo de un pasaje
    
	implementaremos: 
	-> 1 variable: Donde guardaremos el valor ingresado y lo utilizaremos como parametro condicional
	-> estructura condicional CASE.
}


program eje15;
 
uses crt;
var Km : integer;

BEGIN
	// solicitamos ingresar los datos
	write('Bienvenido! Ingrese la cantidad de km en formato numero y le diremos cuanto tendria que abonar: ');
	read(km);
	
	// estructura condicional
{
	condiciones a considerar:
	Hasta 300 kmts = $ 1 x km
	Más de 300 y hasta 1000 kmts = $ 2 x km
	Más de 1000 kmts = $ 3 x km
}
	case km of
		0..300: write('El saldo a abonar es de: ', (1 * km));
		301..1000: write('El saldo a abonar es de: ',(2 * km));
		1001..32000: write('El saldo a abonar es de: ', (3 * km));
	else
		write('ingrese un formato valido');
	end;
END.

