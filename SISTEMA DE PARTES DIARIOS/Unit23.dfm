object FLUGARAPLICADO: TFLUGARAPLICADO
  Left = 0
  Top = 0
  Caption = 'LUGAR APLICADO'
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
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 426
    ExplicitHeight = 286
    Height = 284
    Width = 424
    object cxGrid1: TcxGrid
      Left = 3
      Top = 21
      Width = 418
      Height = 260
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 18
      ExplicitWidth = 422
      ExplicitHeight = 266
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = DM.DSTLUGARAPLIC
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Appending = True
        OptionsView.Navigator = True
        object cxGrid1DBTableView1LugarAplicado: TcxGridDBColumn
          DataBinding.FieldName = 'Lugar Aplicado'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
end
