object FMenu: TFMenu
  Left = 0
  Top = 0
  Caption = 'DESARROLLADO POR - Bladimir Choquecota Aro - Noel Ccosi Alejo'
  ClientHeight = 429
  ClientWidth = 840
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object mm1: TMainMenu
    Left = 216
    Top = 40
    object Producto1: TMenuItem
      Caption = 'Producto'
      OnClick = Producto1Click
    end
    object Ingreso1: TMenuItem
      Caption = 'Ingreso'
      OnClick = Ingreso1Click
    end
    object Salida1: TMenuItem
      Caption = 'Salida'
      OnClick = Salida1Click
    end
    object Reporte1: TMenuItem
      Caption = 'Reporte'
      OnClick = Reporte1Click
    end
    object Salir1: TMenuItem
      Caption = 'Salir'
      OnClick = Salir1Click
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=peps'
      'User_Name=root'
      'Server=localhost'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 408
    Top = 136
  end
end
