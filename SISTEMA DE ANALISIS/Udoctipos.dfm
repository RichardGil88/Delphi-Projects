object Fdoctipos: TFdoctipos
  Left = 519
  Top = 262
  Caption = 'Doc Tipos'
  ClientHeight = 464
  ClientWidth = 644
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
    Width = 644
    Height = 464
    Align = alClient
    TabOrder = 0
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      FilterBox.Position = fpTop
      FilterBox.Visible = fvNever
      DataController.DataSource = DM.DSdoctip
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
      object cxGridDBTableView1tipodocumento: TcxGridDBColumn
        DataBinding.FieldName = 'tipodocumento'
        Width = 186
      end
      object cxGridDBTableView1descripcion: TcxGridDBColumn
        DataBinding.FieldName = 'descripcion'
        Width = 192
      end
      object cxGridDBTableView1orden: TcxGridDBColumn
        DataBinding.FieldName = 'orden'
      end
      object cxGridDBTableView1activa: TcxGridDBColumn
        DataBinding.FieldName = 'activa'
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
end
