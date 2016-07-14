object FIngreso: TFIngreso
  Left = 0
  Top = 0
  Caption = 'Ingreso de Productos'
  ClientHeight = 512
  ClientWidth = 1231
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gridIngreso: TNextGrid6
    Left = 24
    Top = 98
    Width = 865
    Height = 319
    ParentColor = False
    TabOrder = 0
    ActiveView = NxReportGridView61
    ActiveViewIndex = 0
    ScrollBars = [sbHorizontal, sbVertical]
    SelectFullRow = True
    object NxReportGridView61: TNxReportGridView6
      GridLines = True
      ShowFooter = True
    end
    object NxIncrementColumn61: TNxIncrementColumn6
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
      Header.Alignment = taCenter
      Header.Caption = '#'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Index = 0
      PlaceholderText = '1'
      Position = 0
      Width = 25
      InsertString = '-1'
    end
    object colCodigo: TNxNumberColumn6
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
      Header.Alignment = taCenter
      Header.Caption = 'Codigo'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Index = 1
      PlaceholderText = '1742.50'
      Position = 1
      Width = 40
      FormatMask = '0'
      Precision = 0
      InsertString = '0'
    end
    object colDescripcion: TNxTextColumn6
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
      Header.Alignment = taCenter
      Header.Caption = 'Descripcion'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Index = 2
      PlaceholderText = 'Text Text'
      Position = 2
      Width = 500
    end
    object colCantidad: TNxNumberColumn6
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
      Header.Alignment = taCenter
      Header.Caption = 'Cantidad'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Index = 3
      PlaceholderText = '1742.50'
      Position = 3
      Width = 70
      FormatMask = '#,##0.00'
      InsertString = '0'
    end
    object colPrecio: TNxNumberColumn6
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
      Header.Alignment = taCenter
      Header.Caption = 'Precio'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Index = 4
      PlaceholderText = '1742.50'
      Position = 4
      Width = 70
      FormatMask = '#,##0.00'
      InsertString = '0'
    end
    object colSubtotal: TNxNumberColumn6
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
      Footer.FormulaKind = fkSum
      Footer.FormatMask = '#,##0.00'
      Header.Alignment = taCenter
      Header.Caption = 'Subtotal'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Index = 5
      PlaceholderText = '1742.50'
      Position = 5
      Width = 70
      FormatMask = '#,##0.00'
      InsertString = '0'
    end
    object colEliminar: TNxGraphicColumn6
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
      Header.Alignment = taCenter
      Header.Caption = '-'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Index = 6
      Position = 6
      Width = 60
    end
  end
  object grpProducto: TGroupBox
    Left = 24
    Top = 19
    Width = 865
    Height = 73
    Caption = 'Producto'
    Enabled = False
    TabOrder = 1
    object txt1: TLabel
      Left = 32
      Top = 21
      Width = 33
      Height = 13
      Caption = 'Codigo'
    end
    object txt2: TLabel
      Left = 568
      Top = 21
      Width = 43
      Height = 13
      Caption = 'Cantidad'
    end
    object txt3: TLabel
      Left = 664
      Top = 21
      Width = 29
      Height = 13
      Caption = 'Precio'
    end
    object txt4: TLabel
      Left = 728
      Top = 21
      Width = 40
      Height = 13
      Caption = 'Subtotal'
    end
    object txtDescripcion: TEdit
      Left = 88
      Top = 40
      Width = 465
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object txtCantidad: TNxEdit6
      Left = 568
      Top = 40
      Width = 57
      Height = 21
      Alignment = taRightJustify
      NumbersOnly = True
      TabOrder = 2
      Text = '0.00'
      WantTabs = False
      OnChange = txtCantidadChange
    end
    object txtCodigo: TNxEdit6
      Left = 25
      Top = 40
      Width = 57
      Height = 21
      Alignment = taCenter
      NumbersOnly = True
      TabOrder = 0
      Text = '0'
      WantTabs = False
      OnKeyPress = txtCodigoKeyPress
    end
    object txtPrecio: TNxEdit6
      Left = 648
      Top = 40
      Width = 57
      Height = 21
      Alignment = taRightJustify
      NumbersOnly = True
      TabOrder = 3
      Text = '0.00'
      WantTabs = False
      OnChange = txtPrecioChange
    end
    object txtSubtotal: TNxEdit6
      Left = 720
      Top = 40
      Width = 57
      Height = 21
      Alignment = taRightJustify
      Enabled = False
      NumbersOnly = True
      TabOrder = 4
      Text = '0.00'
      WantTabs = False
    end
    object btn1: TBitBtn
      Left = 795
      Top = 38
      Width = 54
      Height = 25
      Caption = 'Agregar'
      TabOrder = 5
      OnClick = btn1Click
    end
  end
  object grp2: TGroupBox
    Left = 24
    Top = 423
    Width = 872
    Height = 66
    Caption = 'Opciones'
    TabOrder = 2
    object btnGrabar: TButton
      Left = 760
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Grabar'
      Enabled = False
      TabOrder = 0
      OnClick = btnGrabarClick
    end
    object btnNuevo: TButton
      Left = 648
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Nuevo'
      TabOrder = 1
      OnClick = btnNuevoClick
    end
  end
  object gridProducto: TNextGrid6
    Left = 902
    Top = 19
    Width = 315
    Height = 470
    ParentColor = False
    TabOrder = 3
    ActiveView = NxReportGridView62
    ActiveViewIndex = 0
    ScrollBars = [sbHorizontal, sbVertical]
    object NxReportGridView62: TNxReportGridView6
    end
    object NxNumberColumn65: TNxNumberColumn6
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
    object NxTextColumn62: TNxTextColumn6
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
      Width = 200
    end
  end
  object fdProducto: TFDQuery
    Connection = FMenu.FDConnection1
    SQL.Strings = (
      
        'SELECT idproducto,descripcion FROM producto WHERE idproducto=:id' +
        'producto')
    Left = 440
    Top = 192
    ParamData = <
      item
        Name = 'IDPRODUCTO'
        ParamType = ptInput
      end>
  end
  object fdTraerProducto: TFDQuery
    Connection = FMenu.FDConnection1
    SQL.Strings = (
      'SELECT idproducto,descripcion FROM producto')
    Left = 320
    Top = 264
  end
  object fdGrabar: TFDQuery
    Connection = FMenu.FDConnection1
    SQL.Strings = (
      
        'INSERT INTO ingreso (producto_id,precio,cantidad,subtotal) VALUE' +
        'S(:idproducto,:precio,:cantidad,:subtotal)')
    Left = 560
    Top = 256
    ParamData = <
      item
        Name = 'IDPRODUCTO'
        ParamType = ptInput
      end
      item
        Name = 'PRECIO'
        ParamType = ptInput
      end
      item
        Name = 'CANTIDAD'
        ParamType = ptInput
      end
      item
        Name = 'SUBTOTAL'
        ParamType = ptInput
      end>
  end
  object fdstock: TFDQuery
    Connection = FMenu.FDConnection1
    SQL.Strings = (
      
        'INSERT INTO stock (precio,cantidad,producto_id,saldo) VALUES (:p' +
        'recio,:cantidad,:producto_id,:saldo)')
    Left = 656
    Top = 240
    ParamData = <
      item
        Name = 'PRECIO'
        ParamType = ptInput
      end
      item
        Name = 'CANTIDAD'
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTO_ID'
        ParamType = ptInput
      end
      item
        Name = 'SALDO'
        ParamType = ptInput
      end>
  end
end
