{
  40) Desarrolle un programa que dibuje una grilla y en su interior imprima 
  la tabla de multiplicar generada a partir 
  de un número ingresado por el usuario. Incluir un menú con opción de 
  continuar o salir.
}


program ejer40;

uses crt;
var i, n, multiplo : byte;

BEGIN
	repeat
		clrscr; // limpiamos la pantalla
		n := 0;
		write('Elige el multiplo o presiona 0 para salir: ');
		read(multiplo);
		if (multiplo <> 0) then
		begin
		// dibujamos la grilla
			for i := 5 to 15 do
			begin
				gotoxy(10, i);
				write('| '); // marcamos el inicion de la columna
				write(multiplo, ' * | ' , n);
				writeln(' | ', multiplo * n, ' |'); // marcamos la operacion
				n+= 1; // aumentamos el multiplicando
			end;
			write('presione una tecla para continuar');
			readkey; // separamos los procesos
		end
		else
			write('Hasta luego');
	until multiplo = 0;
END.

