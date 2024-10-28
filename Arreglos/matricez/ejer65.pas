{
  65) Desarrolle un programa que permita cargar un horario de clases: 
  con día (de Lun a Vie), materia, horario inicio y horario fin. 
  El usuario ingresa el nombre de la materia y el programa devuelve 
  días y horarios de clases, hasta que desee salir. Con opción de 
  imprimir el horario semanal diferenciando cada materia con colores.
}


program ejer65;

uses crt;
const
	L_agenda = 2;
	
	
// creamos el tipo de dato
type
	materia = record
		nombre : string;
		h_inicio : string;
		h_final : string;
	end;
	
	materias_dias = record
		dia : string;
		arrayMaterias : array[1..3] of materia;
	end;
	
		
var i, j : byte;
	agenda_escolar : array[1..L_agenda] of materias_dias;
	seleccion : array[1..L_agenda] of materias_dias;
	mat : string;
	
// cargamos los datos
procedure loadDate();
begin
	for i := 1 to Length(agenda_escolar) do
	begin
		clrscr;
		write('ingrese el dia: ');
		readln(agenda_escolar[i].dia);
		for j := 1 to 3 do
		begin
			write('ingrese la materia: ');
			readln(agenda_escolar[i].arrayMaterias[j].nombre);
			write('ingrese el horario de inicio: ');
			readln(agenda_escolar[i].arrayMaterias[j].h_inicio);
			write('ingrese el horario del final: ');
			readln(agenda_escolar[i].arrayMaterias[j].h_final);
		end;
	end;
end;

procedure printSelection();
begin
	clrscr;
	for i := 1 to Length(seleccion) do
	begin
		if seleccion[i].dia <> '' then
		begin
		gotoxy(25*i,2);
		write(' ', seleccion[i].dia);
		gotoxy(25*i,3);
		write('inicio: ', seleccion[i].arrayMaterias[1].h_inicio);
		gotoxy(25*i,4);
		write('final: ', seleccion[i].arrayMaterias[1].h_final);
		end
		else Continue;
	end;
end;

 
function searchIndex(materia: string):boolean;
begin
	searchIndex := false;
	for i := 1 to Length(agenda_escolar) do
	begin
		for j := 1 to 3 do 
		begin
			if materia = agenda_escolar[i].arrayMaterias[j].nombre then
			begin
			seleccion[i].dia := agenda_escolar[i].dia;
			seleccion[i].arrayMaterias[1] := agenda_escolar[i].arrayMaterias[j];
			searchIndex := true;
			break
			end;
		end;
	end;
	if searchIndex = true then 
	printSelection()
	else 
	write('no se encontro la materia');
end;

procedure printAll();
begin
	for i := 1 to Length(agenda_escolar) do
	begin
		gotoxy(25*i,1);
		write(agenda_escolar[i].dia);
		for j := 1 to 3 do
		begin
		textcolor(red + j);
		gotoxy(25*i,(j*2)+3);
		write('materia: ',agenda_escolar[i].arrayMaterias[j].nombre);
		gotoxy(25*i,(j*2)+4);
		write(agenda_escolar[i].arrayMaterias[j].h_inicio, ' - ', agenda_escolar[i].arrayMaterias[j].h_final);
		end;
	end;
end;

BEGIN
	loadDate();
	readkey;
	clrscr;
	write('ingrese la materia de busqueda: ');
	readln(mat);
	searchIndex(mat);
	readkey;
	clrscr;
	printAll();
END.

