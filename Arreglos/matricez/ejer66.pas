{
 66) Desarrolle un programa que permita cargar código, descripción, 
 rubro, stock y precio de 20 artículos. El usuario debe poder ingresar 
 el código y el programa le devuelve el resto de los datos, hasta que 
 desee salir. Con opción de imprimir el inventario completo resaltando 
 con distintos colores el rubro de cada producto. 
}


program InventarioArticulos;

uses crt;

const
  NUM_ARTICULOS = 20;

type
  TArticulo = record
    codigo: integer;
    descripcion: string[50];
    rubro: string[20];
    stock: integer;
    precio: real;
  end;

var
  inventario: array[1..NUM_ARTICULOS] of TArticulo;
  opcion: char;
  codigoBuscado, i: integer;
  encontrado: boolean;

procedure CargarArticulos();
begin
  for i := 1 to NUM_ARTICULOS do
  begin
    Write('Ingrese código del artículo ', i, ': ');
    ReadLn(inventario[i].codigo);
    Write('Ingrese descripción: ');
    ReadLn(inventario[i].descripcion);
    Write('Ingrese rubro: ');
    ReadLn(inventario[i].rubro);
    Write('Ingrese stock: ');
    ReadLn(inventario[i].stock);
    Write('Ingrese precio: ');
    ReadLn(inventario[i].precio);
    WriteLn;
  end;
end;

procedure ConsultarArticulo();
begin
  Write('Ingrese el código del artículo a buscar: ');
  ReadLn(codigoBuscado);
  encontrado := False;
  for i := 1 to NUM_ARTICULOS do
  begin
    if inventario[i].codigo = codigoBuscado then
    begin
      WriteLn('Descripción: ', inventario[i].descripcion);
      WriteLn('Rubro: ', inventario[i].rubro);
      WriteLn('Stock: ', inventario[i].stock);
      WriteLn('Precio: $', inventario[i].precio:0:2);
      encontrado := True;
      Break;
    end;
  end;
  if not encontrado then
    WriteLn('Artículo no encontrado.');
end;

procedure ImprimirInventario();
begin
  ClrScr;
  for i := 1 to NUM_ARTICULOS do
  begin
    if inventario[i].rubro = 'Electrónica' then
      TextColor(Green)
    else if inventario[i].rubro = 'Alimentos' then
      TextColor(Yellow)
    else if inventario[i].rubro = 'Ropa' then
      TextColor(Cyan)
    else
      TextColor(White);

    WriteLn('Código: ', inventario[i].codigo);
    WriteLn('Descripción: ', inventario[i].descripcion);
    WriteLn('Rubro: ', inventario[i].rubro);
    WriteLn('Stock: ', inventario[i].stock);
    WriteLn('Precio: $', inventario[i].precio:0:2);
    WriteLn;
  end;
  TextColor(White);
end;

BEGIN
  CargarArticulos();

  repeat
    WriteLn;
    WriteLn('Opciones: ');
    WriteLn('1 - Consultar artículo por código');
    WriteLn('2 - Imprimir inventario completo');
    WriteLn('S - Salir');
    Write('Seleccione una opción: ');
    ReadLn(opcion);

    case opcion of
      '1': ConsultarArticulo();
      '2': ImprimirInventario();
    end;
  until opcion = 'S';

END.


