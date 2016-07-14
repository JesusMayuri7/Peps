object FProducto: TFProducto
  Left = 0
  Top = 0
  Caption = 'FProducto'
  ClientHeight = 551
  ClientWidth = 801
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object grp1: TGroupBox
    Left = 24
    Top = 8
    Width = 753
    Height = 65
    Caption = 'grp1'
    TabOrder = 0
    object txt1: TLabel
      Left = 48
      Top = 27
      Width = 54
      Height = 13
      Caption = 'Descripcion'
    end
    object txtdescripcion: TEdit
      Left = 120
      Top = 24
      Width = 481
      Height = 21
      TabOrder = 0
    end
    object Button1: TButton
      Left = 648
      Top = 22
      Width = 75
      Height = 25
      Caption = 'Agregar'
      Default = True
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object gridProducto: TNextGrid6
    Left = 24
    Top = 96
    Width = 753
    Height = 433
    ParentColor = False
    TabOrder = 1
    ActiveView = NxReportGridView61
    ActiveViewIndex = 0
    ScrollBars = [sbHorizontal, sbVertical]
    object NxReportGridView61: TNxReportGridView6
    end
    object NxNumberColumn61: TNxNumberColumn6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Footer.Font.Charset = DEFAULT_CHARSET
      Footer.Font.Color = clWindowText
      Footer.Font.Height = -11
      Footer.Font.Name = 'Tahoma'
      Footer.Font.Style = []
      Footer.FormatMask = '#,##0.00'
      Header.Caption = 'Codigo'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Index = 0
      PlaceholderText = '1742.50'
      Position = 0
      FormatMask = '0'
      Precision = 0
      InsertString = '0'
    end
    object NxTextColumn61: TNxTextColumn6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Footer.Font.Charset = DEFAULT_CHARSET
      Footer.Font.Color = clWindowText
      Footer.Font.Height = -11
      Footer.Font.Name = 'Tahoma'
      Footer.Font.Style = []
      Footer.FormatMask = '#,##0.00'
      Header.Caption = 'Descripcion'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Index = 1
      PlaceholderText = 'Text Text'
      Position = 1
    end
  end
  object fdProducto: TFDQuery
    Connection = FMenu.FDConnection1
    SQL.Strings = (
      'INSERT INTO producto (descripcion) VALUES(:descripcion)')
    Left = 352
    Top = 176
    ParamData = <
      item
        Name = 'DESCRIPCION'
        ParamType = ptInput
      end>
  end
  object fdTraerProducto: TFDQuery
    Connection = FMenu.FDConnection1
    SQL.Strings = (
      'SELECT idproducto,descripcion FROM producto')
    Left = 304
    Top = 272
  end
end
