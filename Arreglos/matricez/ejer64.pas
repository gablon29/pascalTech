{
 64) Desarrolle una Agenda de contactos que incluya Nombre, Telefono, 
 Domicilio y Edad. Debe permitir buscar un contacto por nombre o por 
 teléfono.
}


program ejercicio64;

uses crt, SysUtils;

type
	contacto = record
		nombre : string;
		telefono : string;
		domicilio : string;
		edad : byte;
	end;
const 
	L_array = 2;
	
var i : byte;
	agenda : array[1..L_array] of contacto;
	valor : string;

procedure loadArray();
begin
	for i := 1 to Length(agenda) do
	begin
		clrscr;
		writeln('Ingrese el nombre: ');
		readln(agenda[i].nombre);
		writeln('Ingrese el telefono: ');
		readln(agenda[i].telefono);
		writeln('domicilio:');
		readln(agenda[i].domicilio);
		writeln('edad: ');
		readln(agenda[i].edad);
	end;
end;

function searchPerson(dato: string): boolean;
var findIndex : byte;
begin
	for i := 1 to Length(agenda) do
	begin
		if (dato = agenda[i].nombre) or (dato = agenda[i].telefono) then
		begin
		findIndex := i;
		searchPerson := true;
		break
		end
		else
		begin
		findIndex := 0;
		searchPerson:= false;
		end;
	end;
	if searchPerson = true then
		begin
		searchPerson := true;
		gotoxy(1,3);
		write('nombre: ', agenda[findIndex].nombre);
		gotoxy(1,4);
		write('telefono: ', agenda[findIndex].telefono);
		gotoxy(1,5);
		write('domicilio: ', agenda[findIndex].domicilio);
		gotoxy(1,6);
		write('edad: ', agenda[findIndex].edad);
		end
		else write('no se encontro usuario con esos datos');
end;

BEGIN
	loadArray();
	readkey;
	clrscr;
	write('ingrese el nombre o el telefono de la persona que desea buscar: ');
	readln(valor);
	searchPerson(valor);
	
END.

