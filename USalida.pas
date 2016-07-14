unit USalida;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, NxGridView6, NxColumns6,
  NxControls6, NxCustomGrid6, NxVirtualGrid6, NxGrid6, Vcl.Buttons, NxEdit6,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,json,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.DBCtrls;

type
  TFSalida = class(TForm)
    gridIngreso: TNextGrid6;
    grp1: TGroupBox;
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
    Button1: TButton;
    fdGrabar: TFDQuery;
    fdstock: TFDQuery;
    fdVerStock: TFDQuery;
    NxNumberColumn61: TNxNumberColumn6;
    colSaldo: TNxNumberColumn6;
    colIdStock: TNxNumberColumn6;
    Button2: TButton;
    GroupBox1: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    cbPersonal: TDBLookupComboBox;
    fdArea: TFDTable;
    fdPersonal: TFDTable;
    dsPersonal: TDataSource;
    dsArea: TDataSource;
    fdCabecera: TFDQuery;
    fdUltimo: TFDQuery;
    procedure txtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure btn1Click(Sender: TObject);
    procedure txtPrecioChange(Sender: TObject);
    procedure txtCantidadChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    procedure TraerStock();
    var SaldoArray:TJSONArray;
  public
    { Public declarations }
  end;

var
  FSalida: TFSalida;

implementation

{$R *.dfm}

uses UMenu;

procedure TFSalida.btn1Click(Sender: TObject);
var
  I: Integer;
  saldo:Real;
  item:TJSONObject;
begin

   if colsaldo.Footer.Value>=txtCantidad.AsFloat then
    begin

          saldo:=txtCantidad.AsFloat;
          for I := 0 to gridProducto.RowCount-1 do
          begin

               if (gridProducto.Cell[colSaldo.Position,I].AsFloat>=saldo) then
                   begin
                      gridProducto.Cell[colSaldo.Position,I].AsFloat:=gridProducto.Cell[colSaldo.Position,I].AsFloat-saldo;
                      item := TJSONObject.Create();
                      item.AddPair('IdStock', gridProducto.Cell[colIdStock.Position,I].AsString);
                      item.AddPair('Saldo',gridProducto.Cell[colSaldo.Position,I].AsString );
                      SaldoArray.addElement(item);
                   Break;
                   end
               else
                 begin
                  saldo:=saldo-gridProducto.Cell[colSaldo.Position,I].AsFloat;
                  gridProducto.Cell[colSaldo.Position,I].AsFloat:=0;
                      item := TJSONObject.Create();
                      item.AddPair('IdStock', gridProducto.Cell[colIdStock.Position,I].AsString);
                      item.AddPair('Saldo',gridProducto.Cell[colSaldo.Position,I].AsString);
                      SaldoArray.addElement(item);

                 end;

          end;





          with gridIngreso do
          begin
              AddRow(1);
              Cell[ColCodigo.position,gridIngreso.LastAddedRow].AsInteger:=txtCodigo.AsInteger;
              Cell[colDescripcion.position,gridIngreso.LastAddedRow].AsString:=txtDescripcion.Text;
              Cell[colCantidad.position,gridIngreso.LastAddedRow].AsFloat:=txtCantidad.AsFloat;
              Cell[colPrecio.position,gridIngreso.LastAddedRow].AsFloat:=txtPrecio.AsFloat;
              Cell[colSubtotal.position,gridIngreso.LastAddedRow].AsFloat:=txtSubtotal.AsFloat;

              Recalculate;
          end;
              gridProducto.Recalculate;
    end
    else
    begin
      ShowMessage('No hay stock suficiente');
    end;






end;

procedure TFSalida.Button1Click(Sender: TObject);
var
  I,id: Integer;
  aux:TJSONObject;
begin
   fdCabecera.Close;
   fdCabecera.ParamByName('idpersonal').AsInteger:=cbPersonal.KeyValue;
   fdCabecera.ExecSQL();

   fdUltimo.Close;
   fdUltimo.Open();
   id:=fdUltimo.FieldByName('id').AsInteger;


   for I := 0 to gridIngreso.RowCount-1 do
   begin
         fdGrabar.Close;
         fdGrabar.ParamByName('idproducto').AsInteger:=gridIngreso.Cell[colCodigo.Position,I].AsInteger;
         fdGrabar.ParamByName('precio').AsFloat:=gridIngreso.Cell[colPrecio.Position,I].AsFloat;
         fdGrabar.ParamByName('cantidad').AsFloat:=gridIngreso.Cell[colCantidad.Position,I].AsFloat;
         fdGrabar.ParamByName('subtotal').AsFloat:=gridIngreso.Cell[colSubtotal.Position,I].AsFloat;
         fdGrabar.ParamByName('idcabecera').AsInteger:= id;
         fdGrabar.ExecSQL();
   end;
   if fdGrabar.RowsAffected>0 then
      begin
          for i:=0 to SaldoArray.Size-1  do
          begin
            aux:=TJSONObject.Create;
            aux:=Saldoarray.Items[i] as TJSONObject;
             fdstock.Close;
             fdstock.ParamByName('saldo').AsString:=(aux as TJSONObject).GetValue('Saldo').Value;
             fdstock.ParamByName('idstock').AsString:=(aux as TJSONObject).GetValue('IdStock').Value;
             fdstock.ExecSQL();
          end;

        ShowMessage('Ingreso grabado exitosamente');

      end;
end;

procedure TFSalida.Button2Click(Sender: TObject);
begin
  SaldoArray:=TJSONArray.Create();
  txtcodigo.AsInteger:=0;
  txtcodigo.SetFocus;
  gridIngreso.ClearRows;
end;

procedure TFSalida.FormCreate(Sender: TObject);
begin
          SaldoArray := tjsonarray.Create;
end;

procedure TFSalida.TraerStock;
begin
  gridProducto.ClearRows;
  fdVerStock.Close;
  fdVerStock.ParamByName('idproducto').AsInteger:=txtCodigo.AsInteger;
  fdVerStock.Open();
  while not(fdVerStock.Eof) do
  begin
    gridProducto.AddRow(1);
    gridProducto.Cell[0,gridProducto.LastAddedRow].AsInteger:=fdVerStock.FieldByName('idproducto').AsInteger;
    gridProducto.Cell[1,gridProducto.LastAddedRow].AsString:=fdVerStock.FieldByName('descripcion').AsString;
    gridProducto.Cell[2,gridProducto.LastAddedRow].asfloat:=fdVerStock.FieldByName('Precio').AsFloat;
    gridProducto.Cell[3,gridProducto.LastAddedRow].asfloat:=fdVerStock.FieldByName('Saldo').AsFloat;
    gridProducto.Cell[colIdStock.Position,gridProducto.LastAddedRow].AsInteger:=fdVerStock.FieldByName('idstock').AsInteger;
    fdVerStock.Next;
  end;
  gridProducto.Recalculate;
end;


procedure TFSalida.txtCantidadChange(Sender: TObject);
begin
    txtsubtotal.AsFloat:=txtPrecio.AsFloat*txtCantidad.AsFloat;
end;

procedure TFSalida.txtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
     begin
       fdProducto.Close;
       fdProducto.ParamByName('idproducto').AsInteger:=txtCodigo.AsInteger;
       fdProducto.Open();
       txtDescripcion.Text:= fdProducto.FieldByName('descripcion').AsString;
       fdProducto.Close;
       TraerStock();

     end;
end;

procedure TFSalida.txtPrecioChange(Sender: TObject);
begin
    txtsubtotal.AsFloat:=txtPrecio.AsFloat*txtCantidad.AsFloat;
end;

end.
