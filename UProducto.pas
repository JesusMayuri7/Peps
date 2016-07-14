unit UProducto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, NxGridView6, NxColumns6, NxControls6,
  NxCustomGrid6, NxVirtualGrid6, NxGrid6, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFProducto = class(TForm)
    grp1: TGroupBox;
    txtdescripcion: TEdit;
    Button1: TButton;
    txt1: TLabel;
    fdProducto: TFDQuery;
    fdTraerProducto: TFDQuery;
    gridProducto: TNextGrid6;
    NxReportGridView61: TNxReportGridView6;
    NxNumberColumn61: TNxNumberColumn6;
    NxTextColumn61: TNxTextColumn6;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure TraerProductos();
  public
    { Public declarations }
  end;

var
  FProducto: TFProducto;

implementation

{$R *.dfm}

uses UMenu;

procedure TFProducto.Button1Click(Sender: TObject);
begin
fdProducto.Close;
fdProducto.ParamByName('descripcion').AsString:=txtdescripcion.Text;
fdproducto.ExecSQL();
if fdProducto.RowsAffected>0 then
   begin
   ShowMessage('Producto grabado exitosamente');
   TraerProductos();
   txtdescripcion.Text:='';
   txtdescripcion.SetFocus;
   end;

end;

procedure TFProducto.FormCreate(Sender: TObject);
begin
 TraerProductos();
end;

procedure TFProducto.TraerProductos;
begin
  gridProducto.ClearRows;
  fdTraerProducto.Close;
  fdTraerProducto.Open();
  while not(fdTraerProducto.Eof) do
  begin
    gridProducto.AddRow(1);
    gridProducto.Cell[0,gridProducto.LastAddedRow].AsInteger:=fdTraerProducto.FieldByName('idproducto').AsInteger;
    gridProducto.Cell[1,gridProducto.LastAddedRow].AsString:=fdTraerProducto.FieldByName('descripcion').AsString;
    fdTraerProducto.Next;
  end;

end;

end.
