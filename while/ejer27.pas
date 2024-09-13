{
   27) Desarrolle un programa que permita sumar números ingresados por 
   el usuario, preguntando luego de cada ingreso si “desea continuar”, 
   luego imprimir el total y el promedio.
}


program untitled;

uses crt;
var valor, count, acum  : integer;
var prom : real;
var continuar : string;

BEGIN
	acum := 0;
	count := 0;
	write('Buenos dias al sumador de valores. Por favor ingrese un numero: ');
	readln(valor);
	continuar := 'si';
	while continuar = 'si' do
		begin
			acum += valor;
			count += 1;
			write('Desea continuar? (si/no): ');
			readln(continuar);
			if (continuar = 'si') then
				begin
					write('Por favor ingrese un numero: ');
					readln(valor);
				end;
		end;
	if count > 0 then
		begin
			prom := acum / count;
			write('El total de ', count, ' numeros da un valor de: ', acum, ' generando un promedio de ', prom:5:2);
		end
	else
		begin
			write('No se ingresaron numeros.');
		end;
END.


