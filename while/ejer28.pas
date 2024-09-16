{
   28) Desarrolle un programa que permita agrupar personas ingresadas 
   por el usuario por Género, hasta que ingrese “X”, luego imprimir el 
   total y el porcentaje de cada Género.
}


program Contadordepersonas;

uses crt;
var count, muj, varon : integer;
var invitado : string;
var porcentaje : real;

BEGIN
	writeln('Bienvenido al contador de personas');
	write('Ingrese el sexo del invitado: ');
	readln(invitado);
	count := 0;
	muj:= 0;
	varon:= 0;
	while invitado <> 'x' do
		begin
			count += 1;
			if (invitado = 'mujer') then muj += 1;
			if (invitado = 'varon') then varon += 1;
			write('ingrese el sexo del siguiente invitado: ');
			readln(invitado);
		end;
	writeln('La cantidad de invitados es: ', count);
	writeln('La cantidad de mujeres es: ', muj);
	writeln('La cantidad de varones es: ', varon);
	porcentaje := (varon * 100) / count;
	writeln('El porcentaje de varones es: %', porcentaje:5:2);
	porcentaje:= (muj * 100) / count;
	write('El porcentaje de mujeres es: %', porcentaje:5:2);
END.

