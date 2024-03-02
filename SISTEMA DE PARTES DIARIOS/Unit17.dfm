object Favanzadas: TFavanzadas
  Left = 0
  Top = 0
  Caption = 'Favanzadas'
  ClientHeight = 704
  ClientWidth = 850
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
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'Escoja las dos Opciones'
    TabOrder = 0
    Height = 81
    Width = 850
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 32
      Top = 40
      Properties.KeyFieldNames = 'unidad'
      Properties.ListColumns = <
        item
          FieldName = 'unidad'
        end>
      Properties.ListSource = DM.DSQava0
      TabOrder = 0
      OnClick = cxLookupComboBox1Click
      Width = 145
    end
    object cxTextEdit1: TcxTextEdit
      Left = 32
      Top = 40
      TabOrder = 4
      Width = 145
    end
    object cxLookupComboBox2: TcxLookupComboBox
      Left = 192
      Top = 40
      Properties.KeyFieldNames = 'Punto Av'
      Properties.ListColumns = <
        item
          FieldName = 'Punto Av'
        end>
      Properties.ListSource = DM.DSQava1
      TabOrder = 1
      OnClick = cxLookupComboBox2Click
      Width = 145
    end
    object cxLabel1: TcxLabel
      Left = 32
      Top = 24
      Caption = 'Unidad'
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 192
      Top = 24
      Caption = 'Avanzadas'
      Transparent = True
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 81
    Align = alClient
    Caption = 'Explotaci'#243'n diaria OOP Avanzadas'
    TabOrder = 1
    Height = 301
    Width = 850
    object cxGrid1: TcxGrid
      Left = 3
      Top = 15
      Width = 844
      Height = 277
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 18
      ExplicitWidth = 846
      ExplicitHeight = 281
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.PriorPage.Visible = True
        NavigatorButtons.Prior.Visible = True
        NavigatorButtons.Insert.Visible = True
        NavigatorButtons.Append.Visible = True
        NavigatorButtons.Delete.Visible = True
        NavigatorButtons.Edit.Visible = True
        NavigatorButtons.Post.Visible = True
        NavigatorButtons.Cancel.Visible = True
        NavigatorButtons.Refresh.Visible = True
        NavigatorButtons.SaveBookmark.Visible = True
        NavigatorButtons.GotoBookmark.Visible = True
        NavigatorButtons.Filter.Visible = True
        FilterBox.Visible = fvNever
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = DM.DSQavaexplo
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = 'CANTIDAD=#'
            Kind = skCount
            FieldName = 'CLAVES'
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'idavanz'
            Column = cxGrid1DBTableView1unidad
          end>
        DataController.Summary.SummaryGroups = <>
        DateTimeHandling.Filters = [dtfRelativeDays, dtfRelativeDayPeriods, dtfRelativeYears, dtfMonths, dtfYears]
        Filtering.ColumnFilteredItemsList = True
        FilterRow.Visible = True
        OptionsBehavior.IncSearch = True
        OptionsBehavior.NavigatorHints = True
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.GroupRowSizing = True
        OptionsData.Appending = True
        OptionsSelection.CellMultiSelect = True
        OptionsView.Navigator = True
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 15
        object cxGrid1DBTableView1unidad: TcxGridDBColumn
          DataBinding.FieldName = 'unidad'
          Width = 67
        end
        object cxGrid1DBTableView1idavanz: TcxGridDBColumn
          DataBinding.FieldName = 'idavanz'
        end
        object cxGrid1DBTableView1fecha: TcxGridDBColumn
          DataBinding.FieldName = 'fecha'
        end
        object cxGrid1DBTableView1OOktasist: TcxGridDBColumn
          DataBinding.FieldName = 'OOkt asist'
        end
        object cxGrid1DBTableView1llamsproc: TcxGridDBColumn
          DataBinding.FieldName = 'llams proc'
        end
        object cxGrid1DBTableView1Procesadasporsecciones: TcxGridDBColumn
          DataBinding.FieldName = 'Procesadas por secciones'
          Width = 145
        end
        object cxGrid1DBTableView1PdteporprocesarOOp: TcxGridDBColumn
          DataBinding.FieldName = 'Pdte por procesar O/Op'
          Width = 137
        end
        object cxGrid1DBTableView1llamsborradassinproc: TcxGridDBColumn
          DataBinding.FieldName = 'llams borradas sin proc'
          Width = 117
        end
        object cxGrid1DBTableView1usuario: TcxGridDBColumn
          DataBinding.FieldName = 'usuario'
          Width = 75
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxButton1: TcxButton
      Left = 678
      Top = 15
      Width = 123
      Height = 33
      Caption = 'EXPORTAR A XLS'
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      OnClick = cxButton1Click
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 0
    Top = 382
    Align = alBottom
    Caption = 'Seguimiento a las Avanzadas'
    TabOrder = 2
    Height = 322
    Width = 850
    object cxGrid2: TcxGrid
      Left = 3
      Top = 15
      Width = 844
      Height = 298
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 18
      ExplicitWidth = 846
      ExplicitHeight = 302
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.PriorPage.Visible = True
        NavigatorButtons.Prior.Visible = True
        NavigatorButtons.Insert.Visible = True
        NavigatorButtons.Append.Visible = True
        NavigatorButtons.Delete.Visible = True
        NavigatorButtons.Edit.Visible = True
        NavigatorButtons.Post.Visible = True
        NavigatorButtons.Cancel.Visible = True
        NavigatorButtons.Refresh.Visible = True
        NavigatorButtons.SaveBookmark.Visible = True
        NavigatorButtons.GotoBookmark.Visible = True
        NavigatorButtons.Filter.Visible = True
        FilterBox.Visible = fvNever
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = DM.DSQavaseg
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = 'CANTIDAD=#'
            Kind = skCount
            FieldName = 'CLAVES'
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'idavanz'
            Column = cxGridDBTableView1unidad
          end>
        DataController.Summary.SummaryGroups = <>
        DateTimeHandling.Filters = [dtfRelativeDays, dtfRelativeDayPeriods, dtfRelativeYears, dtfMonths, dtfYears]
        Filtering.ColumnFilteredItemsList = True
        FilterRow.Visible = True
        OptionsBehavior.IncSearch = True
        OptionsBehavior.NavigatorHints = True
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.GroupRowSizing = True
        OptionsData.Appending = True
        OptionsView.Navigator = True
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 15
        object cxGridDBTableView1unidad: TcxGridDBColumn
          DataBinding.FieldName = 'unidad'
          Width = 63
        end
        object cxGridDBTableView1idavanz: TcxGridDBColumn
          DataBinding.FieldName = 'idavanz'
        end
        object cxGridDBTableView1FECHA: TcxGridDBColumn
          DataBinding.FieldName = 'FECHA'
        end
        object cxGridDBTableView1ChequeosKT: TcxGridDBColumn
          DataBinding.FieldName = 'Chequeos KT'
          Width = 68
        end
        object cxGridDBTableView1Altas: TcxGridDBColumn
          DataBinding.FieldName = 'Altas'
        end
        object cxGridDBTableView1Bajas: TcxGridDBColumn
          DataBinding.FieldName = 'Bajas'
        end
        object cxGridDBTableView1Llamasentradas: TcxGridDBColumn
          DataBinding.FieldName = 'Llamas entradas'
        end
        object cxGridDBTableView1Coninters: TcxGridDBColumn
          DataBinding.FieldName = 'Con inter'#233's'
          Width = 60
        end
        object cxGridDBTableView1Sininters: TcxGridDBColumn
          DataBinding.FieldName = 'Sin inter'#233's'
          Width = 72
        end
        object cxGridDBTableView1PendientesdeClasificar: TcxGridDBColumn
          DataBinding.FieldName = 'Pendientes de Clasificar'
          Width = 119
        end
        object cxGridDBTableView1VersionesKT: TcxGridDBColumn
          DataBinding.FieldName = 'Versiones KT'
          Width = 66
        end
        object cxGridDBTableView1TranscripcionesKM: TcxGridDBColumn
          DataBinding.FieldName = 'Transcripciones KM'
          Width = 96
        end
        object cxGridDBTableView1ChequeosKD: TcxGridDBColumn
          DataBinding.FieldName = 'Chequeos KD'
          Width = 69
        end
        object cxGridDBTableView1AltasKD: TcxGridDBColumn
          DataBinding.FieldName = 'Altas KD'
        end
        object cxGridDBTableView1BajasKD: TcxGridDBColumn
          DataBinding.FieldName = 'Bajas KD'
        end
        object cxGridDBTableView1Cuentas: TcxGridDBColumn
          DataBinding.FieldName = 'Cuentas'
        end
        object cxGridDBTableView1Frases: TcxGridDBColumn
          DataBinding.FieldName = 'Frases'
        end
        object cxGridDBTableView1Fax: TcxGridDBColumn
          DataBinding.FieldName = 'Fax'
        end
        object cxGridDBTableView1Faxentradas: TcxGridDBColumn
          DataBinding.FieldName = 'Fax entradas'
          Width = 86
        end
        object cxGridDBTableView1Faxvisualizados: TcxGridDBColumn
          DataBinding.FieldName = 'Fax visualizados'
          Width = 83
        end
        object cxGridDBTableView1Impresos: TcxGridDBColumn
          DataBinding.FieldName = 'Impresos'
        end
        object cxGridDBTableView1Opinionestramitadas: TcxGridDBColumn
          DataBinding.FieldName = 'Opiniones tramitadas'
          Width = 273
        end
        object cxGridDBTableView1CItramitadasSIAVI: TcxGridDBColumn
          DataBinding.FieldName = 'CI tramitadas SIA-VI'
          Width = 136
        end
        object cxGridDBTableView1Verificaciones: TcxGridDBColumn
          DataBinding.FieldName = 'Verificaciones'
          Width = 156
        end
        object cxGridDBTableView1Rechazos: TcxGridDBColumn
          DataBinding.FieldName = 'Rechazos'
          Width = 51
        end
        object cxGridDBTableView1MOTIVO: TcxGridDBColumn
          DataBinding.FieldName = 'MOTIVO'
          Width = 45
        end
        object cxGridDBTableView1usuario: TcxGridDBColumn
          DataBinding.FieldName = 'usuario'
          Width = 40
        end
        object cxGridDBTableView1IncidenciaTO: TcxGridDBColumn
          DataBinding.FieldName = 'Incidencia TO'
          Width = 70
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
end
