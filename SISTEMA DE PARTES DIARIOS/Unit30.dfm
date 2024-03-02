object FKMPERM: TFKMPERM
  Left = 0
  Top = 0
  Caption = 'KM PERMANENTES Y A REQUERIMIENTO'
  ClientHeight = 631
  ClientWidth = 836
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
    Caption = 'EXPEDIENTES'
    TabOrder = 0
    ExplicitWidth = 838
    ExplicitHeight = 633
    Height = 631
    Width = 836
    object cxGrid1: TcxGrid
      Left = 3
      Top = 15
      Width = 830
      Height = 607
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 18
      ExplicitWidth = 834
      ExplicitHeight = 613
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = DM.DSTEXPKM
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'idkmperm'
            Column = cxGrid1DBTableView1unidad
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.Appending = True
        OptionsView.Navigator = True
        OptionsView.Footer = True
        object cxGrid1DBTableView1unidad: TcxGridDBColumn
          DataBinding.FieldName = 'unidad'
          Width = 55
        end
        object cxGrid1DBTableView1idkmperm: TcxGridDBColumn
          DataBinding.FieldName = 'idkmperm'
          Width = 67
        end
        object cxGrid1DBTableView1expediente: TcxGridDBColumn
          DataBinding.FieldName = 'expediente'
          Width = 176
        end
        object cxGrid1DBTableView1fechainicio: TcxGridDBColumn
          DataBinding.FieldName = 'fecha inicio'
          Width = 75
        end
        object cxGrid1DBTableView1fechafin: TcxGridDBColumn
          DataBinding.FieldName = 'fecha fin'
          Width = 64
        end
        object cxGrid1DBTableView1nivelaprob: TcxGridDBColumn
          DataBinding.FieldName = 'nivel aprob'
          Width = 99
        end
        object cxGrid1DBTableView1estado: TcxGridDBColumn
          DataBinding.FieldName = 'estado'
          Width = 61
        end
        object cxGrid1DBTableView1lugaraplicado: TcxGridDBColumn
          DataBinding.FieldName = 'lugar aplicado'
          Width = 129
        end
        object cxGrid1DBTableView1lugarmonitoreo: TcxGridDBColumn
          DataBinding.FieldName = 'lugar monitoreo'
          Width = 129
        end
        object cxGrid1DBTableView1monitoreadopor: TcxGridDBColumn
          DataBinding.FieldName = 'monitoreado por:'
          Width = 105
        end
        object cxGrid1DBTableView1idioma: TcxGridDBColumn
          DataBinding.FieldName = 'idioma'
          Width = 52
        end
        object cxGrid1DBTableView1fase: TcxGridDBColumn
          DataBinding.FieldName = 'fase'
          Width = 120
        end
        object cxGrid1DBTableView1dpto: TcxGridDBColumn
          DataBinding.FieldName = 'dpto'
          Width = 57
        end
        object cxGrid1DBTableView1seccion: TcxGridDBColumn
          DataBinding.FieldName = 'seccion'
          Width = 40
        end
        object cxGrid1DBTableView1cumpfinalidadop: TcxGridDBColumn
          DataBinding.FieldName = 'cump finalidad op'
          Width = 88
        end
        object cxGrid1DBTableView1motivonocumplim: TcxGridDBColumn
          DataBinding.FieldName = 'motivo no cumplim'
          Width = 109
        end
        object cxGrid1DBTableView1referencia: TcxGridDBColumn
          DataBinding.FieldName = 'referencia'
          Width = 2424
        end
        object cxGrid1DBTableView1usuario: TcxGridDBColumn
          DataBinding.FieldName = 'usuario'
          Width = 77
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
end
