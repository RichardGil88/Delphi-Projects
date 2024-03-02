object Fvertipos: TFvertipos
  Left = 498
  Top = 431
  Caption = 'Versiones Tipos'
  ClientHeight = 431
  ClientWidth = 621
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 621
    Height = 431
    Align = alClient
    TabOrder = 0
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      FilterBox.Position = fpTop
      FilterBox.Visible = fvNever
      DataController.DataSource = DM.DSverstipos
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
      object cxgrdbclmnGridDBTableView1tipoversion: TcxGridDBColumn
        DataBinding.FieldName = 'tipoversion'
      end
      object cxgrdbclmnGridDBTableView1descripcion: TcxGridDBColumn
        DataBinding.FieldName = 'descripcion'
      end
      object cxgrdbclmnGridDBTableView1orden: TcxGridDBColumn
        DataBinding.FieldName = 'orden'
      end
      object cxgrdbclmnGridDBTableView1activa: TcxGridDBColumn
        DataBinding.FieldName = 'activa'
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
end
