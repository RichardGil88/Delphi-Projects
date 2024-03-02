object Fdescubrimientos: TFdescubrimientos
  Left = 544
  Top = 251
  Caption = 'Descubrimientos'
  ClientHeight = 471
  ClientWidth = 650
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
    Width = 650
    Height = 471
    Align = alClient
    TabOrder = 0
    RootLevelOptions.DetailTabsPosition = dtpTop
    object cxGrid1DBTableView0: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      FilterBox.Position = fpTop
      FilterBox.Visible = fvNever
      DataController.DataSource = DM.DSdescdptos
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
        Width = 183
      end
    end
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSdescest
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView1iddestado: TcxGridDBColumn
        DataBinding.FieldName = 'iddestado'
      end
      object cxGrid1DBTableView1estado: TcxGridDBColumn
        DataBinding.FieldName = 'estado'
      end
      object cxGrid1DBTableView1descripcion: TcxGridDBColumn
        DataBinding.FieldName = 'descripcion'
      end
      object cxGrid1DBTableView1activo: TcxGridDBColumn
        DataBinding.FieldName = 'activo'
      end
      object cxGrid1DBTableView1orden: TcxGridDBColumn
        DataBinding.FieldName = 'orden'
      end
    end
    object cxGrid1DBTableView2: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSdescfase
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView2idFase: TcxGridDBColumn
        DataBinding.FieldName = 'idFase'
      end
      object cxGrid1DBTableView2fase: TcxGridDBColumn
        DataBinding.FieldName = 'fase'
      end
    end
    object cxGrid1DBTableView3: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSdescfuentes
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView3fuente: TcxGridDBColumn
        DataBinding.FieldName = 'fuente'
      end
    end
    object cxGrid1DBTableView4: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSdesclug
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView4idlugar: TcxGridDBColumn
        DataBinding.FieldName = 'idlugar'
      end
      object cxGrid1DBTableView4lugar: TcxGridDBColumn
        DataBinding.FieldName = 'lugar'
      end
      object cxGrid1DBTableView4descripcion: TcxGridDBColumn
        DataBinding.FieldName = 'descripcion'
      end
      object cxGrid1DBTableView4activo: TcxGridDBColumn
        DataBinding.FieldName = 'activo'
      end
      object cxGrid1DBTableView4orden: TcxGridDBColumn
        DataBinding.FieldName = 'orden'
      end
    end
    object cxGrid1DBTableView5: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSdescorigen
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView5idorigendescubrimiento: TcxGridDBColumn
        DataBinding.FieldName = 'idorigendescubrimiento'
      end
      object cxGrid1DBTableView5origendescubrimiento: TcxGridDBColumn
        DataBinding.FieldName = 'origendescubrimiento'
      end
      object cxGrid1DBTableView5descripcion: TcxGridDBColumn
        DataBinding.FieldName = 'descripcion'
      end
      object cxGrid1DBTableView5activo: TcxGridDBColumn
        DataBinding.FieldName = 'activo'
      end
      object cxGrid1DBTableView5orden: TcxGridDBColumn
        DataBinding.FieldName = 'orden'
      end
    end
    object cxGrid1DBTableView6: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSdesctipos
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView6idtipodes: TcxGridDBColumn
        DataBinding.FieldName = 'idtipodes'
      end
      object cxGrid1DBTableView6tipodes: TcxGridDBColumn
        DataBinding.FieldName = 'tipodes'
      end
    end
    object cxGrid1DBTableView7: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSdescmiget
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView7idetapa: TcxGridDBColumn
        DataBinding.FieldName = 'idetapa'
      end
      object cxGrid1DBTableView7etapamigracion: TcxGridDBColumn
        DataBinding.FieldName = 'etapamigracion'
      end
      object cxGrid1DBTableView7descripcion: TcxGridDBColumn
        DataBinding.FieldName = 'descripcion'
      end
      object cxGrid1DBTableView7activo: TcxGridDBColumn
        DataBinding.FieldName = 'activo'
      end
      object cxGrid1DBTableView7orden: TcxGridDBColumn
        DataBinding.FieldName = 'orden'
      end
    end
    object cxGrid1DBTableView8: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSdescmiginv
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView8idinvolucrado: TcxGridDBColumn
        DataBinding.FieldName = 'idinvolucrado'
      end
      object cxGrid1DBTableView8involucradomigracion: TcxGridDBColumn
        DataBinding.FieldName = 'involucradomigracion'
      end
      object cxGrid1DBTableView8descripcion: TcxGridDBColumn
        DataBinding.FieldName = 'descripcion'
      end
      object cxGrid1DBTableView8activo: TcxGridDBColumn
        DataBinding.FieldName = 'activo'
      end
      object cxGrid1DBTableView8orden: TcxGridDBColumn
        DataBinding.FieldName = 'orden'
      end
    end
    object cxGrid1DBTableView9: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSdescmigtipos
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView9idtipomigracion: TcxGridDBColumn
        DataBinding.FieldName = 'idtipomigracion'
      end
      object cxGrid1DBTableView9tipomigracion: TcxGridDBColumn
        DataBinding.FieldName = 'tipomigracion'
      end
      object cxGrid1DBTableView9descripcion: TcxGridDBColumn
        DataBinding.FieldName = 'descripcion'
      end
      object cxGrid1DBTableView9activo: TcxGridDBColumn
        DataBinding.FieldName = 'activo'
      end
      object cxGrid1DBTableView9orden: TcxGridDBColumn
        DataBinding.FieldName = 'orden'
      end
    end
    object cxGrid1Level0: TcxGridLevel
      Caption = 'Dptos'
      GridView = cxGrid1DBTableView0
    end
    object cxGrid1Level1: TcxGridLevel
      Caption = 'Estados'
      GridView = cxGrid1DBTableView1
    end
    object cxGrid1Level2: TcxGridLevel
      Caption = 'Fase'
      GridView = cxGrid1DBTableView2
    end
    object cxGrid1Level3: TcxGridLevel
      Caption = 'Fuentes'
      GridView = cxGrid1DBTableView3
    end
    object cxGrid1Level4: TcxGridLevel
      Caption = 'Lugares'
      GridView = cxGrid1DBTableView4
    end
    object cxGrid1Level5: TcxGridLevel
      Caption = 'Origen'
      GridView = cxGrid1DBTableView5
    end
    object cxGrid1Level6: TcxGridLevel
      Caption = 'Tipos'
      GridView = cxGrid1DBTableView6
    end
    object cxGrid1Level7: TcxGridLevel
      Caption = 'Migraci'#243'n Etapas'
      GridView = cxGrid1DBTableView7
    end
    object cxGrid1Level8: TcxGridLevel
      Caption = 'Migraci'#243'n Involucrados'
      GridView = cxGrid1DBTableView8
    end
    object cxGrid1Level9: TcxGridLevel
      Caption = 'Migraci'#243'n Tipos'
      GridView = cxGrid1DBTableView9
    end
  end
end
