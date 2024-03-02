object FEventos: TFEventos
  Left = 520
  Top = 222
  Caption = 'Eventos'
  ClientHeight = 458
  ClientWidth = 677
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
    Width = 677
    Height = 458
    Align = alClient
    TabOrder = 0
    RootLevelOptions.DetailTabsPosition = dtpTop
    object cxGrid1DBTableView0: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      FilterBox.Position = fpTop
      FilterBox.Visible = fvNever
      DataController.DataSource = DM.DSevafiliacion
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
      object cxGrid1DBTableView0afiliacion: TcxGridDBColumn
        DataBinding.FieldName = 'afiliacion'
      end
      object cxGrid1DBTableView0descripcion: TcxGridDBColumn
        DataBinding.FieldName = 'descripcion'
      end
      object cxGrid1DBTableView0activo: TcxGridDBColumn
        DataBinding.FieldName = 'activo'
      end
      object cxGrid1DBTableView0orden: TcxGridDBColumn
        DataBinding.FieldName = 'orden'
      end
    end
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSevafiliacionesp
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView1idafiliacionespecifica: TcxGridDBColumn
        DataBinding.FieldName = 'idafiliacionespecifica'
      end
      object cxGrid1DBTableView1afiliacionespecifica: TcxGridDBColumn
        DataBinding.FieldName = 'afiliacionespecifica'
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
      DataController.DataSource = DM.DSevest
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView2idestado: TcxGridDBColumn
        DataBinding.FieldName = 'idestado'
      end
      object cxGrid1DBTableView2estado: TcxGridDBColumn
        DataBinding.FieldName = 'estado'
      end
      object cxGrid1DBTableView2descripcion: TcxGridDBColumn
        DataBinding.FieldName = 'descripcion'
      end
      object cxGrid1DBTableView2activo: TcxGridDBColumn
        DataBinding.FieldName = 'activo'
      end
      object cxGrid1DBTableView2orden: TcxGridDBColumn
        DataBinding.FieldName = 'orden'
      end
    end
    object cxGrid1DBTableView3: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSevnivpart
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView3idnivelparticipacion: TcxGridDBColumn
        DataBinding.FieldName = 'idnivelparticipacion'
      end
      object cxGrid1DBTableView3nivelparticipacion: TcxGridDBColumn
        DataBinding.FieldName = 'nivelparticipacion'
      end
      object cxGrid1DBTableView3descripcion: TcxGridDBColumn
        DataBinding.FieldName = 'descripcion'
      end
      object cxGrid1DBTableView3activo: TcxGridDBColumn
        DataBinding.FieldName = 'activo'
      end
      object cxGrid1DBTableView3orden: TcxGridDBColumn
        DataBinding.FieldName = 'orden'
      end
    end
    object cxGrid1DBTableView4: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSevorigen
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView4idorigen: TcxGridDBColumn
        DataBinding.FieldName = 'idorigen'
      end
      object cxGrid1DBTableView4origen: TcxGridDBColumn
        DataBinding.FieldName = 'origen'
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
      DataController.DataSource = DM.DSevtipos
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView5idtipoevento: TcxGridDBColumn
        DataBinding.FieldName = 'idtipoevento'
      end
      object cxGrid1DBTableView5tipoevento: TcxGridDBColumn
        DataBinding.FieldName = 'tipoevento'
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
    object cxGrid1Level0: TcxGridLevel
      Caption = 'Afiliaci'#243'n'
      GridView = cxGrid1DBTableView0
    end
    object cxGrid1Level1: TcxGridLevel
      Caption = 'Afiliaci'#243'n Espec'#237'fica'
      GridView = cxGrid1DBTableView1
    end
    object cxGrid1Level2: TcxGridLevel
      Caption = 'Estados'
      GridView = cxGrid1DBTableView2
    end
    object cxGrid1Level3: TcxGridLevel
      Caption = 'Nivel de Participaci'#243'n'
      GridView = cxGrid1DBTableView3
    end
    object cxGrid1Level4: TcxGridLevel
      Caption = 'Origen'
      GridView = cxGrid1DBTableView4
    end
    object cxGrid1Level5: TcxGridLevel
      Caption = 'Tipos'
      GridView = cxGrid1DBTableView5
    end
  end
end
