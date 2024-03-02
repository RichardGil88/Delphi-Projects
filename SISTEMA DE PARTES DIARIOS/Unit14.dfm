object Foice: TFoice
  Left = 0
  Top = 0
  Caption = 'OICE'
  ClientHeight = 596
  ClientWidth = 839
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
    Caption = 'ESCOJA EL DPTO'
    TabOrder = 0
    ExplicitWidth = 841
    Height = 65
    Width = 839
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 16
      Top = 33
      Properties.KeyFieldNames = 'DPTO'
      Properties.ListColumns = <
        item
          FieldName = 'DPTO'
        end>
      Properties.ListSource = DM.DSTOICE
      TabOrder = 0
      OnClick = cxLookupComboBox1Click
      Width = 145
    end
    object DPTO: TcxLabel
      Left = 16
      Top = 16
      Caption = 'DPTO'
      Transparent = True
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 65
    Align = alClient
    Caption = 'OICE'
    TabOrder = 1
    ExplicitWidth = 841
    ExplicitHeight = 533
    Height = 531
    Width = 839
    object cxGrid1: TcxGrid
      Left = 3
      Top = 15
      Width = 833
      Height = 507
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 18
      ExplicitWidth = 837
      ExplicitHeight = 513
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
        DataController.DataSource = DM.DSQOICE2
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
        OptionsView.Navigator = True
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
        object cxGrid1DBTableView1Id: TcxGridDBColumn
          DataBinding.FieldName = 'Id'
        end
        object cxGrid1DBTableView1FECHA: TcxGridDBColumn
          DataBinding.FieldName = 'FECHA'
        end
        object cxGrid1DBTableView1LLAMADASPROC: TcxGridDBColumn
          DataBinding.FieldName = 'LLAMADAS PROC'
          Width = 105
        end
        object cxGrid1DBTableView1INFENBUZON: TcxGridDBColumn
          DataBinding.FieldName = 'INF EN BUZON'
          Width = 92
        end
        object cxGrid1DBTableView1CINTERES: TcxGridDBColumn
          DataBinding.FieldName = 'C/INTERES'
          Width = 75
        end
        object cxGrid1DBTableView1INFALOSDPTO: TcxGridDBColumn
          DataBinding.FieldName = 'INF A LOS DPTO'
          Width = 196
        end
        object cxGrid1DBTableView1PDTE: TcxGridDBColumn
          DataBinding.FieldName = 'PDTE'
          Width = 63
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
end
