unit UMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client;

type
  TFMenu = class(TForm)
    mm1: TMainMenu;
    Producto1: TMenuItem;
    Ingreso1: TMenuItem;
    Salida1: TMenuItem;
    Reporte1: TMenuItem;
    Salir1: TMenuItem;
    FDConnection1: TFDConnection;
    procedure Producto1Click(Sender: TObject);
    procedure Ingreso1Click(Sender: TObject);
    procedure Salida1Click(Sender: TObject);
    procedure Reporte1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMenu: TFMenu;

implementation

{$R *.dfm}

uses UProducto, UIngreso, USalida, UReporte;

procedure TFMenu.Ingreso1Click(Sender: TObject);
begin
  FIngreso.showmodal();
end;

procedure TFMenu.Producto1Click(Sender: TObject);
begin
 Fproducto.showmodal();
end;

procedure TFMenu.Reporte1Click(Sender: TObject);
begin
  Freporte.showmodal();
end;

procedure TFMenu.Salida1Click(Sender: TObject);
begin
   Fsalida.showmodal();
end;

procedure TFMenu.Salir1Click(Sender: TObject);
begin
           application.terminate;
end;

end.
