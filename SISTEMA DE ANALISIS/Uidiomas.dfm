object Fidiomas: TFidiomas
  Left = 497
  Top = 360
  Caption = 'Idiomas'
  ClientHeight = 451
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
    Height = 451
    Align = alClient
    TabOrder = 0
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      FilterBox.Position = fpTop
      FilterBox.Visible = fvNever
      DataController.DataSource = DM.DSidiomas
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
      object cxGridDBTableView1idioma: TcxGridDBColumn
        DataBinding.FieldName = 'idioma'
      end
      object cxGridDBTableView1activo: TcxGridDBColumn
        DataBinding.FieldName = 'activo'
      end
      object cxGridDBTableView1orden: TcxGridDBColumn
        DataBinding.FieldName = 'orden'
      end
      object cxGridDBTableView1descripcion: TcxGridDBColumn
        DataBinding.FieldName = 'descripcion'
      end
      object cxGridDBTableView1default: TcxGridDBColumn
        DataBinding.FieldName = 'default'
        Width = 80
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
end
