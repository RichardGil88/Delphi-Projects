object FMostrarUsuarios: TFMostrarUsuarios
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'USUARIOS DEL SISTEMA'
  ClientHeight = 605
  ClientWidth = 991
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = 'USUARIOS DEL SISTEMA'
    TabOrder = 0
    ExplicitLeft = -290
    ExplicitTop = 290
    ExplicitWidth = 1109
    ExplicitHeight = 305
    Height = 605
    Width = 991
    object cxGrid1: TcxGrid
      Left = 3
      Top = 15
      Width = 985
      Height = 581
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      ExplicitLeft = 2
      ExplicitTop = -1
      ExplicitWidth = 1105
      ExplicitHeight = 304
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.Visible = fvNever
        DataController.DataSource = FDMUsuarios.DSMostrarUsuarios
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'CANT=#'
            Kind = skCount
            FieldName = 'CODIGO_PACIENTE'
            DisplayText = 'CANT=#'
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
        OptionsView.IndicatorWidth = 15
        object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO'
        end
        object cxGrid1DBTableView1NOMBRECOMPLETO: TcxGridDBColumn
          Caption = 'NOMBRE COMPLETO'
          DataBinding.FieldName = 'NOMBRECOMPLETO'
          Width = 242
        end
        object cxGrid1DBTableView1USUARIO: TcxGridDBColumn
          DataBinding.FieldName = 'USUARIO'
          Width = 194
        end
        object cxGrid1DBTableView1CARGO: TcxGridDBColumn
          DataBinding.FieldName = 'CARGO'
          Width = 206
        end
        object cxGrid1DBTableView1FECHA_CREADO: TcxGridDBColumn
          DataBinding.FieldName = 'FECHA_CREADO'
          Width = 136
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
end
