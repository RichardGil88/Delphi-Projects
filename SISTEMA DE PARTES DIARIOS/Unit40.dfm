object FefectcorreosKD: TFefectcorreosKD
  Left = 0
  Top = 0
  Caption = 'Efectividad Correos KD'
  ClientHeight = 678
  ClientWidth = 865
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
    Height = 89
    Width = 865
    object cxLabel1: TcxLabel
      Left = 32
      Top = 24
      Caption = 'Fecha inicio'
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 192
      Top = 24
      Caption = 'Fecha fin'
      Transparent = True
    end
    object cxButton1: TcxButton
      Left = 391
      Top = 17
      Width = 75
      Height = 25
      Caption = 'Promedio'
      TabOrder = 2
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 391
      Top = 53
      Width = 75
      Height = 25
      Caption = 'Sumatoria'
      TabOrder = 3
      OnClick = cxButton2Click
    end
    object cxDateEdit1: TcxDateEdit
      Left = 32
      Top = 40
      TabOrder = 4
      Width = 121
    end
    object cxDateEdit2: TcxDateEdit
      Left = 192
      Top = 40
      TabOrder = 5
      Width = 121
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 89
    Align = alClient
    Caption = 'Efectividad'
    TabOrder = 1
    Height = 589
    Width = 865
    object cxGrid1: TcxGrid
      Left = 2
      Top = 18
      Width = 861
      Height = 569
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DM.DSQefectcorreoskd
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = 'CORRUPTOS=#'
            Kind = skAverage
            FieldName = 'CORRUPTOS'
            Column = cxGrid1DBTableView1CORRUPTOS
          end
          item
            Format = 'CORRUPTOS=#'
            Kind = skAverage
            FieldName = 'DESCUBRIMIENTO'
            Column = cxGrid1DBTableView1DESCUBRIMIENTO
          end
          item
            Format = 'ENTRADA AL SISTEMA=#'
            Kind = skAverage
            FieldName = 'ENTRADA AL SISTEMA'
            Column = cxGrid1DBTableView1ENTRADAALSISTEMA
          end
          item
            Format = 'EOC=#'
            Kind = skAverage
            FieldName = 'EOC'
            Column = cxGrid1DBTableView1EOC
          end
          item
            Format = 'FICHEROS INTERCEPTADOS=#'
            Kind = skAverage
            FieldName = 'FICHEROS INTERCEPTADOS'
            Column = cxGrid1DBTableView1FICHEROSINTERCEPTADOS
          end
          item
            Format = 'INFO DE I/OP=#'
            Kind = skAverage
            FieldName = 'INFO DE I/OP'
            Column = cxGrid1DBTableView1INFODEIOP
          end
          item
            Format = 'PENDIENTES=#'
            Kind = skAverage
            FieldName = 'PENDIENTES'
            Column = cxGrid1DBTableView1PENDIENTES
          end
          item
            Format = 'PROCESADOS=#'
            Kind = skAverage
            FieldName = 'PROCESADOS'
            Column = cxGrid1DBTableView1PROCESADOS
          end
          item
            Format = 'REPETIDOS=#'
            Kind = skAverage
            FieldName = 'REPETIDOS'
            Column = cxGrid1DBTableView1REPETIDOS
          end
          item
            Format = 'REQUERIMIENTOS=#'
            Kind = skAverage
            FieldName = 'REQUERIMIENTOS'
            Column = cxGrid1DBTableView1REQUERIMIENTOS
          end
          item
            Format = 'SOLICITUDES RECHAZADAS=#'
            Kind = skAverage
            FieldName = 'SOLICITUDES RECHAZADAS'
            Column = cxGrid1DBTableView1SOLICITUDESRECHAZADAS
          end>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <
          item
            Links = <>
            SummaryItems = <>
          end>
        object cxGrid1DBTableView1UNIDAD: TcxGridDBColumn
          DataBinding.FieldName = 'UNIDAD'
          Visible = False
          GroupIndex = 0
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
      Left = 2
      Top = 18
      Width = 861
      Height = 569
      Align = alClient
      TabOrder = 1
      ExplicitLeft = 4
      ExplicitTop = 50
      object cxGrid2DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DM.DSQefectcorreoskd
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = 'CORRUPTOS=#'
            Kind = skSum
            FieldName = 'CORRUPTOS'
            Column = cxGrid2DBTableView1CORRUPTOS
          end
          item
            Format = 'DESCUBRIMIENTO=#'
            Kind = skSum
            FieldName = 'DESCUBRIMIENTO'
            Column = cxGrid2DBTableView1DESCUBRIMIENTO
          end
          item
            Format = 'ENTRADA AL SISTEMA=#'
            Kind = skSum
            FieldName = 'ENTRADA AL SISTEMA'
            Column = cxGrid2DBTableView1ENTRADAALSISTEMA
          end
          item
            Format = 'EOC=#'
            Kind = skSum
            FieldName = 'EOC'
            Column = cxGrid2DBTableView1EOC
          end
          item
            Format = 'FICHEROS INTERCEPTADOS=#'
            Kind = skSum
            FieldName = 'FICHEROS INTERCEPTADOS'
            Column = cxGrid2DBTableView1FICHEROSINTERCEPTADOS
          end
          item
            Format = 'INFO DE I/OP=#'
            Kind = skSum
            FieldName = 'INFO DE I/OP'
            Column = cxGrid2DBTableView1INFODEIOP
          end
          item
            Format = 'PENDIENTES=#'
            Kind = skSum
            FieldName = 'PENDIENTES'
            Column = cxGrid2DBTableView1PENDIENTES
          end
          item
            Format = 'PROCESADOS=#'
            Kind = skSum
            FieldName = 'PROCESADOS'
            Column = cxGrid2DBTableView1PROCESADOS
          end
          item
            Format = 'REPETIDOS=#'
            Kind = skSum
            FieldName = 'REPETIDOS'
            Column = cxGrid2DBTableView1REPETIDOS
          end
          item
            Format = 'REQUERIMIENTOS=#'
            Kind = skSum
            FieldName = 'REQUERIMIENTOS'
            Column = cxGrid2DBTableView1REQUERIMIENTOS
          end
          item
            Format = 'SOLICITUDES RECHAZADAS=#'
            Kind = skSum
            FieldName = 'SOLICITUDES RECHAZADAS'
            Column = cxGrid2DBTableView1SOLICITUDESRECHAZADAS
          end>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid2DBTableView1UNIDAD: TcxGridDBColumn
          DataBinding.FieldName = 'UNIDAD'
          Visible = False
          GroupIndex = 0
          Width = 45
        end
        object cxGrid2DBTableView1FECHA: TcxGridDBColumn
          DataBinding.FieldName = 'FECHA'
        end
        object cxGrid2DBTableView1REQUERIMIENTOS: TcxGridDBColumn
          DataBinding.FieldName = 'REQUERIMIENTOS'
          Width = 95
        end
        object cxGrid2DBTableView1DESCUBRIMIENTO: TcxGridDBColumn
          DataBinding.FieldName = 'DESCUBRIMIENTO'
          Width = 111
        end
        object cxGrid2DBTableView1SOLICITUDESRECHAZADAS: TcxGridDBColumn
          DataBinding.FieldName = 'SOLICITUDES RECHAZADAS'
          Width = 141
        end
        object cxGrid2DBTableView1MOTIVODERECHAZO: TcxGridDBColumn
          DataBinding.FieldName = 'MOTIVO DE RECHAZO'
          Width = 129
        end
        object cxGrid2DBTableView1FICHEROSINTERCEPTADOS: TcxGridDBColumn
          DataBinding.FieldName = 'FICHEROS INTERCEPTADOS'
          Width = 142
        end
        object cxGrid2DBTableView1ENTRADAALSISTEMA: TcxGridDBColumn
          DataBinding.FieldName = 'ENTRADA AL SISTEMA'
          Width = 113
        end
        object cxGrid2DBTableView1CORRUPTOS: TcxGridDBColumn
          DataBinding.FieldName = 'CORRUPTOS'
          Width = 84
        end
        object cxGrid2DBTableView1REPETIDOS: TcxGridDBColumn
          DataBinding.FieldName = 'REPETIDOS'
          Width = 78
        end
        object cxGrid2DBTableView1PROCESADOS: TcxGridDBColumn
          DataBinding.FieldName = 'PROCESADOS'
          Width = 90
        end
        object cxGrid2DBTableView1PENDIENTES: TcxGridDBColumn
          DataBinding.FieldName = 'PENDIENTES'
          Width = 66
        end
        object cxGrid2DBTableView1EOC: TcxGridDBColumn
          DataBinding.FieldName = 'EOC'
          Width = 26
        end
        object cxGrid2DBTableView1INFODEIOP: TcxGridDBColumn
          DataBinding.FieldName = 'INFO DE I/OP'
          Width = 88
        end
        object cxGrid2DBTableView1RESULTADOSINFORMATIVOSMASIMPORTANTES: TcxGridDBColumn
          DataBinding.FieldName = 'RESULTADOS INFORMATIVOS MAS IMPORTANTES'
          Width = 248
        end
        object cxGrid2DBTableView1LMONITOREO: TcxGridDBColumn
          DataBinding.FieldName = 'L/MONITOREO'
          Width = 76
        end
        object cxGrid2DBTableView1USUARIO: TcxGridDBColumn
          DataBinding.FieldName = 'USUARIO'
          Width = 68
        end
        object cxGrid2DBTableView1IDKD: TcxGridDBColumn
          DataBinding.FieldName = 'IDKD'
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
  end
end
