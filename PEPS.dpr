program PEPS;

uses
  Vcl.Forms,
  USalida in 'USalida.pas' {FSalida},
  UProducto in 'UProducto.pas' {FProducto},
  UMenu in 'UMenu.pas' {FMenu},
  Vcl.Themes,
  Vcl.Styles,
  UIngreso in 'UIngreso.pas' {FIngreso},
  UReporte in 'UReporte.pas' {FReporte};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFMenu, FMenu);
  Application.CreateForm(TFSalida, FSalida);
  Application.CreateForm(TFProducto, FProducto);
  Application.CreateForm(TFIngreso, FIngreso);
  Application.CreateForm(TFReporte, FReporte);
  Application.Run;
end.
