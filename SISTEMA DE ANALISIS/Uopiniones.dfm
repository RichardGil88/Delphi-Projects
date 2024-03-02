object FOpiniones: TFOpiniones
  Left = 530
  Top = 252
  Caption = 'Opiniones'
  ClientHeight = 442
  ClientWidth = 642
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
    Width = 642
    Height = 442
    Align = alClient
    TabOrder = 0
    RootLevelOptions.DetailTabsPosition = dtpTop
    object cxGrid1DBTableView0: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      FilterBox.Position = fpTop
      FilterBox.Visible = fvNever
      DataController.DataSource = DM.DSopcatpers
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
      object cxGrid1DBTableView0catpersona: TcxGridDBColumn
        DataBinding.FieldName = 'catpersona'
      end
    end
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSopcatpersviejo
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView1catpersona: TcxGridDBColumn
        DataBinding.FieldName = 'catpersona'
      end
    end
    object cxGrid1DBTableView2: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSopest
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
      DataController.DataSource = DM.DSopestemo
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView3estadoemocional: TcxGridDBColumn
        DataBinding.FieldName = 'estadoemocional'
      end
    end
    object cxGrid1DBTableView4: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSopfuent
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView4fuente: TcxGridDBColumn
        DataBinding.FieldName = 'fuente'
      end
    end
    object cxGrid1DBTableView5: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSophist
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView5idopinion: TcxGridDBColumn
        DataBinding.FieldName = 'idopinion'
      end
      object cxGrid1DBTableView5idtx: TcxGridDBColumn
        DataBinding.FieldName = 'idtx'
      end
      object cxGrid1DBTableView5fechatx: TcxGridDBColumn
        DataBinding.FieldName = 'fechatx'
      end
      object cxGrid1DBTableView5clave: TcxGridDBColumn
        DataBinding.FieldName = 'clave'
      end
      object cxGrid1DBTableView5grupo: TcxGridDBColumn
        DataBinding.FieldName = 'grupo'
      end
      object cxGrid1DBTableView5caso: TcxGridDBColumn
        DataBinding.FieldName = 'caso'
      end
      object cxGrid1DBTableView5dptoseccion: TcxGridDBColumn
        DataBinding.FieldName = 'dptoseccion'
      end
      object cxGrid1DBTableView5oficial: TcxGridDBColumn
        DataBinding.FieldName = 'oficial'
      end
      object cxGrid1DBTableView5documento: TcxGridDBColumn
        DataBinding.FieldName = 'documento'
      end
      object cxGrid1DBTableView5text: TcxGridDBColumn
        DataBinding.FieldName = 'text'
      end
      object cxGrid1DBTableView5tipo: TcxGridDBColumn
        DataBinding.FieldName = 'tipo'
      end
      object cxGrid1DBTableView5estadoopinion: TcxGridDBColumn
        DataBinding.FieldName = 'estadoopinion'
      end
      object cxGrid1DBTableView5fichero: TcxGridDBColumn
        DataBinding.FieldName = 'fichero'
      end
      object cxGrid1DBTableView5creadopor: TcxGridDBColumn
        DataBinding.FieldName = 'creadopor'
      end
      object cxGrid1DBTableView5fecha: TcxGridDBColumn
        DataBinding.FieldName = 'fecha'
      end
      object cxGrid1DBTableView5user: TcxGridDBColumn
        DataBinding.FieldName = 'user'
      end
      object cxGrid1DBTableView5fechauser: TcxGridDBColumn
        DataBinding.FieldName = 'fechauser'
      end
      object cxGrid1DBTableView5grupouser: TcxGridDBColumn
        DataBinding.FieldName = 'grupouser'
      end
      object cxGrid1DBTableView5unidaduser: TcxGridDBColumn
        DataBinding.FieldName = 'unidaduser'
      end
      object cxGrid1DBTableView5comentario: TcxGridDBColumn
        DataBinding.FieldName = 'comentario'
      end
      object cxGrid1DBTableView5palabras: TcxGridDBColumn
        DataBinding.FieldName = 'palabras'
      end
      object cxGrid1DBTableView5tipoopinion: TcxGridDBColumn
        DataBinding.FieldName = 'tipoopinion'
      end
      object cxGrid1DBTableView5tematica: TcxGridDBColumn
        DataBinding.FieldName = 'tematica'
      end
      object cxGrid1DBTableView5estadoemocional: TcxGridDBColumn
        DataBinding.FieldName = 'estadoemocional'
      end
      object cxGrid1DBTableView5categoriapersona: TcxGridDBColumn
        DataBinding.FieldName = 'categoriapersona'
      end
      object cxGrid1DBTableView5sexo: TcxGridDBColumn
        DataBinding.FieldName = 'sexo'
      end
      object cxGrid1DBTableView5entregado: TcxGridDBColumn
        DataBinding.FieldName = 'entregado'
      end
      object cxGrid1DBTableView5fechaentregado: TcxGridDBColumn
        DataBinding.FieldName = 'fechaentregado'
      end
      object cxGrid1DBTableView5ktentregado: TcxGridDBColumn
        DataBinding.FieldName = 'ktentregado'
      end
      object cxGrid1DBTableView5procesado: TcxGridDBColumn
        DataBinding.FieldName = 'procesado'
      end
      object cxGrid1DBTableView5fechaprocesado: TcxGridDBColumn
        DataBinding.FieldName = 'fechaprocesado'
      end
      object cxGrid1DBTableView5ktprocesado: TcxGridDBColumn
        DataBinding.FieldName = 'ktprocesado'
      end
    end
    object cxGrid1DBTableView6: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSopsexo
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView6sexo: TcxGridDBColumn
        DataBinding.FieldName = 'sexo'
      end
    end
    object cxGrid1DBTableView7: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSoptematicas
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView7tematicas: TcxGridDBColumn
        DataBinding.FieldName = 'tematicas'
      end
    end
    object cxGrid1DBTableView8: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSoptipos
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView8tipoopinion: TcxGridDBColumn
        DataBinding.FieldName = 'tipoopinion'
      end
    end
    object cxGrid1Level0: TcxGridLevel
      Caption = 'Categor'#237'a Persona'
      GridView = cxGrid1DBTableView0
    end
    object cxGrid1Level1: TcxGridLevel
      Caption = 'Categor'#237'a Persona Viejo'
      GridView = cxGrid1DBTableView1
    end
    object cxGrid1Level2: TcxGridLevel
      Caption = 'Estados'
      GridView = cxGrid1DBTableView2
    end
    object cxGrid1Level3: TcxGridLevel
      Caption = 'Estados Emocionales'
      GridView = cxGrid1DBTableView3
    end
    object cxGrid1Level4: TcxGridLevel
      Caption = 'Fuentes'
      GridView = cxGrid1DBTableView4
    end
    object cxGrid1Level5: TcxGridLevel
      Caption = 'Hist'#243'ricos'
      GridView = cxGrid1DBTableView5
    end
    object cxGrid1Level6: TcxGridLevel
      Caption = 'Sexo'
      GridView = cxGrid1DBTableView6
    end
    object cxGrid1Level7: TcxGridLevel
      Caption = 'Tematicas'
      GridView = cxGrid1DBTableView7
    end
    object cxGrid1Level8: TcxGridLevel
      Caption = 'Tipos'
      GridView = cxGrid1DBTableView8
    end
  end
end
