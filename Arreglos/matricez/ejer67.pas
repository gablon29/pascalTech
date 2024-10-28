{
  67) * Desarrolle un programa que permita cargar la patente, la marca, 
  el modelo y el año de 10 autos, luego listar en forma descendente 
  por año, con color rojo aquellos con más de 10 años, con color 
  amarillo aquellos con más de 5 años, y con color blanco los último 
  modelo. Debe permitir buscar datos del auto ingresando la patente.
}


program GestionAutos;

uses crt, SysUtils;

const
  NUM_AUTOS = 10;
  ANIO_ACTUAL = 2024;

type
  TAuto = record
    patente: string[10];
    marca: string[20];
    modelo: string[20];
    anio: integer;
  end;

var
  autos: array[1..NUM_AUTOS] of TAuto;
  i, j: integer;
  temp: TAuto;
  opcion: char;
  patenteBuscada: string;
  encontrado: boolean;

procedure CargarAutos();
begin
  for i := 1 to NUM_AUTOS do
  begin
    Write('Ingrese patente del auto ', i, ': ');
    ReadLn(autos[i].patente);
    Write('Ingrese marca: ');
    ReadLn(autos[i].marca);
    Write('Ingrese modelo: ');
    ReadLn(autos[i].modelo);
    Write('Ingrese año: ');
    ReadLn(autos[i].anio);
    WriteLn;
  end;
end;

procedure OrdenarAutosPorAnio();
begin
  for i := 1 to NUM_AUTOS - 1 do
    for j := i + 1 to NUM_AUTOS do
      if autos[i].anio < autos[j].anio then
      begin
        temp := autos[i];
        autos[i] := autos[j];
        autos[j] := temp;
      end;
end;

procedure ListarAutos();
var
  antiguedad: integer;
begin
  OrdenarAutosPorAnio();
  ClrScr;
  for i := 1 to NUM_AUTOS do
  begin
    antiguedad := ANIO_ACTUAL - autos[i].anio;

    if antiguedad > 10 then
      TextColor(Red)
    else if antiguedad > 5 then
      TextColor(Yellow)
    else
      TextColor(White);

    WriteLn('Patente: ', autos[i].patente);
    WriteLn('Marca: ', autos[i].marca);
    WriteLn('Modelo: ', autos[i].modelo);
    WriteLn('Año: ', autos[i].anio);
    WriteLn;
  end;
  TextColor(White);
end;

procedure BuscarPorPatente();
begin
  Write('Ingrese la patente del auto a buscar: ');
  ReadLn(patenteBuscada);
  encontrado := False;
  for i := 1 to NUM_AUTOS do
  begin
    if CompareText(autos[i].patente, patenteBuscada) = 0 then
    begin
      WriteLn('Patente: ', autos[i].patente);
      WriteLn('Marca: ', autos[i].marca);
      WriteLn('Modelo: ', autos[i].modelo);
      WriteLn('Año: ', autos[i].anio);
      encontrado := True;
      Break;
    end;
  end;
  if not encontrado then
    WriteLn('Auto no encontrado.');
end;

BEGIN
  CargarAutos();

  repeat
    WriteLn;
    WriteLn('Opciones: ');
    WriteLn('1 - Buscar auto por patente');
    WriteLn('2 - Listar autos ordenados por año');
    WriteLn('S - Salir');
    Write('Seleccione una opción: ');
    ReadLn(opcion);

    case opcion of
      '1': BuscarPorPatente();
      '2': ListarAutos();
    end;
  until opcion = 'S';

END.

