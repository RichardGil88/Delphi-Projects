object FEstadisticas: TFEstadisticas
  Left = 0
  Top = 0
  Caption = 'Estad'#237'sticas'
  ClientHeight = 552
  ClientWidth = 818
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
  object PageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 818
    Height = 447
    ActivePage = cxTabSheet1
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 621
    ExplicitHeight = 518
    ClientRectBottom = 447
    ClientRectRight = 818
    ClientRectTop = 24
    object cxTabSheet4: TcxTabSheet
      Caption = 'Desp Claves Estadisticas'
      ImageIndex = 0
      ExplicitWidth = 621
      ExplicitHeight = 494
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 818
        Height = 423
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 621
        ExplicitHeight = 494
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.Insert.Visible = False
          NavigatorButtons.Delete.Visible = False
          NavigatorButtons.Edit.Visible = False
          NavigatorButtons.Post.Visible = False
          NavigatorButtons.Cancel.Visible = False
          NavigatorButtons.SaveBookmark.Visible = False
          NavigatorButtons.GotoBookmark.Visible = False
          DataController.DataSource = Fmain.UniDataSource2
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = 'cdadRx = #'
              Kind = skSum
              FieldName = 'cdadRx'
              Column = cxGrid1DBTableView1cdadRx
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'cdadRx'
              Column = cxGrid1DBTableView1cdadRx
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellMultiSelect = True
          OptionsView.Navigator = True
          OptionsView.Footer = True
          OptionsView.Indicator = True
          object cxGrid1DBTableView1id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
          end
          object cxGrid1DBTableView1fecha: TcxGridDBColumn
            DataBinding.FieldName = 'fecha'
          end
          object cxGrid1DBTableView1grupo: TcxGridDBColumn
            DataBinding.FieldName = 'grupo'
            Width = 100
          end
          object cxGrid1DBTableView1unidad: TcxGridDBColumn
            DataBinding.FieldName = 'unidad'
            Visible = False
            GroupIndex = 1
            Width = 83
          end
          object cxGrid1DBTableView1autoridad: TcxGridDBColumn
            DataBinding.FieldName = 'autoridad'
            Visible = False
            GroupIndex = 0
            Width = 111
          end
          object cxGrid1DBTableView1chequeo: TcxGridDBColumn
            DataBinding.FieldName = 'chequeo'
            Width = 184
          end
          object cxGrid1DBTableView1cdadRx: TcxGridDBColumn
            DataBinding.FieldName = 'cdadRx'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Desp Estadisticas'
      ImageIndex = 1
      ExplicitWidth = 813
      ExplicitHeight = 604
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 818
        Height = 423
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 813
        ExplicitHeight = 604
        object cxGrid2DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.Insert.Visible = False
          NavigatorButtons.Delete.Visible = False
          NavigatorButtons.Edit.Visible = False
          NavigatorButtons.Post.Visible = False
          NavigatorButtons.Cancel.Visible = False
          NavigatorButtons.SaveBookmark.Visible = False
          NavigatorButtons.GotoBookmark.Visible = False
          DataController.DataSource = Fmain.UniDataSource3
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = 'procesados =#'
              Kind = skSum
              FieldName = 'procesados'
              Column = cxGrid2DBTableView1procesados
            end
            item
              Format = 'chequeados =#'
              Kind = skSum
              FieldName = 'chequeados'
              Column = cxGrid2DBTableView1chequeados
            end
            item
              Format = 'masivos =#'
              Kind = skSum
              FieldName = 'masivos'
              Column = cxGrid2DBTableView1masivos
            end
            item
              Format = 'ParaEstudio =#'
              Kind = skSum
              FieldName = 'ParaEstudio'
              Column = cxGrid2DBTableView1ParaEstudio
            end
            item
              Format = 'almacenados =#'
              Kind = skSum
              FieldName = 'almacenados'
              Column = cxGrid2DBTableView1almacenados
            end
            item
              Format = 'ipdr =#'
              Kind = skSum
              FieldName = 'ipdr'
              Column = cxGrid2DBTableView1ipdr
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'procesados'
              Column = cxGrid2DBTableView1procesados
            end
            item
              Kind = skSum
              FieldName = 'chequeados'
              Column = cxGrid2DBTableView1chequeados
            end
            item
              Kind = skSum
              FieldName = 'masivos'
              Column = cxGrid2DBTableView1masivos
            end
            item
              Kind = skSum
              FieldName = 'ParaEstudio'
              Column = cxGrid2DBTableView1ParaEstudio
            end
            item
              Kind = skSum
              FieldName = 'almacenados'
              Column = cxGrid2DBTableView1almacenados
            end
            item
              Kind = skSum
              FieldName = 'ipdr'
              Column = cxGrid2DBTableView1ipdr
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellMultiSelect = True
          OptionsView.Navigator = True
          OptionsView.Footer = True
          OptionsView.Indicator = True
          object cxGrid2DBTableView1id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
          end
          object cxGrid2DBTableView1fecha: TcxGridDBColumn
            DataBinding.FieldName = 'fecha'
          end
          object cxGrid2DBTableView1despachador: TcxGridDBColumn
            DataBinding.FieldName = 'despachador'
            Visible = False
            GroupIndex = 0
            Width = 114
          end
          object cxGrid2DBTableView1procesados: TcxGridDBColumn
            DataBinding.FieldName = 'procesados'
            Width = 112
          end
          object cxGrid2DBTableView1chequeados: TcxGridDBColumn
            DataBinding.FieldName = 'chequeados'
            Width = 106
          end
          object cxGrid2DBTableView1masivos: TcxGridDBColumn
            DataBinding.FieldName = 'masivos'
            Width = 101
          end
          object cxGrid2DBTableView1ParaEstudio: TcxGridDBColumn
            DataBinding.FieldName = 'ParaEstudio'
            Width = 99
          end
          object cxGrid2DBTableView1almacenados: TcxGridDBColumn
            DataBinding.FieldName = 'almacenados'
            Width = 102
          end
          object cxGrid2DBTableView1ipdr: TcxGridDBColumn
            DataBinding.FieldName = 'ipdr'
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'Desp Grupos Estadisticas'
      ImageIndex = 2
      ExplicitWidth = 813
      ExplicitHeight = 604
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 818
        Height = 423
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 813
        ExplicitHeight = 604
        object cxGrid3DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.Insert.Visible = False
          NavigatorButtons.Delete.Visible = False
          NavigatorButtons.Edit.Visible = False
          NavigatorButtons.Post.Visible = False
          NavigatorButtons.Cancel.Visible = False
          NavigatorButtons.SaveBookmark.Visible = False
          NavigatorButtons.GotoBookmark.Visible = False
          DataController.DataSource = Fmain.UniDataSource4
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = 'cdadRx = #'
              Kind = skSum
              FieldName = 'cdadRx'
              Column = cxGrid3DBTableView1cdadRx
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'cdadRx'
              Column = cxGrid3DBTableView1cdadRx
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsSelection.CellMultiSelect = True
          OptionsView.Navigator = True
          OptionsView.Footer = True
          OptionsView.Indicator = True
          object cxGrid3DBTableView1id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Width = 20
          end
          object cxGrid3DBTableView1fecha: TcxGridDBColumn
            DataBinding.FieldName = 'fecha'
            Width = 97
          end
          object cxGrid3DBTableView1grupo: TcxGridDBColumn
            DataBinding.FieldName = 'grupo'
            Width = 94
          end
          object cxGrid3DBTableView1unidad: TcxGridDBColumn
            DataBinding.FieldName = 'unidad'
            Visible = False
            GroupIndex = 1
            Width = 54
          end
          object cxGrid3DBTableView1cdadRx: TcxGridDBColumn
            DataBinding.FieldName = 'cdadRx'
            Width = 97
          end
          object cxGrid3DBTableView1autoridad: TcxGridDBColumn
            DataBinding.FieldName = 'autoridad'
            Visible = False
            GroupIndex = 0
            Width = 126
          end
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = cxGrid3DBTableView1
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Monkd Estadisticas'
      ImageIndex = 3
      ExplicitWidth = 813
      ExplicitHeight = 604
      object cxGrid4: TcxGrid
        Left = 0
        Top = 0
        Width = 818
        Height = 423
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 813
        ExplicitHeight = 604
        object cxGrid4DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.Insert.Visible = False
          NavigatorButtons.Delete.Visible = False
          NavigatorButtons.Edit.Visible = False
          NavigatorButtons.Post.Visible = False
          NavigatorButtons.Cancel.Visible = False
          NavigatorButtons.SaveBookmark.Visible = False
          NavigatorButtons.GotoBookmark.Visible = False
          DataController.DataSource = Fmain.UniDataSource5
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = 'PktRx =#'
              Kind = skSum
              FieldName = 'PktRx'
              Column = cxGrid4DBTableView1PktRx
            end
            item
              Format = 'BytesRx =#'
              Kind = skSum
              FieldName = 'BytesRx'
              Column = cxGrid4DBTableView1BytesRx
            end
            item
              Format = 'Cdad =#'
              Kind = skSum
              FieldName = 'Cdad'
              Column = cxGrid4DBTableView1Cdad
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'PktRx'
              Column = cxGrid4DBTableView1PktRx
            end
            item
              Kind = skSum
              FieldName = 'BytesRx'
              Column = cxGrid4DBTableView1BytesRx
            end
            item
              Kind = skSum
              FieldName = 'Cdad'
              Column = cxGrid4DBTableView1Cdad
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellMultiSelect = True
          OptionsView.Navigator = True
          OptionsView.Footer = True
          OptionsView.Indicator = True
          object cxGrid4DBTableView1id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
          end
          object cxGrid4DBTableView1idMon: TcxGridDBColumn
            DataBinding.FieldName = 'idMon'
            Visible = False
            GroupIndex = 0
          end
          object cxGrid4DBTableView1fecha: TcxGridDBColumn
            DataBinding.FieldName = 'fecha'
          end
          object cxGrid4DBTableView1tipoTx: TcxGridDBColumn
            DataBinding.FieldName = 'tipoTx'
          end
          object cxGrid4DBTableView1PktRx: TcxGridDBColumn
            DataBinding.FieldName = 'PktRx'
          end
          object cxGrid4DBTableView1BytesRx: TcxGridDBColumn
            DataBinding.FieldName = 'BytesRx'
          end
          object cxGrid4DBTableView1Cdad: TcxGridDBColumn
            DataBinding.FieldName = 'Cdad'
          end
        end
        object cxGrid4Level1: TcxGridLevel
          GridView = cxGrid4DBTableView1
        end
      end
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 447
    Align = alBottom
    Caption = 'Conversor de unidades'
    TabOrder = 1
    ExplicitLeft = 232
    ExplicitTop = 320
    ExplicitWidth = 185
    Height = 105
    Width = 818
    object lbl1: TLabel
      Left = 24
      Top = 29
      Width = 27
      Height = 13
      Caption = 'Bytes'
    end
    object lbl2: TLabel
      Left = 168
      Top = 29
      Width = 48
      Height = 13
      Caption = 'Resultado'
    end
    object edt1: TEdit
      Left = 24
      Top = 48
      Width = 121
      Height = 21
      NumbersOnly = True
      TabOrder = 0
      OnKeyPress = edt1KeyPress
    end
    object edt2: TEdit
      Left = 168
      Top = 48
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
  end
end
