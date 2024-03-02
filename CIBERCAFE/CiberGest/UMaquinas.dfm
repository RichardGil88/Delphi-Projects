object FMaquinas: TFMaquinas
  Left = 0
  Top = 0
  Caption = 'M'#225'quinas'
  ClientHeight = 522
  ClientWidth = 875
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
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = 'Informaci'#243'n de las Ubicaciones'
    TabOrder = 0
    Height = 522
    Width = 875
    object cxGrid1: TcxGrid
      Left = 3
      Top = 15
      Width = 869
      Height = 497
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Visible = True
        DataController.DataSource = DM.DSQmaquinas
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'idMaquina'
            Column = cxGrid1DBTableView1idMaquina
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
        OptionsView.Footer = True
        OptionsView.Indicator = True
        object cxGrid1DBTableView1idMaquina: TcxGridDBColumn
          DataBinding.FieldName = 'idMaquina'
        end
        object cxGrid1DBTableView1Nombre_PC: TcxGridDBColumn
          DataBinding.FieldName = 'Nombre_PC'
          Width = 144
        end
        object cxGrid1DBTableView1IP: TcxGridDBColumn
          DataBinding.FieldName = 'IP'
          Width = 127
        end
        object cxGrid1DBTableView1Provincia: TcxGridDBColumn
          DataBinding.FieldName = 'Provincia'
          Width = 131
        end
        object cxGrid1DBTableView1Municipio: TcxGridDBColumn
          DataBinding.FieldName = 'Municipio'
          Width = 102
        end
        object cxGrid1DBTableView1Nombre_CiberCafe: TcxGridDBColumn
          DataBinding.FieldName = 'Nombre_CiberCafe'
          Width = 132
        end
        object cxGrid1DBTableView1Ubicacion: TcxGridDBColumn
          DataBinding.FieldName = 'Ubicacion'
          Width = 153
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
end
