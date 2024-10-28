{
   63) Desarrolle un programa que permita cargar un menú de desayuno, 
   almuerzo y cena de lunes a viernes. El usuario ingresa un día y el 
   programa devuelve el menú correspondiente a ese día, hasta que desee 
   salir. Con opción de imprimir el menú completo diferenciando con 
   colores cada comida.
}


program ejer63;

uses crt;

type
	menu = record
		desayuno : string;
		almuerzo : string;
		cena : string;
	end;

const 
	L_menu = 2;

var i : byte;
	menuRegister : array[1..L_menu] of menu;
	dia : string;
// cargamos el menu;
procedure loadMenu();
begin
	for i := 1 to L_menu do
	begin
		clrscr;
		writeln('Ingrese desayuno: ');
		readln(menuRegister[i].desayuno);
		writeln('Ingrese almuerzo: ');
		readln(menuRegister[i].almuerzo);
		writeln('Ingrese cena: ');
		readln(menuRegister[i].cena);
	end;
end;

// imprimimos el menu completo en la pantalla
procedure printMenu();
begin
	for i := 1 to Length(menuRegister) do
	begin
		gotoxy(20*i, 4);
		write('dia ', i);
		gotoxy(20*i, 6);
		textcolor(red);
		write('des: ',menuRegister[i].desayuno);
		textcolor(blue);
		gotoxy(20*i, 7);
		write('alm: ',menuRegister[i].almuerzo);
		textcolor(yellow);
		gotoxy(20*i, 8);
		write('cena: ',menuRegister[i].cena);
		textcolor(white);
	end;
end;
// funcion para buscar por indice;
function identificacionDelDia(index : byte) : menu;
	begin
		gotoxy(20, 4);
		write('dia ', index);
		gotoxy(20, 6);
		write('des: ',menuRegister[index].desayuno); // mostramos la cena
		gotoxy(20, 7);
		write('alm: ',menuRegister[index].almuerzo); // mostramos el almuerzo
		gotoxy(20, 8);
		write('cena: ',menuRegister[index].cena);
		identificacionDelDia := menuRegister[index]; // mostramos la cena
	end;

// procedimiento para buscar por dia
procedure searchMenuForDay();
var 
	seguir : char;
begin
	repeat
	write('ingrese el dia para saber el menu: ');
	readln(dia);
	if dia = 'n' then writeln('hasta luego')
	else
	begin
	case dia of
	'lunes': identificacionDelDia(1);
	'martes': identificacionDelDia(2);
	'miercoles': identificacionDelDia(3);
	'jueves': identificacionDelDia(4);
	'viernes': identificacionDelDia(5);
	end;
	readkey;
	clrscr;
	write('desea continuar s/n: ');
	readln(seguir);
	end;
	until seguir = 'n';
end;

BEGIN
	loadMenu();
	clrscr;
	printMenu();
	readkey;
	clrscr;
	searchMenuForDay();
END.

