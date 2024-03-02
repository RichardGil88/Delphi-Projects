object Form1: TForm1
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'Control'
  ClientHeight = 676
  ClientWidth = 875
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = ' Llene el grupo'
    TabOrder = 0
    ExplicitWidth = 842
    Height = 89
    Width = 875
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 40
      Top = 40
      Properties.KeyFieldNames = 'grupo'
      Properties.ListColumns = <
        item
          FieldName = 'grupo'
        end>
      Properties.ListSource = DM.DSQgrupos
      TabOrder = 0
      OnClick = cxLookupComboBox1Click
      Width = 145
    end
    object cxLabel1: TcxLabel
      Left = 40
      Top = 24
      Caption = 'Grupo'
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 240
      Top = 24
      Caption = '   '
      Transparent = True
    end
    object cxProgressBar1: TcxProgressBar
      Left = 240
      Top = 42
      TabOrder = 3
      Width = 121
    end
    object BotonExportarXLS: TcxButton
      Left = 749
      Top = 15
      Width = 123
      Height = 64
      Align = alRight
      Caption = 'EXPORTAR A XLS'
      TabOrder = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      OnClick = BotonExportarXLSClick
      ExplicitLeft = 716
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 89
    Align = alClient
    Caption = 'Datos'
    TabOrder = 1
    ExplicitWidth = 842
    Height = 408
    Width = 875
    object cxGrid1: TcxGrid
      Left = 3
      Top = 15
      Width = 869
      Height = 383
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 836
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Delete.Visible = False
        NavigatorButtons.Edit.Visible = False
        NavigatorButtons.Post.Visible = False
        NavigatorButtons.Cancel.Visible = False
        NavigatorButtons.Refresh.Visible = False
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        FilterBox.Visible = fvAlways
        DataController.DataSource = DM.DSTcontrol
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = 'duracion=#'
            Kind = skSum
            FieldName = 'Duracion'
            Column = cxGrid1DBTableView1Duracion
          end
          item
            Format = 'duraclick=#'
            Kind = skSum
            FieldName = 'duraclick'
            Column = cxGrid1DBTableView1duraclick
          end
          item
            Format = 'Cantidad=#'
            Kind = skCount
            FieldName = 'TipoTx'
            Column = cxGrid1DBTableView1TipoTx
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'duraclick'
            Column = cxGrid1DBTableView1duraclick
          end
          item
            Kind = skSum
            FieldName = 'duracion'
            Column = cxGrid1DBTableView1Duracion
          end
          item
            Kind = skCount
            FieldName = 'grupo'
            Column = cxGrid1DBTableView1grupo
          end>
        DataController.Summary.SummaryGroups = <
          item
            Links = <>
            SummaryItems = <>
          end>
        Filtering.ColumnMRUItemsList = False
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.MultiSelect = True
        OptionsView.Navigator = True
        OptionsView.Footer = True
        OptionsView.IndicatorWidth = 20
        object cxGrid1DBTableView1lugardemonitoreo: TcxGridDBColumn
          DataBinding.FieldName = 'lugar de monitoreo'
          Width = 95
        end
        object cxGrid1DBTableView1Fechainicio: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha inicio'
        end
        object cxGrid1DBTableView1fechita: TcxGridDBColumn
          Caption = 'fecha Categoriza'
          DataBinding.FieldName = 'fechita'
        end
        object cxGrid1DBTableView1grupo: TcxGridDBColumn
          DataBinding.FieldName = 'grupo'
          Width = 58
        end
        object cxGrid1DBTableView1Clave: TcxGridDBColumn
          DataBinding.FieldName = 'Clave'
          Visible = False
          GroupIndex = 2
        end
        object cxGrid1DBTableView1dptosecc: TcxGridDBColumn
          DataBinding.FieldName = 'dptosecc'
          Visible = False
          GroupIndex = 0
          Width = 140
        end
        object cxGrid1DBTableView1Duracion: TcxGridDBColumn
          DataBinding.FieldName = 'Duracion'
        end
        object cxGrid1DBTableView1duraclick: TcxGridDBColumn
          DataBinding.FieldName = 'duraclick'
        end
        object cxGrid1DBTableView1Sentido: TcxGridDBColumn
          DataBinding.FieldName = 'Sentido'
          Width = 77
        end
        object cxGrid1DBTableView1Telefonollamador: TcxGridDBColumn
          DataBinding.FieldName = 'Telefono llamador'
          Width = 115
        end
        object cxGrid1DBTableView1Telefonollamado: TcxGridDBColumn
          DataBinding.FieldName = 'Telefono llamado'
          Width = 111
        end
        object cxGrid1DBTableView1Categoria: TcxGridDBColumn
          DataBinding.FieldName = 'Categoria'
          Width = 110
        end
        object cxGrid1DBTableView1TipoTx: TcxGridDBColumn
          DataBinding.FieldName = 'TipoTx'
        end
        object cxGrid1DBTableView1Tema: TcxGridDBColumn
          DataBinding.FieldName = 'Tema'
        end
        object cxGrid1DBTableView1Digitosserviciosagregados: TcxGridDBColumn
          DataBinding.FieldName = 'Digitos servicios agregados'
          Width = 135
        end
        object cxGrid1DBTableView1It: TcxGridDBColumn
          DataBinding.FieldName = 'It'
        end
        object cxGrid1DBTableView1kt: TcxGridDBColumn
          Caption = 'kt categoriza'
          DataBinding.FieldName = 'kt'
          Visible = False
          GroupIndex = 1
        end
        object cxGrid1DBTableView1priorizada: TcxGridDBColumn
          DataBinding.FieldName = 'priorizada'
        end
        object cxGrid1DBTableView1conidioma: TcxGridDBColumn
          DataBinding.FieldName = 'conidioma'
        end
        object cxGrid1DBTableView1Depurada: TcxGridDBColumn
          DataBinding.FieldName = 'Depurada'
        end
        object cxGrid1DBTableView1ktclick: TcxGridDBColumn
          Caption = 'Kt Ultimo'
          DataBinding.FieldName = 'ktclick'
        end
        object cxGrid1DBTableView1fechaclick: TcxGridDBColumn
          Caption = 'fecha Ultimo'
          DataBinding.FieldName = 'fechaclick'
        end
        object cxGrid1DBTableView1fichero: TcxGridDBColumn
          DataBinding.FieldName = 'fichero'
          Width = 38
        end
        object cxGrid1DBTableView1idSolicitud: TcxGridDBColumn
          DataBinding.FieldName = 'idSolicitud'
        end
        object cxGrid1DBTableView1ktprimero: TcxGridDBColumn
          DataBinding.FieldName = 'ktprimero'
        end
        object cxGrid1DBTableView1fechitaPrimero: TcxGridDBColumn
          DataBinding.FieldName = 'fechitaPrimero'
        end
        object cxGrid1DBTableView1idioma: TcxGridDBColumn
          DataBinding.FieldName = 'idioma'
          Width = 159
        end
        object cxGrid1DBTableView1confax: TcxGridDBColumn
          DataBinding.FieldName = 'confax'
          Width = 78
        end
        object cxGrid1DBTableView1bancovoces: TcxGridDBColumn
          DataBinding.FieldName = 'bancovoces'
          Width = 72
        end
        object cxGrid1DBTableView1contenido: TcxGridDBColumn
          DataBinding.FieldName = 'contenido'
          Width = 85
        end
        object cxGrid1DBTableView1ficherocontenido: TcxGridDBColumn
          DataBinding.FieldName = 'ficherocontenido'
          Width = 118
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxButton1: TcxButton
      Left = 384
      Top = 21
      Width = 97
      Height = 25
      Caption = 'Expandir todos'
      TabOrder = 1
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 511
      Top = 21
      Width = 98
      Height = 25
      Caption = 'Contraer todos'
      TabOrder = 2
      OnClick = cxButton2Click
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 0
    Top = 497
    Align = alBottom
    Caption = 'Cuentas'
    TabOrder = 2
    ExplicitWidth = 842
    Height = 179
    Width = 875
    object cxTextEdit1: TcxTextEdit
      Left = 89
      Top = 30
      TabOrder = 0
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 89
      Top = 14
      Caption = 'Segundos'
      Transparent = True
    end
    object convertir: TcxButton
      Left = 216
      Top = 57
      Width = 75
      Height = 25
      Caption = 'Convertir'
      TabOrder = 2
      OnClick = convertirClick
    end
    object cxButton3: TcxButton
      Left = 8
      Top = 26
      Width = 75
      Height = 25
      Caption = 'Adicionar'
      TabOrder = 3
      OnClick = cxButton3Click
    end
    object cxButton4: TcxButton
      Left = 8
      Top = 121
      Width = 75
      Height = 25
      Caption = 'Limpiar'
      TabOrder = 4
      OnClick = cxButton4Click
    end
    object lst1: TListBox
      Left = 89
      Top = 57
      Width = 121
      Height = 97
      BevelOuter = bvNone
      ItemHeight = 13
      TabOrder = 5
    end
    object lst2: TListBox
      Left = 297
      Top = 57
      Width = 121
      Height = 97
      ItemHeight = 13
      TabOrder = 6
    end
    object cxLabel4: TcxLabel
      Left = 297
      Top = 39
      Caption = 'Horas - Minutos - Segundos'
      Transparent = True
    end
  end
  object dxSkinController1: TdxSkinController
    Kind = lfFlat
    SkinName = 'Blue'
    Left = 568
    Top = 32
  end
  object MainMenu1: TMainMenu
    Left = 648
    Top = 32
    object tablasenuso1: TMenuItem
      Caption = 'Tablas en uso'
      OnClick = tablasenuso1Click
    end
  end
end
