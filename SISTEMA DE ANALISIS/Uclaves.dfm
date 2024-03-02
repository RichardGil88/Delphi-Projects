object Fclaves: TFclaves
  Left = 481
  Top = 406
  Caption = 'Claves'
  ClientHeight = 513
  ClientWidth = 905
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
    Width = 905
    Height = 513
    Align = alClient
    TabOrder = 0
    RootLevelOptions.DetailTabsPosition = dtpTop
    object cxGrid1DBTableView0: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      FilterBox.Position = fpTop
      FilterBox.Visible = fvNever
      DataController.DataSource = DM.DSaplicadopor
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
      object cxGrid1DBTableView0aplicadopor: TcxGridDBColumn
        DataBinding.FieldName = 'aplicado por'
        Width = 84
      end
      object cxGrid1DBTableView0descripcion: TcxGridDBColumn
        DataBinding.FieldName = 'descripcion'
        Width = 88
      end
      object cxGrid1DBTableView0activo: TcxGridDBColumn
        DataBinding.FieldName = 'activo'
        Width = 92
      end
      object cxGrid1DBTableView0orden: TcxGridDBColumn
        DataBinding.FieldName = 'orden'
        Width = 91
      end
    end
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSestados
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView1idEstado: TcxGridDBColumn
        DataBinding.FieldName = 'idEstado'
      end
      object cxGrid1DBTableView1estado: TcxGridDBColumn
        DataBinding.FieldName = 'estado'
      end
    end
    object cxGrid1DBTableView2: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSfinalidad
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView2idFinalidad: TcxGridDBColumn
        DataBinding.FieldName = 'idFinalidad'
      end
      object cxGrid1DBTableView2Finalidad: TcxGridDBColumn
        DataBinding.FieldName = 'Finalidad'
      end
    end
    object cxGrid1DBTableView3: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSlugmon
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView3idLugar: TcxGridDBColumn
        DataBinding.FieldName = 'idLugar'
      end
      object cxGrid1DBTableView3lugar: TcxGridDBColumn
        DataBinding.FieldName = 'lugar'
      end
    end
    object cxGrid1DBTableView4: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSmotcump
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView4idMotivo: TcxGridDBColumn
        DataBinding.FieldName = 'idMotivo'
      end
      object cxGrid1DBTableView4motivoNoCumplimiento: TcxGridDBColumn
        DataBinding.FieldName = 'motivoNoCumplimiento'
      end
    end
    object cxGrid1DBTableView5: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSmotrev
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView5idMotivo: TcxGridDBColumn
        DataBinding.FieldName = 'idMotivo'
      end
      object cxGrid1DBTableView5motivo: TcxGridDBColumn
        DataBinding.FieldName = 'motivo'
        Width = 120
      end
    end
    object cxGrid1DBTableView6: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSclavobser
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView6idEstado: TcxGridDBColumn
        DataBinding.FieldName = 'idEstado'
      end
      object cxGrid1DBTableView6estado: TcxGridDBColumn
        DataBinding.FieldName = 'estado'
      end
    end
    object cxGrid1DBTableView7: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSprorrogas
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView7idResultado: TcxGridDBColumn
        DataBinding.FieldName = 'idResultado'
      end
      object cxGrid1DBTableView7resultado: TcxGridDBColumn
        DataBinding.FieldName = 'resultado'
      end
      object cxGrid1DBTableView7activo: TcxGridDBColumn
        DataBinding.FieldName = 'activo'
      end
    end
    object cxGrid1DBTableView8: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSresult
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView8idResultado: TcxGridDBColumn
        DataBinding.FieldName = 'idResultado'
      end
      object cxGrid1DBTableView8resultado: TcxGridDBColumn
        DataBinding.FieldName = 'resultado'
      end
      object cxGrid1DBTableView8activo: TcxGridDBColumn
        DataBinding.FieldName = 'activo'
      end
    end
    object cxGrid1DBTableView9: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSsitios
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView9idSitio: TcxGridDBColumn
        DataBinding.FieldName = 'idSitio'
      end
      object cxGrid1DBTableView9Sitio: TcxGridDBColumn
        DataBinding.FieldName = 'Sitio'
      end
    end
    object cxGrid1DBTableView10: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DStipotec
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView10idTipodeTecnica: TcxGridDBColumn
        DataBinding.FieldName = 'idTipodeTecnica'
        Width = 130
      end
      object cxGrid1DBTableView10Tipodetecnica: TcxGridDBColumn
        DataBinding.FieldName = 'Tipodetecnica'
        Width = 148
      end
    end
    object cxGrid1Level0: TcxGridLevel
      Caption = 'Aplicada por'
      GridView = cxGrid1DBTableView0
      Options.DetailTabsPosition = dtpTop
    end
    object cxGrid1Level1: TcxGridLevel
      Caption = 'Estados'
      GridView = cxGrid1DBTableView1
      Options.DetailTabsPosition = dtpTop
    end
    object cxGrid1Level2: TcxGridLevel
      Caption = 'Finalidad'
      GridView = cxGrid1DBTableView2
      Options.DetailTabsPosition = dtpTop
    end
    object cxGrid1Level3: TcxGridLevel
      Caption = 'Lugar de Monitoreo'
      GridView = cxGrid1DBTableView3
      Options.DetailTabsPosition = dtpTop
    end
    object cxGrid1Level4: TcxGridLevel
      Caption = 'Motivo de no Cumplimiento'
      GridView = cxGrid1DBTableView4
      Options.DetailTabsPosition = dtpTop
    end
    object cxGrid1Level5: TcxGridLevel
      Caption = 'Motivo de Revisi'#243'n'
      GridView = cxGrid1DBTableView5
      Options.DetailTabsPosition = dtpTop
    end
    object cxGrid1Level6: TcxGridLevel
      Caption = 'Observaciones'
      GridView = cxGrid1DBTableView6
      Options.DetailTabsPosition = dtpTop
    end
    object cxGrid1Level7: TcxGridLevel
      Caption = 'Prorrogas'
      GridView = cxGrid1DBTableView7
      Options.DetailTabsPosition = dtpTop
    end
    object cxGrid1Level8: TcxGridLevel
      Caption = 'Resultados'
      GridView = cxGrid1DBTableView8
      Options.DetailTabsPosition = dtpTop
    end
    object cxGrid1Level9: TcxGridLevel
      Caption = 'Sitios'
      GridView = cxGrid1DBTableView9
      Options.DetailTabsPosition = dtpTop
    end
    object cxGrid1Level10: TcxGridLevel
      Caption = 'Tipo de T'#233'cnica'
      GridView = cxGrid1DBTableView10
      Options.DetailTabsPosition = dtpTop
    end
  end
end
