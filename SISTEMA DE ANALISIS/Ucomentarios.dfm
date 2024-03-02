object FComentarios: TFComentarios
  Left = 529
  Top = 253
  Caption = 'Comentarios'
  ClientHeight = 462
  ClientWidth = 686
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 686
    Height = 462
    Align = alClient
    TabOrder = 0
    RootLevelOptions.DetailTabsPosition = dtpTop
    object cxGrid1DBTableView0: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      FilterBox.Position = fpTop
      FilterBox.Visible = fvNever
      DataController.DataSource = DM.DScomest
      DataController.Filter.Active = True
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      DateTimeHandling.Filters = [dtfRelativeDays, dtfRelativeDayPeriods, dtfRelativeWeeks, dtfRelativeMonths, dtfRelativeYears, dtfMonths, dtfYears]
      Filtering.ColumnFilteredItemsList = True
      NewItemRow.InfoText = 'Click aqui para adicionar un nuevo registro'
      NewItemRow.Visible = True
      OptionsBehavior.AlwaysShowEditor = True
      OptionsData.Appending = True
      OptionsView.Navigator = True
      OptionsView.NavigatorOffset = 10
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 20
      object cxGrid1DBTableView0estado: TcxGridDBColumn
        DataBinding.FieldName = 'estado'
      end
      object cxGrid1DBTableView0descripcion: TcxGridDBColumn
        DataBinding.FieldName = 'descripcion'
      end
      object cxGrid1DBTableView0activo: TcxGridDBColumn
        DataBinding.FieldName = 'activo'
      end
      object cxGrid1DBTableView0orden: TcxGridDBColumn
        DataBinding.FieldName = 'orden'
      end
    end
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DScomtem
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView1tematicas: TcxGridDBColumn
        DataBinding.FieldName = 'tematicas'
      end
    end
    object cxGrid1DBTableView2: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DScomtipos
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView2idtipocomentario: TcxGridDBColumn
        DataBinding.FieldName = 'idtipocomentario'
      end
      object cxGrid1DBTableView2tipocomentario: TcxGridDBColumn
        DataBinding.FieldName = 'tipocomentario'
      end
      object cxGrid1DBTableView2descripcion: TcxGridDBColumn
        DataBinding.FieldName = 'descripcion'
      end
      object cxGrid1DBTableView2orden: TcxGridDBColumn
        DataBinding.FieldName = 'orden'
      end
      object cxGrid1DBTableView2activa: TcxGridDBColumn
        DataBinding.FieldName = 'activa'
      end
      object cxGrid1DBTableView2idtipocomentario1: TcxGridDBColumn
        DataBinding.FieldName = 'idtipocomentario'
      end
      object cxGrid1DBTableView2tipocomentario1: TcxGridDBColumn
        DataBinding.FieldName = 'tipocomentario'
      end
      object cxGrid1DBTableView2descripcion1: TcxGridDBColumn
        DataBinding.FieldName = 'descripcion'
      end
      object cxGrid1DBTableView2orden1: TcxGridDBColumn
        DataBinding.FieldName = 'orden'
      end
      object cxGrid1DBTableView2activa1: TcxGridDBColumn
        DataBinding.FieldName = 'activa'
      end
    end
    object cxGrid1Level0: TcxGridLevel
      Caption = 'Estados'
      GridView = cxGrid1DBTableView0
      Options.DetailTabsPosition = dtpTop
    end
    object cxGrid1Level1: TcxGridLevel
      Caption = 'Tem'#225'ticas'
      GridView = cxGrid1DBTableView1
      Options.DetailTabsPosition = dtpTop
    end
    object cxGrid1Level2: TcxGridLevel
      Caption = 'Tipos'
      GridView = cxGrid1DBTableView2
      Options.DetailTabsPosition = dtpTop
    end
  end
end
