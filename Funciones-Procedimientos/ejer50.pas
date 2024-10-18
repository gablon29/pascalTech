{
   50) Desarrolle un programa con un PROCEDIMIENTO que solicite al 
   usuario el ingreso de 2 números, y luego pregunte cuál de las 
   cuatro operaciones básicas va a realizar, resolver utilizando 
   FUNCIONES, y luego imprimir el resultado. Validar los valores 
   ingresados.
}


program ejer50;

uses crt;
var num1, num2 : integer;
// funciones de operaciones aritmeticas
function operacion(num1, num2:integer; symbol: char): real;
begin
	case symbol of
	'+': operacion := num1 + num2;
	'-': operacion := num1 - num2;
	'*': operacion := num1 * num2;
	'/': operacion := num1 / num2;
	end;
	if (symbol <> '/') then write('resultado: ', operacion:0:0)
	else write('resultado: ', operacion:5:2);
end;
procedure procedimientoAritmecio();
var
	symbol : char;
begin
	write('Ingrese los numeros para comenzar el proceso: ');
	readln(num1);
	write('Ahora ingrese el segundo numero: ');
	readln(num2);
	writeln('Ahora ingrese el simbolo de la operacion que tiene que hacer: ');
	readln(symbol);
	operacion(num1, num2, symbol);
end;
BEGIN
	procedimientoAritmecio();
END.

