object FefectGSA: TFefectGSA
  Left = 0
  Top = 0
  Caption = 'Efectividad GSA'
  ClientHeight = 624
  ClientWidth = 755
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'Efectividad'
    TabOrder = 0
    ExplicitWidth = 757
    Height = 105
    Width = 755
    object cxButton1: TcxButton
      Left = 343
      Top = 25
      Width = 75
      Height = 25
      Caption = 'Promedio'
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 343
      Top = 56
      Width = 75
      Height = 25
      Caption = 'Sumatoria'
      TabOrder = 1
      OnClick = cxButton2Click
    end
    object cxLabel1: TcxLabel
      Left = 32
      Top = 24
      Caption = 'Fecha inicio'
      Transparent = True
    end
    object cxDateEdit1: TcxDateEdit
      Left = 32
      Top = 40
      TabOrder = 3
      Width = 121
    end
    object cxDateEdit2: TcxDateEdit
      Left = 192
      Top = 40
      TabOrder = 4
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 192
      Top = 24
      Caption = 'Fecha fin'
      Transparent = True
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 105
    Align = alClient
    Caption = 'GSA'
    TabOrder = 1
    ExplicitWidth = 757
    ExplicitHeight = 521
    Height = 519
    Width = 755
    object cxGrid2: TcxGrid
      Left = 3
      Top = 15
      Width = 749
      Height = 495
      Align = alClient
      TabOrder = 1
      ExplicitLeft = 2
      ExplicitTop = 18
      ExplicitWidth = 753
      ExplicitHeight = 501
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.PriorPage.Visible = True
        NavigatorButtons.Prior.Visible = True
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Append.Visible = False
        NavigatorButtons.Delete.Visible = True
        NavigatorButtons.Edit.Visible = True
        NavigatorButtons.Post.Visible = True
        NavigatorButtons.Cancel.Visible = False
        NavigatorButtons.Refresh.Visible = True
        NavigatorButtons.SaveBookmark.Visible = True
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = True
        FilterBox.Visible = fvNever
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = DM.DSQefecGSA
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = 'CANTIDAD=#'
            Kind = skCount
            FieldName = 'CLAVES'
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'trazas fijos'
            Column = cxGridDBColumn1
          end
          item
            Kind = skSum
            FieldName = 'trazas movil'
            Column = cxGridDBColumn2
          end
          item
            Kind = skSum
            FieldName = 'mensajer'#237'a corta'
            Column = cxGridDBColumn3
          end
          item
            Kind = skSum
            FieldName = 'An'#225'lisis Tr'#225'fico'
            Column = cxGridDBColumn4
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
        object cxGridDBColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'trazas fijos'
          Width = 85
        end
        object cxGridDBColumn2: TcxGridDBColumn
          DataBinding.FieldName = 'trazas movil'
          Width = 108
        end
        object cxGridDBColumn3: TcxGridDBColumn
          DataBinding.FieldName = 'mensajer'#237'a corta'
          Width = 112
        end
        object cxGridDBColumn4: TcxGridDBColumn
          DataBinding.FieldName = 'An'#225'lisis Tr'#225'fico'
          Width = 106
        end
        object cxGridDBTableView1fecha: TcxGridDBColumn
          DataBinding.FieldName = 'fecha'
        end
        object cxGridDBColumn5: TcxGridDBColumn
          DataBinding.FieldName = 'usuario'
          Width = 130
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object cxGrid1: TcxGrid
      Left = 3
      Top = 15
      Width = 749
      Height = 495
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 18
      ExplicitWidth = 753
      ExplicitHeight = 501
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.PriorPage.Visible = True
        NavigatorButtons.Prior.Visible = True
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Append.Visible = False
        NavigatorButtons.Delete.Visible = True
        NavigatorButtons.Edit.Visible = True
        NavigatorButtons.Post.Visible = True
        NavigatorButtons.Cancel.Visible = False
        NavigatorButtons.Refresh.Visible = True
        NavigatorButtons.SaveBookmark.Visible = True
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = True
        FilterBox.Visible = fvNever
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = DM.DSQefecGSA
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = 'CANTIDAD=#'
            Kind = skCount
            FieldName = 'CLAVES'
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skAverage
            FieldName = 'trazas fijos'
            Column = cxGrid1DBTableView1trazasfijos
          end
          item
            Kind = skAverage
            FieldName = 'trazas movil'
            Column = cxGrid1DBTableView1trazasmovil
          end
          item
            Kind = skAverage
            FieldName = 'mensajer'#237'a corta'
            Column = cxGrid1DBTableView1mensajeracorta
          end
          item
            Kind = skAverage
            FieldName = 'An'#225'lisis Tr'#225'fico'
            Column = cxGrid1DBTableView1AnlisisTrfico
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
        object cxGrid1DBTableView1trazasfijos: TcxGridDBColumn
          DataBinding.FieldName = 'trazas fijos'
          Width = 85
        end
        object cxGrid1DBTableView1trazasmovil: TcxGridDBColumn
          DataBinding.FieldName = 'trazas movil'
          Width = 108
        end
        object cxGrid1DBTableView1mensajeracorta: TcxGridDBColumn
          DataBinding.FieldName = 'mensajer'#237'a corta'
          Width = 112
        end
        object cxGrid1DBTableView1AnlisisTrfico: TcxGridDBColumn
          DataBinding.FieldName = 'An'#225'lisis Tr'#225'fico'
          Width = 106
        end
        object cxGrid1DBTableView1fecha: TcxGridDBColumn
          DataBinding.FieldName = 'fecha'
        end
        object cxGrid1DBTableView1usuario: TcxGridDBColumn
          DataBinding.FieldName = 'usuario'
          Width = 130
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
end
