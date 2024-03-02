object FavanzadasD: TFavanzadasD
  Left = 0
  Top = 0
  Caption = 'Avanzadas'
  ClientHeight = 453
  ClientWidth = 411
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 411
    Height = 453
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 48
    ExplicitTop = 144
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataModeController.SmartRefresh = True
      DataController.DataSource = DM.DSTavanzadas
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.Appending = True
      OptionsView.Navigator = True
      object cxGrid1DBTableView1unidad: TcxGridDBColumn
        DataBinding.FieldName = 'unidad'
        Width = 38
      end
      object cxGrid1DBTableView1idavanz: TcxGridDBColumn
        DataBinding.FieldName = 'idavanz'
      end
      object cxGrid1DBTableView1PuntoAv: TcxGridDBColumn
        DataBinding.FieldName = 'Punto Av'
        Width = 225
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
end
