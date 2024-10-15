{
  41) Desarrolle un programa que imprima el Código ASCII completo 
  (clave y carácter), en una sola pantalla.
}


program ejer41;

uses crt;
var i, j, clave, valorActual: byte;

BEGIN
	// limpiamos la pantalla
	clrscr;
	// inicializamos la clave en 32
	clave := 32;
	for i :=  2 to 5 do
	begin
		for j := 1 to 24 do
		begin
			gotoxy(10 * i, j); // multiplicamos por 10 el eje x para que nos de espacio de poder escribir y no se pisen los valores
			write(' | ', clave, ' | ', chr(clave), ' | ');
			clave += 1; // vamos actualizando la clave
			if clave = 126 then  // limite
			break; // terminamos el proceso
			valorActual := clave; // guardamos el valor actual para actualizar al valor ultimo para! 😁
			
		end;
		clave := valorActual; // nos quedamos con el ultimo numero dentro del bucle
	end;
	
END.

