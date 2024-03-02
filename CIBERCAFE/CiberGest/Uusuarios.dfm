object Fusuarios: TFusuarios
  Left = 0
  Top = 0
  Caption = 'Usuarios'
  ClientHeight = 412
  ClientWidth = 602
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
    Width = 602
    Height = 412
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DM.DSQusuarios
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'Cantidad = #'
          Kind = skCount
          FieldName = 'usuario'
          Column = cxGrid1DBTableView1usuario
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.MultiSelect = True
      OptionsView.Footer = True
      OptionsView.Indicator = True
      object cxGrid1DBTableView1usuario: TcxGridDBColumn
        DataBinding.FieldName = 'usuario'
        Width = 125
      end
      object cxGrid1DBTableView1cargo: TcxGridDBColumn
        DataBinding.FieldName = 'cargo'
        Width = 106
      end
      object cxGrid1DBTableView1Dpto: TcxGridDBColumn
        DataBinding.FieldName = 'Dpto'
        Width = 175
      end
      object cxGrid1DBTableView1unidad: TcxGridDBColumn
        DataBinding.FieldName = 'unidad'
        Width = 126
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
end
