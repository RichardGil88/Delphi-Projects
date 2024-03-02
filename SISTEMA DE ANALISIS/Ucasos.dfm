object Fcasos: TFcasos
  Left = 528
  Top = 353
  Caption = 'Casos'
  ClientHeight = 473
  ClientWidth = 731
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
    Width = 731
    Height = 473
    Align = alClient
    TabOrder = 0
    RootLevelOptions.DetailTabsPosition = dtpTop
    object cxGrid1DBTableView0: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      FilterBox.Position = fpTop
      FilterBox.Visible = fvNever
      DataController.DataSource = DM.DSdptosysecc
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
      object cxGrid1DBTableView0dptoseccion: TcxGridDBColumn
        DataBinding.FieldName = 'dptoseccion'
      end
    end
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSexpedientesoperativos
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView1idexpediente: TcxGridDBColumn
        DataBinding.FieldName = 'idexpediente'
        Width = 73
      end
      object cxGrid1DBTableView1ExpedienteOperativo: TcxGridDBColumn
        DataBinding.FieldName = 'ExpedienteOperativo'
        Width = 202
      end
    end
    object cxGrid1DBTableView2: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSfaci
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView2idfaci: TcxGridDBColumn
        DataBinding.FieldName = 'idfaci'
      end
      object cxGrid1DBTableView2faci: TcxGridDBColumn
        DataBinding.FieldName = 'faci'
      end
    end
    object cxGrid1DBTableView3: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSfase
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView3idFase: TcxGridDBColumn
        DataBinding.FieldName = 'idFase'
      end
      object cxGrid1DBTableView3fase: TcxGridDBColumn
        DataBinding.FieldName = 'fase'
      end
    end
    object cxGrid1DBTableView4: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSniveldelAprobacion
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView4NivelAprobacin: TcxGridDBColumn
        DataBinding.FieldName = 'Nivel Aprobaci'#243'n'
      end
    end
    object cxGrid1DBTableView5: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSnivelcompartimentacion
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView5idniveldecompatirmentacion: TcxGridDBColumn
        DataBinding.FieldName = 'idniveldecompatirmentacion'
      end
      object cxGrid1DBTableView5niveldecompartimentacion: TcxGridDBColumn
        DataBinding.FieldName = 'niveldecompartimentacion'
        Width = 183
      end
    end
    object cxGrid1DBTableView6: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSoperaciones
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView6idOperacion: TcxGridDBColumn
        DataBinding.FieldName = 'idOperacion'
      end
      object cxGrid1DBTableView6operacion: TcxGridDBColumn
        DataBinding.FieldName = 'operacion'
        Width = 205
      end
    end
    object cxGrid1Level0: TcxGridLevel
      Caption = 'Dptos y Secciones'
      GridView = cxGrid1DBTableView0
    end
    object cxGrid1Level1: TcxGridLevel
      Caption = 'Expedientes Operativos'
      GridView = cxGrid1DBTableView1
    end
    object cxGrid1Level2: TcxGridLevel
      Caption = 'Faci'
      GridView = cxGrid1DBTableView2
    end
    object cxGrid1Level3: TcxGridLevel
      Caption = 'Fase'
      GridView = cxGrid1DBTableView3
    end
    object cxGrid1Level4: TcxGridLevel
      Caption = 'Nivel de Aprobaci'#243'n'
      GridView = cxGrid1DBTableView4
    end
    object cxGrid1Level5: TcxGridLevel
      Caption = 'Nivel de Compartimentaci'#243'n'
      GridView = cxGrid1DBTableView5
    end
    object cxGrid1Level6: TcxGridLevel
      Caption = 'Operaciones'
      GridView = cxGrid1DBTableView6
    end
  end
end
