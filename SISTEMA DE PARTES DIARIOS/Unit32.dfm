object Fefectllam: TFefectllam
  Left = 0
  Top = 0
  Caption = 'Efectividad Llamadas'
  ClientHeight = 506
  ClientWidth = 844
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
    Height = 89
    Width = 844
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
    Height = 417
    Width = 844
    object cxGrid2: TcxGrid
      Left = 2
      Top = 18
      Width = 840
      Height = 397
      Align = alClient
      TabOrder = 1
      object cxGrid2DBTableView1: TcxGridDBTableView
        Navigator.Visible = True
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = DM.DSQllam2
        DataController.Filter.Active = True
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = 'CHEQUEOSKT=#'
            Kind = skSum
            FieldName = 'CHEQUEOSKT'
            Column = cxGrid2DBTableView1CHEQUEOSKT
          end
          item
            Format = 'LLAMENTRADAS=#'
            Kind = skSum
            FieldName = 'LLAMENTRADAS'
            Column = cxGrid2DBTableView1LLAMENTRADAS
          end
          item
            Format = 'LLAMSININTERES=#'
            Kind = skSum
            FieldName = 'LLAMSININTERES'
            Column = cxGrid2DBTableView1LLAMSININTERES
          end
          item
            Format = 'LLAMCONINTERES=#'
            Kind = skSum
            FieldName = 'LLAMCONINTERES'
            Column = cxGrid2DBTableView1LLAMCONINTERES
          end
          item
            Format = 'LLAMPENDIENTE=#'
            Kind = skSum
            FieldName = 'LLAMPENDIENTE'
            Column = cxGrid2DBTableView1LLAMPENDIENTE
          end
          item
            Format = 'VERSIONES=#'
            Kind = skSum
            FieldName = 'VERSIONES'
            Column = cxGrid2DBTableView1VERSIONES
          end
          item
            Format = 'PUBLICASAPLICADAS=#'
            Kind = skSum
            FieldName = 'PUBLICASAPLICADAS'
            Column = cxGrid2DBTableView1PUBLICASAPLICADAS
          end
          item
            Format = 'MCCENTRADAS=#'
            FieldName = 'MCCENTRADAS'
            Column = cxGrid2DBTableView1MCCENTRADAS
          end
          item
            Format = 'MCCCONINTERES=#'
            Kind = skSum
            FieldName = 'MCCCONINTERES'
            Column = cxGrid2DBTableView1MCCCONINTERES
          end
          item
            Format = 'MCCSININTERES=#'
            Kind = skSum
            FieldName = 'MCCSININTERES'
            Column = cxGrid2DBTableView1MCCSININTERES
          end
          item
            Format = 'MCCPENDIENTE=#'
            Kind = skSum
            FieldName = 'MCCPENDIENTE'
            Column = cxGrid2DBTableView1MCCPENDIENTE
          end
          item
            Format = 'MCCENTRADAS=#'
            Kind = skSum
            FieldName = 'MCCENTRADAS'
            Column = cxGrid2DBTableView1MCCENTRADAS
          end>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        object cxGrid2DBTableView1UNIDAD: TcxGridDBColumn
          DataBinding.FieldName = 'UNIDAD'
          Visible = False
          GroupIndex = 0
        end
        object cxGrid2DBTableView1LUGARDEMONITOREO: TcxGridDBColumn
          DataBinding.FieldName = 'LUGAR DE MONITOREO'
          Visible = False
          GroupIndex = 1
        end
        object cxGrid2DBTableView1FECHA: TcxGridDBColumn
          DataBinding.FieldName = 'FECHA'
        end
        object cxGrid2DBTableView1CHEQUEOSKT: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUEOSKT'
          Width = 72
        end
        object cxGrid2DBTableView1LLAMENTRADAS: TcxGridDBColumn
          DataBinding.FieldName = 'LLAMENTRADAS'
          Width = 83
        end
        object cxGrid2DBTableView1LLAMSININTERES: TcxGridDBColumn
          DataBinding.FieldName = 'LLAMSININTERES'
          Width = 89
        end
        object cxGrid2DBTableView1LLAMCONINTERES: TcxGridDBColumn
          DataBinding.FieldName = 'LLAMCONINTERES'
          Width = 94
        end
        object cxGrid2DBTableView1LLAMPENDIENTE: TcxGridDBColumn
          DataBinding.FieldName = 'LLAMPENDIENTE'
          Width = 102
        end
        object cxGrid2DBTableView1VERSIONES: TcxGridDBColumn
          DataBinding.FieldName = 'VERSIONES'
          Width = 61
        end
        object cxGrid2DBTableView1PUBLICASAPLICADAS: TcxGridDBColumn
          DataBinding.FieldName = 'PUBLICASAPLICADAS'
          Width = 109
        end
        object cxGrid2DBTableView1MCCENTRADAS: TcxGridDBColumn
          DataBinding.FieldName = 'MCCENTRADAS'
          Width = 97
        end
        object cxGrid2DBTableView1MCCCONINTERES: TcxGridDBColumn
          DataBinding.FieldName = 'MCCCONINTERES'
          Width = 91
        end
        object cxGrid2DBTableView1MCCSININTERES: TcxGridDBColumn
          DataBinding.FieldName = 'MCCSININTERES'
          Width = 103
        end
        object cxGrid2DBTableView1MCCPENDIENTE: TcxGridDBColumn
          DataBinding.FieldName = 'MCCPENDIENTE'
          Width = 82
        end
        object cxGrid2DBTableView1USUARIO: TcxGridDBColumn
          DataBinding.FieldName = 'USUARIO'
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
    object cxGrid1: TcxGrid
      Left = 2
      Top = 18
      Width = 840
      Height = 397
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
        DataController.DataSource = DM.DSQllam1
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = 'CHEQUEOSKT=#'
            Kind = skAverage
            FieldName = 'CHEQUEOSKT'
            Column = cxGrid1DBTableView1CHEQUEOSKT
          end
          item
            Format = 'LLAMENTRADAS=#'
            Kind = skAverage
            FieldName = 'LLAMENTRADAS'
            Column = cxGrid1DBTableView1LLAMENTRADAS
          end
          item
            Format = 'LLAMSININTERES=#'
            Kind = skAverage
            FieldName = 'LLAMSININTERES'
            Column = cxGrid1DBTableView1LLAMSININTERES
          end
          item
            Format = 'LLAMCONINTERES=#'
            Kind = skAverage
            FieldName = 'LLAMCONINTERES'
            Column = cxGrid1DBTableView1LLAMCONINTERES
          end
          item
            Format = 'LLAMPENDIENTE=#'
            Kind = skAverage
            FieldName = 'LLAMPENDIENTE'
            Column = cxGrid1DBTableView1LLAMPENDIENTE
          end
          item
            Format = 'VERSIONES=#'
            Kind = skAverage
            FieldName = 'VERSIONES'
            Column = cxGrid1DBTableView1VERSIONES
          end
          item
            Format = 'PUBLICASAPLICADAS=#'
            Kind = skAverage
            FieldName = 'PUBLICASAPLICADAS'
            Column = cxGrid1DBTableView1PUBLICASAPLICADAS
          end
          item
            Format = 'MCCENTRADAS=#'
            Kind = skAverage
            FieldName = 'MCCENTRADAS'
            Column = cxGrid1DBTableView1MCCENTRADAS
          end
          item
            Format = 'MCCCONINTERES=#'
            Kind = skAverage
            FieldName = 'MCCCONINTERES'
            Column = cxGrid1DBTableView1MCCCONINTERES
          end
          item
            Format = 'MCCSININTERES=#'
            Kind = skAverage
            FieldName = 'MCCSININTERES'
            Column = cxGrid1DBTableView1MCCSININTERES
          end
          item
            Format = 'MCCPENDIENTE=#'
            Kind = skAverage
            FieldName = 'MCCPENDIENTE'
            Column = cxGrid1DBTableView1MCCPENDIENTE
          end
          item
            Kind = skAverage
            FieldName = 'MCCENTRADAS'
            Column = cxGrid1DBTableView1MCCENTRADAS
          end>
        DataController.Summary.FooterSummaryItems = <>
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
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 15
        object cxGrid1DBTableView1UNIDAD: TcxGridDBColumn
          DataBinding.FieldName = 'UNIDAD'
          Visible = False
          GroupIndex = 0
        end
        object cxGrid1DBTableView1LUGARDEMONITOREO: TcxGridDBColumn
          DataBinding.FieldName = 'LUGAR DE MONITOREO'
          Visible = False
          GroupIndex = 1
        end
        object cxGrid1DBTableView1FECHA: TcxGridDBColumn
          DataBinding.FieldName = 'FECHA'
        end
        object cxGrid1DBTableView1CHEQUEOSKT: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUEOSKT'
          Width = 72
        end
        object cxGrid1DBTableView1LLAMENTRADAS: TcxGridDBColumn
          DataBinding.FieldName = 'LLAMENTRADAS'
          Width = 83
        end
        object cxGrid1DBTableView1LLAMSININTERES: TcxGridDBColumn
          DataBinding.FieldName = 'LLAMSININTERES'
          Width = 106
        end
        object cxGrid1DBTableView1LLAMCONINTERES: TcxGridDBColumn
          DataBinding.FieldName = 'LLAMCONINTERES'
          Width = 94
        end
        object cxGrid1DBTableView1LLAMPENDIENTE: TcxGridDBColumn
          DataBinding.FieldName = 'LLAMPENDIENTE'
          Width = 85
        end
        object cxGrid1DBTableView1VERSIONES: TcxGridDBColumn
          DataBinding.FieldName = 'VERSIONES'
          Width = 78
        end
        object cxGrid1DBTableView1PUBLICASAPLICADAS: TcxGridDBColumn
          DataBinding.FieldName = 'PUBLICASAPLICADAS'
          Width = 126
        end
        object cxGrid1DBTableView1MCCENTRADAS: TcxGridDBColumn
          DataBinding.FieldName = 'MCCENTRADAS'
          Width = 80
        end
        object cxGrid1DBTableView1MCCCONINTERES: TcxGridDBColumn
          DataBinding.FieldName = 'MCCCONINTERES'
          Width = 91
        end
        object cxGrid1DBTableView1MCCSININTERES: TcxGridDBColumn
          DataBinding.FieldName = 'MCCSININTERES'
          Width = 103
        end
        object cxGrid1DBTableView1MCCPENDIENTE: TcxGridDBColumn
          DataBinding.FieldName = 'MCCPENDIENTE'
          Width = 82
        end
        object cxGrid1DBTableView1USUARIO: TcxGridDBColumn
          DataBinding.FieldName = 'USUARIO'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxButtonEXP: TcxButton
      Left = 686
      Top = 25
      Width = 123
      Height = 33
      Caption = 'EXPORTAR A XLS'
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      OnClick = cxButtonEXPClick
    end
  end
end
