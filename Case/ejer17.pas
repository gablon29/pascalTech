{
   Desarrolle un programa que solicite
   al usuario una fecha en formato
   “05 10 24” y devuelva la fecha en formato
   “05 de Octubre del 2024”.
   
   tenemos que tomar el segundo par de characteres para convertirlos en
   nuestro factor condicional
   
}


program ejer17;

uses crt;
var 
	date, dia, mes, ano, firstIndexAno : string;
	
	
	
BEGIN
	write('ingrese una fecha en formato DD MM YY: ');
	read(date);
	dia := date[1] + date[2];
	mes := date[4] + date[5];
	ano := date[7] + date[8];
	
	case mes of
		'01':  write(dia, ' de enero de 20', ano);
		'02': write(dia, ' de febrero de 20', ano);
		'03': write(dia, ' de marzo de 20', ano);
		'04': write(dia, ' de abril de 20', ano);
		'05': write(dia, ' de mayo de 20', ano);
		'06': write(dia, ' de junio de 20', ano);
		'07': write(dia, ' de julio de 20', ano);
		'08': write(dia, ' de agosto de 20', ano);
		'09': write(dia, ' de septiembre de 20', ano);
		'10': write(dia, ' de octubre de 20', ano);
		'11': write(dia, ' de noviembre de 20', ano);
		'12': write(dia, ' de diciembre de 20', ano);
		
		
	else
		write('el formato de fecha es invalido');
	end;
END.

