object Ftipokm: TFtipokm
  Left = 0
  Top = 0
  Caption = 'Tipos de KM'
  ClientHeight = 284
  ClientWidth = 424
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
    Width = 424
    Height = 284
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 426
    ExplicitHeight = 286
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataModeController.SmartRefresh = True
      DataController.DataSource = DM.DSTtiposdeKM
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Appending = True
      OptionsView.Navigator = True
      object cxGrid1DBTableView1TIPODEKMsegnmonitoreo: TcxGridDBColumn
        DataBinding.FieldName = 'TIPO DE KM seg'#250'n monitoreo'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
end
