unit UReporte;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, NxGridView6, NxColumns6,
  NxControls6, NxCustomGrid6, NxVirtualGrid6, NxDBGrid6, NxDBColumns6, NxGrid6,
  Vcl.StdCtrls;

type
  TFReporte = class(TForm)
    fdIngreso: TFDQuery;
    dsingreso: TDataSource;
    fdIngresoidproducto: TLongWordField;
    fdIngresodescripcion: TStringField;
    fdIngresoprecio: TBCDField;
    fdIngresocantidad: TBCDField;
    gridIngreso: TNextGrid6;
    NxReportGridView61: TNxReportGridView6;
    NxIncrementColumn61: TNxIncrementColumn6;
    idproducto: TNxNumberColumn6;
    descripcion: TNxTextColumn6;
    cantidad: TNxNumberColumn6;
    precio: TNxNumberColumn6;
    saldo: TNxNumberColumn6;
    Button1: TButton;
    fdIngresosaldo: TBCDField;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure LLenarGrid(grid:TNextGrid6;data:TFDQuery);
  public
    { Public declarations }
  end;

var
  FReporte: TFReporte;

implementation

{$R *.dfm}

uses UMenu;

{ TFReporte }

procedure TFReporte.Button1Click(Sender: TObject);
begin
Llenargrid(gridIngreso,fdIngreso);
end;

procedure TFReporte.LLenarGrid(grid: TNextGrid6; data: TFDQuery);
var
  I: Integer;
begin
data.Close;
data.Open();
GRID.ClearRows;
while not data.Eof do
begin
  grid.AddRow(1);
  for I := 1 to grid.ColCount-1 do
  begin
      grid.Cells[I,grid.LastAddedRow]:=data.FieldByName(grid.Columns[I].GetNamePath).AsString;
//        grid.Cells[grid.FindComponent()   ,grid.LastAddedRow]:=data.FieldByName(grid.Columns[I].GetNamePath).AsString;
  end;
  data.Next;
end;
end;

end.
