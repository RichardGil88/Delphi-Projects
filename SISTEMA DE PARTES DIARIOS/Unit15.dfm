object Fincidencias: TFincidencias
  Left = 0
  Top = 0
  Caption = 'Incidencias'
  ClientHeight = 601
  ClientWidth = 837
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
    Align = alClient
    Caption = 'Incidencias'
    TabOrder = 0
    Height = 601
    Width = 837
    object AdvCircularProgress1: TAdvCircularProgress
      Left = 416
      Top = 272
      Width = 60
      Height = 60
      Appearance.BackGroundColor = clNone
      Appearance.BorderColor = clNone
      Appearance.ActiveSegmentColor = 16752543
      Appearance.InActiveSegmentColor = clSilver
      Appearance.TransitionSegmentColor = 10485760
      Appearance.ProgressSegmentColor = 4194432
      Interval = 100
    end
    object cxGrid1: TcxGrid
      Left = 2
      Top = 18
      Width = 833
      Height = 581
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        Navigator.Visible = True
        FilterBox.Visible = fvNever
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = DM.DSincidencias
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = 'CANTIDAD=#'
            Kind = skCount
            FieldName = 'CLAVES'
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'UNIDAD'
            Column = cxGrid1DBTableView1USUARIO
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
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 15
        object cxGrid1DBTableView1USUARIO: TcxGridDBColumn
          DataBinding.FieldName = 'USUARIO'
          Width = 52
        end
        object cxGrid1DBTableView1UNIDAD: TcxGridDBColumn
          DataBinding.FieldName = 'UNIDAD'
          Width = 44
        end
        object cxGrid1DBTableView1FECHA: TcxGridDBColumn
          DataBinding.FieldName = 'FECHA'
        end
        object cxGrid1DBTableView1INCIDENCIAS: TcxGridDBColumn
          DataBinding.FieldName = 'INCIDENCIAS'
          Width = 1322
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
end
