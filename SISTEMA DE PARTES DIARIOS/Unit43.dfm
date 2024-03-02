object Fefectcorreokd: TFefectcorreokd
  Left = 0
  Top = 0
  Caption = 'Efectividad Correos Kd.'
  ClientHeight = 357
  ClientWidth = 678
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'Escoja las dos Opciones'
    TabOrder = 0
    Height = 105
    Width = 678
    object cxDateEdit1: TcxDateEdit
      Left = 48
      Top = 40
      TabOrder = 0
      Width = 121
    end
    object cxDateEdit2: TcxDateEdit
      Left = 206
      Top = 40
      TabOrder = 1
      Width = 121
    end
    object cxLabel1: TcxLabel
      Left = 46
      Top = 24
      Caption = 'Fecha inicio'
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 206
      Top = 24
      Caption = 'Fecha fin'
      Transparent = True
    end
    object cxButton1: TcxButton
      Left = 368
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Promedio'
      TabOrder = 4
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 368
      Top = 52
      Width = 75
      Height = 25
      Caption = 'Sumatoria'
      TabOrder = 5
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 105
    Align = alClient
    Caption = 'Efectividad'
    TabOrder = 1
    ExplicitLeft = -187
    ExplicitTop = -232
    ExplicitWidth = 865
    ExplicitHeight = 589
    Height = 252
    Width = 678
    object cxGrid1: TcxGrid
      Left = 3
      Top = 15
      Width = 672
      Height = 228
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 56
      ExplicitTop = 32
      ExplicitWidth = 513
      ExplicitHeight = 201
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DM.DSQefectcorreoskd
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1UNIDAD: TcxGridDBColumn
          DataBinding.FieldName = 'UNIDAD'
          Width = 45
        end
        object cxGrid1DBTableView1FECHA: TcxGridDBColumn
          DataBinding.FieldName = 'FECHA'
        end
        object cxGrid1DBTableView1REQUERIMIENTOS: TcxGridDBColumn
          DataBinding.FieldName = 'REQUERIMIENTOS'
          Width = 101
        end
        object cxGrid1DBTableView1DESCUBRIMIENTO: TcxGridDBColumn
          DataBinding.FieldName = 'DESCUBRIMIENTO'
          Width = 94
        end
        object cxGrid1DBTableView1SOLICITUDESRECHAZADAS: TcxGridDBColumn
          DataBinding.FieldName = 'SOLICITUDES RECHAZADAS'
          Width = 141
        end
        object cxGrid1DBTableView1MOTIVODERECHAZO: TcxGridDBColumn
          DataBinding.FieldName = 'MOTIVO DE RECHAZO'
          Width = 245
        end
        object cxGrid1DBTableView1FICHEROSINTERCEPTADOS: TcxGridDBColumn
          DataBinding.FieldName = 'FICHEROS INTERCEPTADOS'
          Width = 142
        end
        object cxGrid1DBTableView1ENTRADAALSISTEMA: TcxGridDBColumn
          DataBinding.FieldName = 'ENTRADA AL SISTEMA'
          Width = 113
        end
        object cxGrid1DBTableView1CORRUPTOS: TcxGridDBColumn
          DataBinding.FieldName = 'CORRUPTOS'
          Width = 84
        end
        object cxGrid1DBTableView1REPETIDOS: TcxGridDBColumn
          DataBinding.FieldName = 'REPETIDOS'
          Width = 61
        end
        object cxGrid1DBTableView1PROCESADOS: TcxGridDBColumn
          DataBinding.FieldName = 'PROCESADOS'
          Width = 73
        end
        object cxGrid1DBTableView1PENDIENTES: TcxGridDBColumn
          DataBinding.FieldName = 'PENDIENTES'
          Width = 66
        end
        object cxGrid1DBTableView1EOC: TcxGridDBColumn
          DataBinding.FieldName = 'EOC'
          Width = 26
        end
        object cxGrid1DBTableView1INFODEIOP: TcxGridDBColumn
          DataBinding.FieldName = 'INFO DE I/OP'
        end
        object cxGrid1DBTableView1RESULTADOSINFORMATIVOSMASIMPORTANTES: TcxGridDBColumn
          DataBinding.FieldName = 'RESULTADOS INFORMATIVOS MAS IMPORTANTES'
          Width = 248
        end
        object cxGrid1DBTableView1LMONITOREO: TcxGridDBColumn
          DataBinding.FieldName = 'L/MONITOREO'
          Width = 93
        end
        object cxGrid1DBTableView1USUARIO: TcxGridDBColumn
          DataBinding.FieldName = 'USUARIO'
          Width = 51
        end
        object cxGrid1DBTableView1IDKD: TcxGridDBColumn
          DataBinding.FieldName = 'IDKD'
          Width = 55
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxGrid2: TcxGrid
      Left = 304
      Top = 43
      Width = 250
      Height = 200
      TabOrder = 1
      object cxGrid2DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
  end
end
