{
  19) * Desarrolle un programa que calcule la Edad exacta de una 
  persona en Años, Meses y Días.
  
  para sacar la edad: 
  -> en anos => anoActual - nacimiento
  -> en meses => (anoActual - nacimiento) * 12 (cant meses en un ano)
  -> en dias => (anoActual - nacimiento) * 365 (cant dias en un ano) 
}


program fecha;

uses crt;
var 
	nacimiento, anoActual, mesesVida, anosDeVida : integer;
	diasVida: longInt;

BEGIN
	write('Ingrese el ano de nacimiento: ');
	read(nacimiento);
	write('Ingrese el ano actual: ');
	read(anoActual);
	if (nacimiento > anoActual) then write('El ano actual no puede ser menor al nacimiento')
	else 
		begin
			anosDeVida := anoActual - nacimiento;
			mesesVida := anosDeVida * 12;
			diasVida := anosDeVida * 365;
			write('Su tiempo de vida es en anos: ', anosDeVida, '. En meses: ', mesesVida, '. En dias: ', diasVida);
		end;
END.

