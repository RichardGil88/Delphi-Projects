object FAsignarChequeoUsuario: TFAsignarChequeoUsuario
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Asignar Chequeo-Usuario'
  ClientHeight = 553
  ClientWidth = 957
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
    Left = 337
    Top = 0
    Align = alClient
    Caption = 'Lista de Chequeos'
    TabOrder = 0
    ExplicitWidth = 363
    Height = 553
    Width = 311
    object cxGrid1: TcxGrid
      Left = 3
      Top = 15
      Width = 305
      Height = 528
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 354
      object cxGrid1DBTableView1: TcxGridDBTableView
        PopupMenu = PopupMenu1
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = cxGrid1DBTableView1CellClick
        DataController.DataSource = DM.DSQchequeos1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'Cantidad = #'
            Kind = skCount
            FieldName = 'chequeo'
            Column = cxGrid1DBTableView1chequeo
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
        object cxGrid1DBTableView1chequeo: TcxGridDBColumn
          Caption = 'Chequeos'
          DataBinding.FieldName = 'chequeo'
          Width = 300
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 0
    Align = alLeft
    Caption = 'Lista de Usuarios'
    TabOrder = 1
    Height = 553
    Width = 337
    object cxGrid2: TcxGrid
      Left = 3
      Top = 15
      Width = 331
      Height = 528
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 243
      ExplicitHeight = 390
      object cxGrid2DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = cxGrid2DBTableView1CellClick
        DataController.DataSource = DM.DSQusuarios
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'Cantidad = #'
            Kind = skCount
            FieldName = 'usuario'
            Column = cxGrid2DBTableView1usuario
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
        object cxGrid2DBTableView1usuario: TcxGridDBColumn
          Caption = 'Usuarios'
          DataBinding.FieldName = 'usuario'
          Width = 325
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 648
    Top = 0
    Align = alRight
    Caption = 'Asignaciones - Chequeos - Usuarios '
    TabOrder = 2
    Height = 553
    Width = 309
    object cxGrid3: TcxGrid
      Left = 3
      Top = 15
      Width = 303
      Height = 528
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 251
      ExplicitHeight = 388
      object cxGrid3DBTableView1: TcxGridDBTableView
        PopupMenu = PopupMenu2
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = cxGrid3DBTableView1CellClick
        DataController.DataSource = DM.DSQChequeoUsuario
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'cantidad = #'
            Kind = skCount
            FieldName = 'Chequeo'
            Column = cxGrid3DBTableView1Chequeo
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.Footer = True
        OptionsView.Indicator = True
        object cxGrid3DBTableView1usuario: TcxGridDBColumn
          DataBinding.FieldName = 'usuario'
          Visible = False
          GroupIndex = 0
          Width = 133
        end
        object cxGrid3DBTableView1Chequeo: TcxGridDBColumn
          DataBinding.FieldName = 'Chequeo'
          Width = 282
        end
      end
      object cxGrid3Level1: TcxGridLevel
        GridView = cxGrid3DBTableView1
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 456
    Top = 240
    object AsignarMaquinaaUsuario1: TMenuItem
      Caption = 'Asignar Chequeo a Usuario'
      OnClick = AsignarMaquinaaUsuario1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 736
    Top = 256
    object Desasignar1: TMenuItem
      Caption = 'Quitar'
      OnClick = Desasignar1Click
    end
  end
end
