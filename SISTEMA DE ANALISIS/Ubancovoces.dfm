object Fbancovoces: TFbancovoces
  Left = 397
  Top = 239
  Caption = 'Banco de voces '
  ClientHeight = 608
  ClientWidth = 785
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
    Width = 785
    Height = 608
    Align = alClient
    TabOrder = 0
    RootLevelOptions.DetailTabsPosition = dtpTop
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSbancovocesamb
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView1idambiente: TcxGridDBColumn
        DataBinding.FieldName = 'idambiente'
      end
      object cxGrid1DBTableView1ambiente: TcxGridDBColumn
        DataBinding.FieldName = 'ambiente'
      end
      object cxGrid1DBTableView1descripcion: TcxGridDBColumn
        DataBinding.FieldName = 'descripcion'
      end
      object cxGrid1DBTableView1orden: TcxGridDBColumn
        DataBinding.FieldName = 'orden'
      end
      object cxGrid1DBTableView1activa: TcxGridDBColumn
        DataBinding.FieldName = 'activa'
      end
    end
    object cxGrid1DBTableView2: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSestadosanimicos
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
      object cxGrid1DBTableView2orden: TcxGridDBColumn
        DataBinding.FieldName = 'orden'
      end
      object cxGrid1DBTableView2activa: TcxGridDBColumn
        DataBinding.FieldName = 'activa'
      end
    end
    object cxGrid1DBTableView3: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSestadossalud
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView3estadosalud: TcxGridDBColumn
        DataBinding.FieldName = 'estadosalud'
      end
      object cxGrid1DBTableView3descripcion: TcxGridDBColumn
        DataBinding.FieldName = 'descripcion'
      end
      object cxGrid1DBTableView3orden: TcxGridDBColumn
        DataBinding.FieldName = 'orden'
      end
      object cxGrid1DBTableView3activa: TcxGridDBColumn
        DataBinding.FieldName = 'activa'
      end
    end
    object cxGrid1DBTableView4: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.DSprocedencias
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView4procedencia: TcxGridDBColumn
        DataBinding.FieldName = 'procedencia'
      end
      object cxGrid1DBTableView4descripcion: TcxGridDBColumn
        DataBinding.FieldName = 'descripcion'
      end
      object cxGrid1DBTableView4orden: TcxGridDBColumn
        DataBinding.FieldName = 'orden'
      end
      object cxGrid1DBTableView4activa: TcxGridDBColumn
        DataBinding.FieldName = 'activa'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      Caption = 'Ambientales'
      GridView = cxGrid1DBTableView1
      Options.DetailTabsPosition = dtpTop
    end
    object cxGrid1Level2: TcxGridLevel
      Caption = 'Estados An'#237'micos'
      GridView = cxGrid1DBTableView2
      Options.DetailTabsPosition = dtpTop
    end
    object cxGrid1Level3: TcxGridLevel
      Caption = 'Estados de Salud'
      GridView = cxGrid1DBTableView3
      Options.DetailTabsPosition = dtpTop
    end
    object cxGrid1Level4: TcxGridLevel
      Caption = 'Procedencias'
      GridView = cxGrid1DBTableView4
      Options.DetailTabsPosition = dtpTop
    end
  end
end
