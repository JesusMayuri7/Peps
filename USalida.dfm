object FSalida: TFSalida
  Left = 0
  Top = 0
  Caption = 'Salida de Productos'
  ClientHeight = 591
  ClientWidth = 1293
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
  object gridIngreso: TNextGrid6
    Left = 24
    Top = 178
    Width = 865
    Height = 319
    ParentColor = False
    TabOrder = 0
    ActiveView = NxReportGridView61
    ActiveViewIndex = 0
    ScrollBars = [sbHorizontal, sbVertical]
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
  object grp1: TGroupBox
    Left = 24
    Top = 91
    Width = 865
    Height = 73
    Caption = 'Producto'
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
      TabOrder = 5
      Text = '0.00'
      WantTabs = False
    end
    object btn1: TBitBtn
      Left = 795
      Top = 38
      Width = 54
      Height = 25
      Caption = 'Agregar'
      TabOrder = 4
      OnClick = btn1Click
    end
  end
  object grp2: TGroupBox
    Left = 24
    Top = 517
    Width = 872
    Height = 66
    Caption = 'Opciones'
    TabOrder = 2
    object Button1: TButton
      Left = 760
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Grabar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 618
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Nuevo'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object gridProducto: TNextGrid6
    Left = 902
    Top = 19
    Width = 387
    Height = 564
    ParentColor = False
    TabOrder = 3
    ActiveView = NxReportGridView62
    ActiveViewIndex = 0
    ScrollBars = [sbHorizontal, sbVertical]
    object NxReportGridView62: TNxReportGridView6
      ShowFooter = True
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
      Width = 50
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
      Width = 150
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
      Header.Caption = 'Precio'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Index = 2
      PlaceholderText = '1742.50'
      Position = 2
      FormatMask = '#,##0.00'
      InsertString = '0'
    end
    object colSaldo: TNxNumberColumn6
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
      Header.Caption = 'Saldo'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Index = 3
      PlaceholderText = '1742.50'
      Position = 3
      FormatMask = '#,##0.00'
      InsertString = '0'
    end
    object colIdStock: TNxNumberColumn6
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
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Index = 4
      PlaceholderText = '1742.50'
      Position = 4
      Visible = False
      FormatMask = '#,##0.00'
      InsertString = '0'
    end
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 12
    Width = 865
    Height = 73
    Caption = 'Destino'
    TabOrder = 4
    object Label1: TLabel
      Left = 32
      Top = 32
      Width = 23
      Height = 13
      Caption = 'Area'
    end
    object Label2: TLabel
      Left = 328
      Top = 32
      Width = 41
      Height = 13
      Caption = 'Personal'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 73
      Top = 30
      Width = 203
      Height = 21
      DropDownRows = 10
      KeyField = 'idarea'
      ListField = 'descripcion'
      ListSource = dsArea
      TabOrder = 0
    end
    object cbPersonal: TDBLookupComboBox
      Left = 393
      Top = 30
      Width = 432
      Height = 21
      DropDownRows = 10
      KeyField = 'idpersonal'
      ListField = 'nombres'
      ListSource = dsPersonal
      TabOrder = 1
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
      
        'INSERT INTO salida (producto_id,precio,cantidad,subtotal,idcabec' +
        'era) VALUES(:idproducto,:precio,:cantidad,:subtotal,:idcabecera)')
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
      end
      item
        Name = 'IDCABECERA'
        ParamType = ptInput
      end>
  end
  object fdstock: TFDQuery
    Connection = FMenu.FDConnection1
    SQL.Strings = (
      'UPDATE stock SET saldo=:saldo WHERE idstock=:idstock')
    Left = 656
    Top = 312
    ParamData = <
      item
        Name = 'SALDO'
        ParamType = ptInput
      end
      item
        Name = 'IDSTOCK'
        ParamType = ptInput
      end>
  end
  object fdVerStock: TFDQuery
    Connection = FMenu.FDConnection1
    SQL.Strings = (
      
        'SELECT stock.idstock,idproducto,descripcion,precio,saldo FROM pr' +
        'oducto,stock '
      
        'WHERE producto.idproducto=stock.producto_id AND producto.idprodu' +
        'cto=:idproducto'
      ' AND saldo>0  ORDER BY idproducto ASC')
    Left = 728
    Top = 248
    ParamData = <
      item
        Name = 'IDPRODUCTO'
        ParamType = ptInput
      end>
  end
  object fdArea: TFDTable
    Active = True
    IndexFieldNames = 'idarea'
    Connection = FMenu.FDConnection1
    UpdateOptions.UpdateTableName = 'peps.area'
    TableName = 'peps.area'
    Left = 248
    Top = 376
  end
  object fdPersonal: TFDTable
    Active = True
    IndexFieldNames = 'idpersonal'
    MasterSource = dsArea
    MasterFields = 'idarea'
    Connection = FMenu.FDConnection1
    UpdateOptions.UpdateTableName = 'peps.personal'
    TableName = 'peps.personal'
    Left = 360
    Top = 392
  end
  object dsPersonal: TDataSource
    AutoEdit = False
    DataSet = fdPersonal
    Left = 384
    Top = 456
  end
  object dsArea: TDataSource
    AutoEdit = False
    DataSet = fdArea
    Left = 232
    Top = 456
  end
  object fdCabecera: TFDQuery
    Connection = FMenu.FDConnection1
    SQL.Strings = (
      
        'INSERT INTO cabecera (idpersonal,fecha) VALUES (:idpersonal,NOW(' +
        '))')
    Left = 600
    Top = 400
    ParamData = <
      item
        Name = 'IDPERSONAL'
        ParamType = ptInput
      end>
  end
  object fdUltimo: TFDQuery
    Connection = FMenu.FDConnection1
    SQL.Strings = (
      'SELECT LAST_INSERT_ID() as id FROM cabecera')
    Left = 72
    Top = 264
  end
end
