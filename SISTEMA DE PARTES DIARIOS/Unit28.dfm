object Fkmpermanentes: TFkmpermanentes
  Left = 0
  Top = 0
  Caption = 'KM permanentes y a requerimiento'
  ClientHeight = 723
  ClientWidth = 862
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
    Align = alClient
    Caption = 'Expedientes'
    TabOrder = 0
    ExplicitWidth = 864
    ExplicitHeight = 319
    Height = 317
    Width = 862
    object cxGrid1: TcxGrid
      Left = 3
      Top = 15
      Width = 856
      Height = 293
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 18
      ExplicitWidth = 860
      ExplicitHeight = 299
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
        OnCellClick = cxGrid1DBTableView1CellClick
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = DM.DSQkmp
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
        object cxGrid1DBTableView1unidad: TcxGridDBColumn
          DataBinding.FieldName = 'unidad'
          Visible = False
          GroupIndex = 1
          Width = 75
        end
        object cxGrid1DBTableView1idkmperm: TcxGridDBColumn
          DataBinding.FieldName = 'idkmperm'
          Width = 71
        end
        object cxGrid1DBTableView1expediente: TcxGridDBColumn
          DataBinding.FieldName = 'expediente'
          Width = 170
        end
        object cxGrid1DBTableView1fechainicio: TcxGridDBColumn
          DataBinding.FieldName = 'fecha inicio'
        end
        object cxGrid1DBTableView1fechafin: TcxGridDBColumn
          DataBinding.FieldName = 'fecha fin'
        end
        object cxGrid1DBTableView1nivelaprob: TcxGridDBColumn
          DataBinding.FieldName = 'nivel aprob'
          Width = 203
        end
        object cxGrid1DBTableView1estado: TcxGridDBColumn
          DataBinding.FieldName = 'estado'
          Visible = False
          GroupIndex = 0
          Width = 55
        end
        object cxGrid1DBTableView1lugaraplicado: TcxGridDBColumn
          DataBinding.FieldName = 'lugar aplicado'
          Width = 189
        end
        object cxGrid1DBTableView1lugarmonitoreo: TcxGridDBColumn
          DataBinding.FieldName = 'lugar monitoreo'
          Width = 198
        end
        object cxGrid1DBTableView1monitoreadopor: TcxGridDBColumn
          DataBinding.FieldName = 'monitoreado por:'
          Width = 88
        end
        object cxGrid1DBTableView1idioma: TcxGridDBColumn
          DataBinding.FieldName = 'idioma'
          Width = 89
        end
        object cxGrid1DBTableView1fase: TcxGridDBColumn
          DataBinding.FieldName = 'fase'
          Width = 214
        end
        object cxGrid1DBTableView1dpto: TcxGridDBColumn
          DataBinding.FieldName = 'dpto'
          Width = 139
        end
        object cxGrid1DBTableView1seccion: TcxGridDBColumn
          DataBinding.FieldName = 'seccion'
          Width = 118
        end
        object cxGrid1DBTableView1cumpfinalidadop: TcxGridDBColumn
          DataBinding.FieldName = 'cump finalidad op'
          Width = 184
        end
        object cxGrid1DBTableView1motivonocumplim: TcxGridDBColumn
          DataBinding.FieldName = 'motivo no cumplim'
          Width = 272
        end
        object cxGrid1DBTableView1referencia: TcxGridDBColumn
          DataBinding.FieldName = 'referencia'
          Width = 294
        end
        object cxGrid1DBTableView1usuario: TcxGridDBColumn
          DataBinding.FieldName = 'usuario'
          Width = 115
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 0
    Top = 317
    Align = alBottom
    Caption = 'SEGUIMIENTO A LOS KM PERMANENTES'
    TabOrder = 1
    ExplicitTop = 319
    ExplicitWidth = 864
    Height = 406
    Width = 862
    object cxGrid2: TcxGrid
      Left = 3
      Top = 15
      Width = 856
      Height = 382
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 18
      ExplicitWidth = 860
      ExplicitHeight = 386
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
        DataController.DataSource = DM.DSQsegKM
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = 'CANTIDAD=#'
            Kind = skCount
            FieldName = 'unidad'
            Column = cxGridDBTableView1unidad
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'unidad'
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
          Width = 75
        end
        object cxGridDBTableView1IDKMPERM: TcxGridDBColumn
          DataBinding.FieldName = 'IDKMPERM'
          Width = 65
        end
        object cxGridDBTableView1FECHA: TcxGridDBColumn
          DataBinding.FieldName = 'FECHA'
          Width = 129
        end
        object cxGridDBTableView1TIEMPODEEXPLOTACIN: TcxGridDBColumn
          DataBinding.FieldName = 'TIEMPO DE EXPLOTACI'#211'N'
          Width = 149
        end
        object cxGridDBTableView1TOTALFICHEROSPROCESADOS: TcxGridDBColumn
          DataBinding.FieldName = 'TOTAL FICHEROS PROCESADOS'
          Width = 162
        end
        object cxGridDBTableView1CUARTILLASTRANSCRITAS: TcxGridDBColumn
          DataBinding.FieldName = 'CUARTILLAS TRANSCRITAS'
          Width = 156
        end
        object cxGridDBTableView1usuario: TcxGridDBColumn
          DataBinding.FieldName = 'usuario'
          Width = 90
        end
        object cxGridDBTableView1INCIDENCIA: TcxGridDBColumn
          DataBinding.FieldName = 'INCIDENCIA'
          Width = 570
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object cxButton1: TcxButton
      Left = 734
      Top = 17
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
end
