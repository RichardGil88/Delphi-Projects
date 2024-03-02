object Fveralertas: TFveralertas
  Left = 0
  Top = 0
  Caption = 'Fveralertas'
  ClientHeight = 357
  ClientWidth = 817
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
  object AdvCircularProgress1: TAdvCircularProgress
    Left = 384
    Top = 120
    Width = 60
    Height = 60
    Appearance.BackGroundColor = clNone
    Appearance.BorderColor = clNone
    Appearance.ActiveSegmentColor = 16752543
    Appearance.InActiveSegmentColor = clSilver
    Appearance.TransitionSegmentColor = 10485760
    Appearance.ProgressSegmentColor = 4194432
    Interval = 100
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 817
    Height = 357
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.Append.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      DataController.DataModeController.SmartRefresh = True
      DataController.DataSource = DM.DSalertas
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          FieldName = 'id'
          Column = cxGrid1DBTableView1id
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.Navigator = True
      OptionsView.Footer = True
      object cxGrid1DBTableView1id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        Width = 41
      end
      object cxGrid1DBTableView1Unidad: TcxGridDBColumn
        DataBinding.FieldName = 'Unidad'
        Width = 46
      end
      object cxGrid1DBTableView1Alerta: TcxGridDBColumn
        DataBinding.FieldName = 'Alerta'
        Width = 530
      end
      object cxGrid1DBTableView1Estado: TcxGridDBColumn
        DataBinding.FieldName = 'Estado'
        Width = 90
      end
      object cxGrid1DBTableView1atendidopor: TcxGridDBColumn
        DataBinding.FieldName = 'atendidopor'
      end
      object cxGrid1DBTableView1Usuario: TcxGridDBColumn
        DataBinding.FieldName = 'Usuario'
        Width = 111
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
end
