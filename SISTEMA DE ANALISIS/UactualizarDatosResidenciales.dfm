object FActualizarDatosResidenciales: TFActualizarDatosResidenciales
  Left = 0
  Top = 0
  Caption = 'Actualizar Datos Residenciales'
  ClientHeight = 622
  ClientWidth = 824
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox4: TcxGroupBox
    Left = 0
    Top = 201
    Align = alClient
    Caption = 'Datos residenciales'
    TabOrder = 0
    Height = 421
    Width = 824
    object cxGrid4: TcxGrid
      Left = 2
      Top = 18
      Width = 820
      Height = 401
      Align = alClient
      TabOrder = 0
      object cxGrid4DBTableView4: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Edit.Visible = False
        NavigatorButtons.Cancel.Visible = False
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        FilterBox.Position = fpTop
        OnCellClick = cxGrid4DBTableView4CellClick
        DataController.DataModeController.GridMode = True
        DataController.DataSource = FActualizarDatosGenerales.DSobjres
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.NavigatorHints = True
        OptionsData.CancelOnExit = False
        OptionsData.Editing = False
        OptionsView.Navigator = True
        object cxGrid4DBTableView4IdObjetivo: TcxGridDBColumn
          DataBinding.FieldName = 'IdObjetivo'
          Width = 62
        end
        object cxGrid4DBTableView4Calle: TcxGridDBColumn
          DataBinding.FieldName = 'Calle'
          Width = 104
        end
        object cxGrid4DBTableView4Calle1: TcxGridDBColumn
          DataBinding.FieldName = 'Calle1'
          Width = 134
        end
        object cxGrid4DBTableView4Calle2: TcxGridDBColumn
          DataBinding.FieldName = 'Calle2'
          Width = 110
        end
        object cxGrid4DBTableView4Numero: TcxGridDBColumn
          DataBinding.FieldName = 'Numero'
        end
        object cxGrid4DBTableView4Edificio: TcxGridDBColumn
          DataBinding.FieldName = 'Edificio'
        end
        object cxGrid4DBTableView4Piso: TcxGridDBColumn
          DataBinding.FieldName = 'Piso'
          Width = 71
        end
        object cxGrid4DBTableView4Apartamento: TcxGridDBColumn
          DataBinding.FieldName = 'Apartamento'
          Width = 76
        end
        object cxGrid4DBTableView4Barrio: TcxGridDBColumn
          DataBinding.FieldName = 'Barrio'
        end
        object cxGrid4DBTableView4Municipio: TcxGridDBColumn
          DataBinding.FieldName = 'Municipio'
        end
        object cxGrid4DBTableView4Provincia: TcxGridDBColumn
          DataBinding.FieldName = 'Provincia'
        end
        object cxGrid4DBTableView4Fecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
        end
        object cxGrid4DBTableView4ktfecha: TcxGridDBColumn
          DataBinding.FieldName = 'ktfecha'
        end
        object cxGrid4DBTableView4IdUbicacion: TcxGridDBColumn
          DataBinding.FieldName = 'IdUbicacion'
        end
      end
      object cxGrid4Level1: TcxGridLevel
        GridView = cxGrid4DBTableView4
      end
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'Modificar Datos'
    TabOrder = 1
    Height = 201
    Width = 824
    object lbl1: TLabel
      Left = 24
      Top = 16
      Width = 23
      Height = 13
      Caption = 'Calle'
      Transparent = True
    end
    object lbl2: TLabel
      Left = 456
      Top = 13
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
      Transparent = True
    end
    object lbl3: TLabel
      Left = 608
      Top = 13
      Width = 33
      Height = 13
      Caption = 'Edificio'
      Transparent = True
    end
    object lbl4: TLabel
      Left = 168
      Top = 56
      Width = 19
      Height = 13
      Caption = 'Piso'
      Transparent = True
    end
    object lbl5: TLabel
      Left = 24
      Top = 56
      Width = 63
      Height = 13
      Caption = 'Apartamento'
      Transparent = True
    end
    object lbl6: TLabel
      Left = 168
      Top = 16
      Width = 29
      Height = 13
      Caption = 'Calle1'
      Transparent = True
    end
    object lbl7: TLabel
      Left = 312
      Top = 16
      Width = 29
      Height = 13
      Caption = 'Calle2'
      Transparent = True
    end
    object lbl8: TLabel
      Left = 312
      Top = 56
      Width = 28
      Height = 13
      Caption = 'Barrio'
      Transparent = True
    end
    object lbl9: TLabel
      Left = 456
      Top = 56
      Width = 43
      Height = 13
      Caption = 'Municipio'
      Transparent = True
    end
    object lbl10: TLabel
      Left = 608
      Top = 56
      Width = 43
      Height = 13
      Caption = 'Provincia'
      Transparent = True
    end
    object lbl11: TLabel
      Left = 168
      Top = 104
      Width = 29
      Height = 13
      Caption = 'Fecha'
      Transparent = True
    end
    object lbl12: TLabel
      Left = 24
      Top = 104
      Width = 41
      Height = 13
      Caption = 'KTFecha'
      Transparent = True
    end
    object cxTextEdit1: TcxTextEdit
      Left = 24
      Top = 32
      TabOrder = 0
      Width = 121
    end
    object cxTextEdit2: TcxTextEdit
      Left = 168
      Top = 32
      TabOrder = 1
      Width = 121
    end
    object cxTextEdit3: TcxTextEdit
      Left = 312
      Top = 29
      TabOrder = 2
      Width = 121
    end
    object cxTextEdit4: TcxTextEdit
      Left = 456
      Top = 29
      TabOrder = 3
      Width = 121
    end
    object cxTextEdit6: TcxTextEdit
      Left = 24
      Top = 120
      TabOrder = 4
      Width = 121
    end
    object cxTextEdit7: TcxTextEdit
      Left = 608
      Top = 29
      TabOrder = 5
      Width = 121
    end
    object cxTextEdit8: TcxTextEdit
      Left = 312
      Top = 72
      TabOrder = 6
      Width = 121
    end
    object cxTextEdit9: TcxTextEdit
      Left = 168
      Top = 72
      TabOrder = 7
      Width = 121
    end
    object cxTextEdit10: TcxTextEdit
      Left = 24
      Top = 72
      TabOrder = 8
      Width = 121
    end
    object cxButton1: TcxButton
      Left = 24
      Top = 160
      Width = 75
      Height = 25
      Caption = 'Actualizar'
      TabOrder = 9
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 168
      Top = 160
      Width = 105
      Height = 25
      Caption = 'Duplicar Registro'
      TabOrder = 10
      OnClick = cxButton2Click
    end
    object cxDateEdit1: TcxDateEdit
      Left = 168
      Top = 120
      TabOrder = 11
      Width = 121
    end
    object cxButton3: TcxButton
      Left = 312
      Top = 160
      Width = 97
      Height = 25
      Caption = 'Nuevo Registro'
      TabOrder = 12
      OnClick = cxButton3Click
    end
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 456
      Top = 72
      Properties.KeyFieldNames = 'municipio'
      Properties.ListColumns = <
        item
          FieldName = 'municipio'
        end>
      TabOrder = 13
      Width = 121
    end
    object cxLookupComboBox2: TcxLookupComboBox
      Left = 608
      Top = 72
      Properties.KeyFieldNames = 'Provincia'
      Properties.ListColumns = <
        item
          FieldName = 'Provincia'
        end>
      TabOrder = 14
      Width = 121
    end
    object cxLabel1: TcxLabel
      Left = 312
      Top = 102
      Caption = 'IdObjetivo'
      Transparent = True
    end
    object cxTextEdit5: TcxTextEdit
      Left = 312
      Top = 120
      TabOrder = 16
      Width = 121
    end
  end
  object UniSQL1: TUniSQL
    Connection = DM.conserv
    SQL.Strings = (
      'UPDATE `objetivos datos residenciales`'
      ' SET '
      '   Calle=:Pcalle,'
      '   Calle1=:PcalleA,'
      '   Calle2=:PcalleB,'
      '   Numero=:Pnumero,'
      '   ktfecha=:Pktfecha,'
      '   Edificio=:Pedificio,'
      '   Barrio=:Pbarrio,'
      '   Piso=:Ppiso,'
      '   Municipio=:Pmunicipio,'
      '   Apartamento=:Papartamento,'
      '   Provincia=:Pprovincia,'
      '   Fecha=:Pfecha,'
      '   IdObjetivo=:Pidobjetivo'
      ' WHERE `objetivos datos residenciales`.`IdUbicacion` = :Pid;')
    Left = 648
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pcalle'
      end
      item
        DataType = ftUnknown
        Name = 'PcalleA'
      end
      item
        DataType = ftUnknown
        Name = 'PcalleB'
      end
      item
        DataType = ftUnknown
        Name = 'Pnumero'
      end
      item
        DataType = ftUnknown
        Name = 'Pktfecha'
      end
      item
        DataType = ftUnknown
        Name = 'Pedificio'
      end
      item
        DataType = ftUnknown
        Name = 'Pbarrio'
      end
      item
        DataType = ftUnknown
        Name = 'Ppiso'
      end
      item
        DataType = ftUnknown
        Name = 'Pmunicipio'
      end
      item
        DataType = ftUnknown
        Name = 'Papartamento'
      end
      item
        DataType = ftUnknown
        Name = 'Pprovincia'
      end
      item
        DataType = ftDateTime
        Name = 'Pfecha'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Pidobjetivo'
      end
      item
        DataType = ftInteger
        Name = 'Pid'
        ParamType = ptInput
      end>
  end
  object UniSQL2: TUniSQL
    Connection = DM.conserv
    SQL.Strings = (
      'insert into `objetivos datos residenciales`'
      '(  Calle,'
      '   Calle1,'
      '   Calle2,'
      '   Numero,'
      '   ktfecha,'
      '   Edificio,'
      '   Barrio,'
      '   Piso,'
      '   Municipio,'
      '   Apartamento,'
      '   Provincia,'
      '   Fecha,'
      '   IdObjetivo)'
      'values'
      '(:Pcalle,'
      ':PcalleA,'
      ':PcalleB,'
      ':Pnumero,'
      ':Pktfecha,'
      ':Pedificio,'
      ':Pbarrio,'
      ':Ppiso,'
      ':Pmunicipio,'
      ':Papartamento,'
      ':Pprovincia,'
      ':Pfecha,'
      ':Pidobjetivo);')
    Left = 704
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pcalle'
      end
      item
        DataType = ftUnknown
        Name = 'PcalleA'
      end
      item
        DataType = ftUnknown
        Name = 'PcalleB'
      end
      item
        DataType = ftUnknown
        Name = 'Pnumero'
      end
      item
        DataType = ftUnknown
        Name = 'Pktfecha'
      end
      item
        DataType = ftUnknown
        Name = 'Pedificio'
      end
      item
        DataType = ftUnknown
        Name = 'Pbarrio'
      end
      item
        DataType = ftUnknown
        Name = 'Ppiso'
      end
      item
        DataType = ftUnknown
        Name = 'Pmunicipio'
      end
      item
        DataType = ftUnknown
        Name = 'Papartamento'
      end
      item
        DataType = ftUnknown
        Name = 'Pprovincia'
      end
      item
        DataType = ftUnknown
        Name = 'Pfecha'
      end
      item
        DataType = ftUnknown
        Name = 'Pidobjetivo'
      end>
  end
  object UniSQL3: TUniSQL
    Connection = DM.conserv
    SQL.Strings = (
      
        'insert into `objetivos datos residenciales` (IdObjetivo) values ' +
        '(:Pidobjetivo);')
    Left = 760
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pidobjetivo'
      end>
  end
end
