unit UIngreso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, NxGridView6, NxColumns6,
  NxControls6, NxCustomGrid6, NxVirtualGrid6, NxGrid6, Vcl.Buttons, NxEdit6,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFIngreso = class(TForm)
    gridIngreso: TNextGrid6;
    grpProducto: TGroupBox;
    txt1: TLabel;
    txtDescripcion: TEdit;
    txtCantidad: TNxEdit6;
    txt2: TLabel;
    txtCodigo: TNxEdit6;
    txt3: TLabel;
    txtPrecio: TNxEdit6;
    txt4: TLabel;
    txtSubtotal: TNxEdit6;
    btn1: TBitBtn;
    NxIncrementColumn61: TNxIncrementColumn6;
    colCodigo: TNxNumberColumn6;
    colDescripcion: TNxTextColumn6;
    colCantidad: TNxNumberColumn6;
    colPrecio: TNxNumberColumn6;
    colSubtotal: TNxNumberColumn6;
    colEliminar: TNxGraphicColumn6;
    NxReportGridView61: TNxReportGridView6;
    grp2: TGroupBox;
    fdProducto: TFDQuery;
    gridProducto: TNextGrid6;
    NxReportGridView62: TNxReportGridView6;
    NxNumberColumn65: TNxNumberColumn6;
    NxTextColumn62: TNxTextColumn6;
    fdTraerProducto: TFDQuery;
    btnGrabar: TButton;
    fdGrabar: TFDQuery;
    fdstock: TFDQuery;
    btnNuevo: TButton;
    procedure txtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure txtPrecioChange(Sender: TObject);
    procedure txtCantidadChange(Sender: TObject);
    procedure btnGrabarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
  private
    { Private declarations }
    procedure TraerProductos();
  public
    { Public declarations }
  end;

var
  FIngreso: TFIngreso;

implementation

{$R *.dfm}

uses UMenu;

procedure TFIngreso.btn1Click(Sender: TObject);
begin
    with gridIngreso do
    begin
        AddRow(1);
        Cell[ColCodigo.position,gridIngreso.LastAddedRow].AsInteger:=txtCodigo.AsInteger;
        Cell[colDescripcion.position,gridIngreso.LastAddedRow].AsString:=txtDescripcion.Text;
        Cell[colCantidad.position,gridIngreso.LastAddedRow].AsFloat:=txtCantidad.AsFloat;
        Cell[colPrecio.position,gridIngreso.LastAddedRow].AsFloat:=txtPrecio.AsFloat;
        Cell[colSubtotal.position,gridIngreso.LastAddedRow].AsFloat:=txtSubtotal.AsFloat;
        Recalculate;
                txtCodigo.AsInteger:=0;
        txtCodigo.SetFocus;

    end;
end;

procedure TFIngreso.btnGrabarClick(Sender: TObject);
var
  I: Integer;
begin
   for I := 0 to gridIngreso.RowCount-1 do
   begin
         fdGrabar.Close;
         fdGrabar.ParamByName('idproducto').AsInteger:=gridIngreso.Cell[colCodigo.Position,I].AsInteger;
         fdGrabar.ParamByName('precio').AsFloat:=gridIngreso.Cell[colPrecio.Position,I].AsFloat;
         fdGrabar.ParamByName('cantidad').AsFloat:=gridIngreso.Cell[colCantidad.Position,I].AsFloat;
         fdGrabar.ParamByName('subtotal').AsFloat:=gridIngreso.Cell[colSubtotal.Position,I].AsFloat;
         fdGrabar.ExecSQL();

         fdstock.Close;
         fdstock.ParamByName('producto_id').AsInteger:=gridIngreso.Cell[colCodigo.Position,I].AsInteger;
         fdstock.ParamByName('precio').AsFloat:=gridIngreso.Cell[colPrecio.Position,I].AsFloat;
         fdstock.ParamByName('cantidad').AsFloat:=gridIngreso.Cell[colCantidad.Position,I].AsFloat;
         fdstock.ParamByName('saldo').AsFloat:=gridIngreso.Cell[colCantidad.Position,I].AsFloat;
         fdstock.ExecSQL();

   end;
   if fdGrabar.RowsAffected>0 then
      begin
        ShowMessage('Ingreso grabado exitosamente');
        grpProducto.Enabled:=false;
        btnGrabar.Enabled:=false;
        btnNuevo.Enabled:=true;

      end;
end;

procedure TFIngreso.btnNuevoClick(Sender: TObject);
begin
grpProducto.Enabled:=true;
gridIngreso.ClearRows;
TxtCodigo.AsInteger:=0;
txtDescripcion.Text:='';
txtPrecio.AsFloat:=0;
txtCantidad.AsFloat:=0;
txtSubtotal.AsFloat:=0;
txtCodigo.SetFocus;
btnNUevo.Enabled:=false;
btnGrabar.Enabled:=true;
end;

procedure TFIngreso.FormCreate(Sender: TObject);
begin
   TraerProductos;
end;

procedure TFIngreso.FormShow(Sender: TObject);
begin
TraerProductos();
end;

procedure TFIngreso.TraerProductos;
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


procedure TFIngreso.txtCantidadChange(Sender: TObject);
begin
    txtsubtotal.AsFloat:=txtPrecio.AsFloat*txtCantidad.AsFloat;
end;

procedure TFIngreso.txtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
     begin
       if txtcodigo.AsInteger>0 then
       begin
       fdProducto.Close;
       fdProducto.ParamByName('idproducto').AsInteger:=txtCodigo.AsInteger;
       fdProducto.Open();
       txtDescripcion.Text:= fdProducto.FieldByName('descripcion').AsString;
       fdProducto.Close;
       txtCantidad.SetFocus;
       end
       else
          begin

          btnGrabar.SetFocus;
          end;
     end;
end;

procedure TFIngreso.txtPrecioChange(Sender: TObject);
begin
    txtsubtotal.AsFloat:=txtPrecio.AsFloat*txtCantidad.AsFloat;
end;

end.
