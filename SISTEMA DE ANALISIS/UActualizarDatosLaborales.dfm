object FActualizarDatosLaborales: TFActualizarDatosLaborales
  Left = 0
  Top = 0
  Caption = 'Actualizar Datos Laborales '
  ClientHeight = 640
  ClientWidth = 825
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
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'Modificar Datos'
    TabOrder = 0
    Height = 169
    Width = 825
    object lbl1: TLabel
      Left = 16
      Top = 24
      Width = 88
      Height = 13
      Caption = 'Centro de Trabajo'
      Transparent = True
    end
    object lbl2: TLabel
      Left = 152
      Top = 24
      Width = 50
      Height = 13
      Caption = 'Ocupaci'#243'n'
      Transparent = True
    end
    object lbl3: TLabel
      Left = 288
      Top = 24
      Width = 29
      Height = 13
      Caption = 'Cargo'
      Transparent = True
    end
    object lbl4: TLabel
      Left = 424
      Top = 24
      Width = 51
      Height = 13
      Caption = 'Organismo'
      Transparent = True
    end
    object lbl5: TLabel
      Left = 560
      Top = 24
      Width = 29
      Height = 13
      Caption = 'Fecha'
      Transparent = True
    end
    object lbl6: TLabel
      Left = 696
      Top = 24
      Width = 44
      Height = 13
      Caption = 'KT Fecha'
      Transparent = True
    end
    object cxButton1: TcxButton
      Left = 16
      Top = 120
      Width = 75
      Height = 25
      Caption = 'Actualizar'
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 122
      Top = 120
      Width = 97
      Height = 25
      Caption = 'Duplicar Registro'
      TabOrder = 1
      OnClick = cxButton2Click
    end
    object cxDateEdit1: TcxDateEdit
      Left = 560
      Top = 40
      TabOrder = 2
      Width = 121
    end
    object cxTextEdit1: TcxTextEdit
      Left = 16
      Top = 40
      TabOrder = 3
      Width = 121
    end
    object cxTextEdit2: TcxTextEdit
      Left = 152
      Top = 40
      TabOrder = 4
      Width = 121
    end
    object cxTextEdit3: TcxTextEdit
      Left = 288
      Top = 40
      TabOrder = 5
      Width = 121
    end
    object cxTextEdit4: TcxTextEdit
      Left = 696
      Top = 40
      TabOrder = 6
      Width = 121
    end
    object cxButton3: TcxButton
      Left = 248
      Top = 120
      Width = 97
      Height = 25
      Caption = 'Nuevo Registro'
      TabOrder = 7
      OnClick = cxButton3Click
    end
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 424
      Top = 40
      Properties.KeyFieldNames = 'ORGANISMOS'
      Properties.ListColumns = <
        item
          FieldName = 'ORGANISMOS'
        end>
      TabOrder = 8
      Width = 121
    end
    object cxLabel1: TcxLabel
      Left = 16
      Top = 70
      Caption = 'IdObjetivo'
      Transparent = True
    end
    object cxTextEdit5: TcxTextEdit
      Left = 16
      Top = 88
      Properties.ReadOnly = False
      TabOrder = 10
      Width = 121
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 0
    Top = 169
    Align = alClient
    Caption = 'Datos laborales'
    TabOrder = 1
    Height = 471
    Width = 825
    object cxGrid3: TcxGrid
      Left = 2
      Top = 18
      Width = 821
      Height = 451
      Align = alClient
      TabOrder = 0
      object cxGrid3DBTableView3: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Edit.Visible = False
        NavigatorButtons.Cancel.Visible = False
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        FilterBox.Position = fpTop
        OnCellClick = cxGrid3DBTableView3CellClick
        DataController.DataModeController.GridMode = True
        DataController.DataSource = FActualizarDatosGenerales.DSobjlab
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
        object cxGrid3DBTableView3IdObjetivo: TcxGridDBColumn
          DataBinding.FieldName = 'IdObjetivo'
        end
        object cxGrid3DBTableView3CentroDeTrabajo: TcxGridDBColumn
          DataBinding.FieldName = 'CentroDeTrabajo'
          Width = 123
        end
        object cxGrid3DBTableView3Ocupacion: TcxGridDBColumn
          DataBinding.FieldName = 'Ocupacion'
          Width = 115
        end
        object cxGrid3DBTableView3Cargo: TcxGridDBColumn
          DataBinding.FieldName = 'Cargo'
          Width = 118
        end
        object cxGrid3DBTableView3Organismo: TcxGridDBColumn
          DataBinding.FieldName = 'Organismo'
          Width = 107
        end
        object cxGrid3DBTableView3Fecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
          Width = 100
        end
        object cxGrid3DBTableView3ktfecha: TcxGridDBColumn
          DataBinding.FieldName = 'ktfecha'
          Width = 98
        end
        object cxGrid3DBTableView3IdLaborales: TcxGridDBColumn
          DataBinding.FieldName = 'IdLaborales'
        end
      end
      object cxGrid3Level1: TcxGridLevel
        GridView = cxGrid3DBTableView3
      end
    end
  end
  object UniSQL1: TUniSQL
    Connection = DM.conserv
    SQL.Strings = (
      'UPDATE `objetivos datos laborales`'
      'SET '
      '  centrodetrabajo=:Pcentrodetrabajo,'
      '  ocupacion=:Pocupacion,'
      '  cargo=:Pcargo,'
      '  organismo=:Porganismo,'
      '  ktfecha=:Pktfecha,'
      '  fecha=:Pfecha,'
      '  IdObjetivo=:Pidobjetivo'
      'WHERE `objetivos datos laborales`.`IdLaborales` = :Pid;')
    Left = 680
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pcentrodetrabajo'
      end
      item
        DataType = ftUnknown
        Name = 'Pocupacion'
      end
      item
        DataType = ftUnknown
        Name = 'Pcargo'
      end
      item
        DataType = ftUnknown
        Name = 'Porganismo'
      end
      item
        DataType = ftUnknown
        Name = 'Pktfecha'
      end
      item
        DataType = ftUnknown
        Name = 'Pfecha'
      end
      item
        DataType = ftUnknown
        Name = 'Pidobjetivo'
      end
      item
        DataType = ftUnknown
        Name = 'Pid'
      end>
  end
  object UniSQL2: TUniSQL
    Connection = DM.conserv
    SQL.Strings = (
      'insert into `objetivos datos laborales`'
      '( centrodetrabajo,'
      '  ocupacion,'
      '  cargo,'
      '  organismo,'
      '  ktfecha,'
      '  fecha,'
      'IdObjetivo)'
      'values'
      '(:Pcentrodetrabajo,'
      ':Pocupacion,'
      ':Pcargo,'
      ':Porganismo,'
      ':Pktfecha,'
      ':Pfecha,'
      ':Pidobjetivo);')
    Left = 728
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pcentrodetrabajo'
      end
      item
        DataType = ftUnknown
        Name = 'Pocupacion'
      end
      item
        DataType = ftUnknown
        Name = 'Pcargo'
      end
      item
        DataType = ftUnknown
        Name = 'Porganismo'
      end
      item
        DataType = ftUnknown
        Name = 'Pktfecha'
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
      
        'insert into `objetivos datos laborales` (IdObjetivo) values (:Pi' +
        'dobjetivo);')
    Left = 776
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pidobjetivo'
      end>
  end
end
