object Fefect6: TFefect6
  Left = 0
  Top = 0
  Caption = 'Efectividad Unidad VI-6'
  ClientHeight = 536
  ClientWidth = 746
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'Escoja las dos Opciones'
    TabOrder = 0
    ExplicitWidth = 748
    Height = 89
    Width = 746
    object cxLabel1: TcxLabel
      Left = 32
      Top = 24
      Caption = 'Fecha inicio'
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 192
      Top = 24
      Caption = 'Fecha fin'
      Transparent = True
    end
    object cxDateEdit1: TcxDateEdit
      Left = 32
      Top = 40
      TabOrder = 2
      Width = 121
    end
    object cxDateEdit2: TcxDateEdit
      Left = 192
      Top = 40
      TabOrder = 3
      Width = 121
    end
    object cxButton1: TcxButton
      Left = 391
      Top = 17
      Width = 75
      Height = 25
      Caption = 'Promedio'
      TabOrder = 4
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 391
      Top = 53
      Width = 75
      Height = 25
      Caption = 'Sumatoria'
      TabOrder = 5
      OnClick = cxButton2Click
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 89
    Align = alClient
    Caption = 'Efectividad'
    TabOrder = 1
    ExplicitWidth = 748
    ExplicitHeight = 449
    Height = 447
    Width = 746
    object cxGrid1: TcxGrid
      Left = 3
      Top = 15
      Width = 740
      Height = 423
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 18
      ExplicitWidth = 744
      ExplicitHeight = 429
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
        DataController.DataSource = DM.DSQefect6
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = 'CANTIDAD=#'
            Kind = skCount
            FieldName = 'CLAVES'
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skAverage
            FieldName = 'CANT MCC'
            Column = cxGrid1DBTableView1CANTMCC
          end
          item
            Kind = skAverage
            FieldName = 'CANT SOPORTES DESC'
            Column = cxGrid1DBTableView1CANTSOPORTESDESC
          end
          item
            Kind = skAverage
            FieldName = 'CANT TRAZAS'
            Column = cxGrid1DBTableView1CANTTRAZAS
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
        object cxGrid1DBTableView1FECHA: TcxGridDBColumn
          DataBinding.FieldName = 'FECHA'
        end
        object cxGrid1DBTableView1CANTTRAZAS: TcxGridDBColumn
          DataBinding.FieldName = 'CANT TRAZAS'
          Width = 74
        end
        object cxGrid1DBTableView1CANTMCC: TcxGridDBColumn
          DataBinding.FieldName = 'CANT MCC'
          Width = 81
        end
        object cxGrid1DBTableView1CANTSOPORTESDESC: TcxGridDBColumn
          DataBinding.FieldName = 'CANT SOPORTES DESC'
          Width = 117
        end
        object cxGrid1DBTableView1USUARIO: TcxGridDBColumn
          DataBinding.FieldName = 'USUARIO'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxGrid2: TcxGrid
      Left = 3
      Top = 15
      Width = 740
      Height = 423
      Align = alClient
      TabOrder = 1
      ExplicitTop = 112
      ExplicitWidth = 502
      ExplicitHeight = 265
      object cxGrid2DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = DM.DSQefect6
        DataController.Filter.Active = True
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            FieldName = 'KT'
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'CANT TRAZAS'
            Column = cxGrid2DBTableView1CANTTRAZAS
          end
          item
            Kind = skSum
            FieldName = 'CANT MCC'
            Column = cxGrid2DBTableView1CANTMCC
          end
          item
            Kind = skSum
            FieldName = 'CANT SOPORTES DESC'
            Column = cxGrid2DBTableView1CANTSOPORTESDESC
          end>
        DataController.Summary.SummaryGroups = <
          item
            Links = <>
            SummaryItems = <>
          end>
        FilterRow.Visible = True
        OptionsView.Navigator = True
        OptionsView.Footer = True
        object cxGrid2DBTableView1FECHA: TcxGridDBColumn
          DataBinding.FieldName = 'FECHA'
          Width = 126
        end
        object cxGrid2DBTableView1CANTTRAZAS: TcxGridDBColumn
          DataBinding.FieldName = 'CANT TRAZAS'
          Width = 85
        end
        object cxGrid2DBTableView1CANTMCC: TcxGridDBColumn
          DataBinding.FieldName = 'CANT MCC'
          Width = 74
        end
        object cxGrid2DBTableView1CANTSOPORTESDESC: TcxGridDBColumn
          DataBinding.FieldName = 'CANT SOPORTES DESC'
          Width = 135
        end
        object cxGrid2DBTableView1USUARIO: TcxGridDBColumn
          DataBinding.FieldName = 'USUARIO'
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
  end
end
