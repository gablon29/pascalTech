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
	L_menu = 5;

var i : byte;
	menuRegister : array[1..L_menu] of menu;

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

procedure printMenu();
begin
	for i := 1 to Length(menuRegister) do
	begin
		gotoxy(20*i, 4);
		write('dia ', i);
		gotoxy(20*i, 6);
		write('des: ',menuRegister[i].desayuno);
		gotoxy(20*i, 7);
		write('alm: ',menuRegister[i].almuerzo);
		gotoxy(20*i, 8);
		write('cena: ',menuRegister[i].cena);
	end;
end;

BEGIN
	loadMenu();
	clrscr;
	printMenu();
	
END.

