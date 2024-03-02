object Fefectasist: TFefectasist
  Left = 0
  Top = 0
  Caption = 'Efectividad Asistencia'
  ClientHeight = 606
  ClientWidth = 848
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
    Align = alTop
    Caption = 'Escoja las dos Opciones'
    TabOrder = 0
    Height = 89
    Width = 848
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
    object cxDateEdit1: TcxDateEdit
      Left = 32
      Top = 40
      TabOrder = 2
      Width = 121
    end
    object cxDateEdit2: TcxDateEdit
      Left = 192
      Top = 40
      TabOrder = 3
      Width = 121
    end
    object cxButton1: TcxButton
      Left = 391
      Top = 22
      Width = 75
      Height = 25
      Caption = 'Promedio'
      TabOrder = 4
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 391
      Top = 53
      Width = 75
      Height = 25
      Caption = 'Sumatoria'
      TabOrder = 5
      OnClick = cxButton2Click
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 89
    Align = alClient
    Caption = 'Efectividad'
    TabOrder = 1
    Height = 517
    Width = 848
    object cxGrid2: TcxGrid
      Left = 3
      Top = 15
      Width = 842
      Height = 493
      Align = alClient
      TabOrder = 1
      ExplicitLeft = 2
      ExplicitTop = 18
      ExplicitWidth = 844
      ExplicitHeight = 497
      object cxGrid2DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = DM.DSQasist2
        DataController.Filter.Active = True
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = 'KT=#'
            Kind = skSum
            FieldName = 'KT'
            Column = cxGrid2DBTableView1KT
          end
          item
            Format = 'KM=#'
            Kind = skSum
            FieldName = 'KM'
            Column = cxGrid2DBTableView1KM
          end
          item
            Format = 'KD=#'
            Kind = skSum
            FieldName = 'KD'
            Column = cxGrid2DBTableView1KD
          end
          item
            Format = 'ESCRITO=#'
            Kind = skSum
            FieldName = 'ESCRITO'
            Column = cxGrid2DBTableView1ESCRITO
          end
          item
            Format = 'ADMSIST=#'
            Kind = skSum
            FieldName = 'ADMSIST'
            Column = cxGrid2DBTableView1ADMSIST
          end
          item
            Format = 'OCIC=#'
            Kind = skSum
            FieldName = 'OCIC'
            Column = cxGrid2DBTableView1OCIC
          end
          item
            Format = 'DIRECCION=#'
            Kind = skSum
            FieldName = 'DIRECCION'
            Column = cxGrid2DBTableView1DIRECCION
          end
          item
            Format = 'CADETES ISMI=#'
            Kind = skSum
            FieldName = 'CADETES ISMI'
            Column = cxGrid2DBTableView1CADETESISMI
          end
          item
            Format = 'SERV DE GUARDIA=#'
            Kind = skSum
            FieldName = 'SERV DE GUARDIA'
            Column = cxGrid2DBTableView1SERVDEGUARDIA
          end
          item
            Format = 'COMISION SERV=#'
            Kind = skSum
            FieldName = 'COMISION SERV'
            Column = cxGrid2DBTableView1COMISIONSERV
          end
          item
            Format = 'ESTUDIO AUTORIZADO=#'
            Kind = skSum
            FieldName = 'ESTUDIO AUTORIZADO'
            Column = cxGrid2DBTableView1ESTUDIOAUTORIZADO
          end
          item
            Format = 'PREP MILITAR=#'
            Kind = skSum
            FieldName = 'PREP MILITAR'
            Column = cxGrid2DBTableView1PREPMILITAR
          end
          item
            Format = 'CHEQUEO MEDICO=#'
            Kind = skSum
            FieldName = 'CHEQUEO MEDICO'
            Column = cxGrid2DBTableView1CHEQUEOMEDICO
          end
          item
            Format = 'VAC=#'
            Kind = skSum
            FieldName = 'VAC'
            Column = cxGrid2DBTableView1VAC
          end
          item
            Format = 'L/M=#'
            Kind = skSum
            FieldName = 'L/M'
            Column = cxGrid2DBTableView1LM
          end
          item
            Format = 'LSS=#'
            Kind = skSum
            FieldName = 'LSS'
            Column = cxGrid2DBTableView1LSS
          end
          item
            Format = 'RS=#'
            Kind = skSum
            FieldName = 'RS'
            Column = cxGrid2DBTableView1RS
          end
          item
            Format = 'ENFERMO=#'
            Kind = skSum
            FieldName = 'ENFERMO'
            Column = cxGrid2DBTableView1ENFERMO
          end
          item
            Format = 'PROB PERS O FAMILIAR=#'
            Kind = skSum
            FieldName = 'PROB PERS O FAMILIAR'
            Column = cxGrid2DBTableView1PROBPERSOFAMILIAR
          end
          item
            Format = 'FRANCO=#'
            Kind = skSum
            FieldName = 'FRANCO'
            Column = cxGrid2DBTableView1FRANCO
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'KT'
            Column = cxGrid2DBTableView1KT
          end
          item
            Kind = skSum
            FieldName = 'KM'
            Column = cxGrid2DBTableView1KM
          end
          item
            Kind = skSum
            FieldName = 'SUM(KD)'
          end
          item
            Kind = skSum
            FieldName = 'SUM(ESCRITO)'
          end
          item
            Kind = skSum
            FieldName = 'SUM(ADMSIST)'
          end
          item
            Kind = skSum
            FieldName = 'SUM(OCIC)'
          end
          item
            Kind = skSum
            FieldName = 'SUM(DIRECCION)'
          end
          item
            Kind = skSum
            FieldName = 'SUM(`CADETES ISMI`)'
          end
          item
            Kind = skSum
            FieldName = 'SUM(`SERV DE GUARDIA`)'
          end
          item
            Kind = skSum
            FieldName = 'SUM(`COMISION SERV`)'
          end
          item
            Kind = skSum
            FieldName = 'SUM(`ESTUDIO AUTORIZADO`)'
          end
          item
            Kind = skSum
            FieldName = 'SUM(`PREP MILITAR`)'
          end
          item
            Kind = skSum
            FieldName = 'SUM(`CHEQUEO MEDICO`)'
          end
          item
            Kind = skSum
            FieldName = 'SUM(VAC)'
          end
          item
            Kind = skSum
            FieldName = 'SUM(`L/M`)'
          end
          item
            Kind = skSum
          end
          item
            Kind = skSum
            FieldName = 'SUM(`RS`)'
          end
          item
            Kind = skSum
            FieldName = 'SUM(ENFERMO)'
          end
          item
            Kind = skSum
            FieldName = 'SUM(`PROB PERS O FAMILIAR`)'
          end
          item
            Kind = skSum
            FieldName = 'SUM(FRANCO)'
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsSelection.CellMultiSelect = True
        OptionsView.Navigator = True
        object cxGrid2DBTableView1FECHA: TcxGridDBColumn
          DataBinding.FieldName = 'FECHA'
        end
        object cxGrid2DBTableView1UNIDAD: TcxGridDBColumn
          DataBinding.FieldName = 'UNIDAD'
          Visible = False
          GroupIndex = 0
        end
        object cxGrid2DBTableView1LUGARDEMONITOREO: TcxGridDBColumn
          DataBinding.FieldName = 'LUGAR DE MONITOREO'
          Visible = False
          GroupIndex = 1
          Width = 119
        end
        object cxGrid2DBTableView1KT: TcxGridDBColumn
          DataBinding.FieldName = 'KT'
        end
        object cxGrid2DBTableView1KM: TcxGridDBColumn
          DataBinding.FieldName = 'KM'
        end
        object cxGrid2DBTableView1KD: TcxGridDBColumn
          DataBinding.FieldName = 'KD'
        end
        object cxGrid2DBTableView1ESCRITO: TcxGridDBColumn
          DataBinding.FieldName = 'ESCRITO'
        end
        object cxGrid2DBTableView1ADMSIST: TcxGridDBColumn
          DataBinding.FieldName = 'ADMSIST'
        end
        object cxGrid2DBTableView1OCIC: TcxGridDBColumn
          DataBinding.FieldName = 'OCIC'
        end
        object cxGrid2DBTableView1DIRECCION: TcxGridDBColumn
          DataBinding.FieldName = 'DIRECCION'
        end
        object cxGrid2DBTableView1CADETESISMI: TcxGridDBColumn
          DataBinding.FieldName = 'CADETES ISMI'
        end
        object cxGrid2DBTableView1SERVDEGUARDIA: TcxGridDBColumn
          DataBinding.FieldName = 'SERV DE GUARDIA'
        end
        object cxGrid2DBTableView1COMISIONSERV: TcxGridDBColumn
          DataBinding.FieldName = 'COMISION SERV'
        end
        object cxGrid2DBTableView1ESTUDIOAUTORIZADO: TcxGridDBColumn
          DataBinding.FieldName = 'ESTUDIO AUTORIZADO'
        end
        object cxGrid2DBTableView1PREPMILITAR: TcxGridDBColumn
          DataBinding.FieldName = 'PREP MILITAR'
        end
        object cxGrid2DBTableView1CHEQUEOMEDICO: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUEO MEDICO'
        end
        object cxGrid2DBTableView1VAC: TcxGridDBColumn
          DataBinding.FieldName = 'VAC'
        end
        object cxGrid2DBTableView1LM: TcxGridDBColumn
          DataBinding.FieldName = 'L/M'
        end
        object cxGrid2DBTableView1LSS: TcxGridDBColumn
          DataBinding.FieldName = 'LSS'
        end
        object cxGrid2DBTableView1RS: TcxGridDBColumn
          DataBinding.FieldName = 'RS'
        end
        object cxGrid2DBTableView1ENFERMO: TcxGridDBColumn
          DataBinding.FieldName = 'ENFERMO'
        end
        object cxGrid2DBTableView1PROBPERSOFAMILIAR: TcxGridDBColumn
          DataBinding.FieldName = 'PROB PERS O FAMILIAR'
        end
        object cxGrid2DBTableView1FRANCO: TcxGridDBColumn
          DataBinding.FieldName = 'FRANCO'
        end
        object cxGrid2DBTableView1OTROS: TcxGridDBColumn
          DataBinding.FieldName = 'OTROS'
        end
        object cxGrid2DBTableView1USUARIO: TcxGridDBColumn
          DataBinding.FieldName = 'USUARIO'
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
    object cxGrid1: TcxGrid
      Left = 3
      Top = 15
      Width = 842
      Height = 493
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 18
      ExplicitWidth = 844
      ExplicitHeight = 497
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.PriorPage.Visible = True
        NavigatorButtons.Prior.Visible = True
        NavigatorButtons.Insert.Visible = True
        NavigatorButtons.Append.Visible = True
        NavigatorButtons.Delete.Visible = True
        NavigatorButtons.Edit.Visible = True
        NavigatorButtons.Post.Visible = True
        NavigatorButtons.Cancel.Visible = True
        NavigatorButtons.Refresh.Visible = True
        NavigatorButtons.SaveBookmark.Visible = True
        NavigatorButtons.GotoBookmark.Visible = True
        NavigatorButtons.Filter.Visible = True
        FilterBox.Visible = fvNever
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = DM.DSQasist1
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = 'KT=#'
            Kind = skAverage
            FieldName = 'KT'
            Column = cxGrid1DBTableView1KT
          end
          item
            Format = 'KM=#'
            Kind = skAverage
            FieldName = 'KM'
            Column = cxGrid1DBTableView1KM
          end
          item
            Format = 'KD=#'
            Kind = skAverage
            FieldName = 'KD'
            Column = cxGrid1DBTableView1KD
          end
          item
            Format = 'ESCRITO=#'
            Kind = skAverage
            FieldName = 'ESCRITO'
            Column = cxGrid1DBTableView1ESCRITO
          end
          item
            Format = 'ADMSIST=#'
            Kind = skAverage
            FieldName = 'ADMSIST'
            Column = cxGrid1DBTableView1ADMSIST
          end
          item
            Format = 'OCIC=#'
            Kind = skAverage
            FieldName = 'OCIC'
            Column = cxGrid1DBTableView1OCIC
          end
          item
            Format = 'DIRECCION=#'
            Kind = skAverage
            FieldName = 'DIRECCION'
            Column = cxGrid1DBTableView1DIRECCION
          end
          item
            Format = 'CADETES ISMI=#'
            Kind = skAverage
            FieldName = 'CADETES ISMI'
            Column = cxGrid1DBTableView1CADETESISMI
          end
          item
            Format = 'SERV DE GUARDIA=#'
            Kind = skAverage
            FieldName = 'SERV DE GUARDIA'
            Column = cxGrid1DBTableView1SERVDEGUARDIA
          end
          item
            Format = 'COMISION SERV=#'
            Kind = skAverage
            FieldName = 'COMISION SERV'
            Column = cxGrid1DBTableView1COMISIONSERV
          end
          item
            Format = 'ESTUDIO AUTORIZADO=#'
            Kind = skAverage
            FieldName = 'ESTUDIO AUTORIZADO'
            Column = cxGrid1DBTableView1ESTUDIOAUTORIZADO
          end
          item
            Format = 'PREP MILITAR=#'
            Kind = skAverage
            FieldName = 'PREP MILITAR'
            Column = cxGrid1DBTableView1PREPMILITAR
          end
          item
            Format = 'CHEQUEO MEDICO=#'
            Kind = skAverage
            FieldName = 'CHEQUEO MEDICO'
            Column = cxGrid1DBTableView1CHEQUEOMEDICO
          end
          item
            Format = 'VAC=#'
            Kind = skAverage
            FieldName = 'VAC'
            Column = cxGrid1DBTableView1VAC
          end
          item
            Format = 'L/M=#'
            Kind = skAverage
            FieldName = 'L/M'
            Column = cxGrid1DBTableView1LM
          end
          item
            Format = 'LSS=#'
            Kind = skAverage
            FieldName = 'LSS'
            Column = cxGrid1DBTableView1LSS
          end
          item
            Format = 'RS=#'
            Kind = skAverage
            FieldName = 'RS'
            Column = cxGrid1DBTableView1RS
          end
          item
            Format = 'ENFERMO=#'
            Kind = skAverage
            FieldName = 'ENFERMO'
            Column = cxGrid1DBTableView1ENFERMO
          end
          item
            Format = 'PROB PERS O FAMILIAR=#'
            Kind = skAverage
            FieldName = 'PROB PERS O FAMILIAR'
            Column = cxGrid1DBTableView1PROBPERSOFAMILIAR
          end
          item
            Format = 'FRANCO=#'
            Kind = skAverage
            FieldName = 'FRANCO'
            Column = cxGrid1DBTableView1FRANCO
          end>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DateTimeHandling.Filters = [dtfRelativeDays, dtfRelativeDayPeriods, dtfRelativeYears, dtfMonths, dtfYears]
        Filtering.ColumnFilteredItemsList = True
        FilterRow.Visible = True
        OptionsBehavior.IncSearch = True
        OptionsBehavior.NavigatorHints = True
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.GroupRowSizing = True
        OptionsData.Appending = True
        OptionsView.Navigator = True
        OptionsView.CellAutoHeight = True
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 15
        object cxGrid1DBTableView1FECHA: TcxGridDBColumn
          DataBinding.FieldName = 'FECHA'
          Width = 93
        end
        object cxGrid1DBTableView1UNIDAD: TcxGridDBColumn
          DataBinding.FieldName = 'UNIDAD'
          Visible = False
          GroupIndex = 0
          Width = 97
        end
        object cxGrid1DBTableView1LUGARDEMONITOREO: TcxGridDBColumn
          DataBinding.FieldName = 'LUGAR DE MONITOREO'
          Visible = False
          GroupIndex = 1
          Width = 137
        end
        object cxGrid1DBTableView1KT: TcxGridDBColumn
          DataBinding.FieldName = 'KT'
          Width = 34
        end
        object cxGrid1DBTableView1KM: TcxGridDBColumn
          DataBinding.FieldName = 'KM'
          Width = 20
        end
        object cxGrid1DBTableView1KD: TcxGridDBColumn
          DataBinding.FieldName = 'KD'
          Width = 35
        end
        object cxGrid1DBTableView1ESCRITO: TcxGridDBColumn
          DataBinding.FieldName = 'ESCRITO'
          Width = 49
        end
        object cxGrid1DBTableView1ADMSIST: TcxGridDBColumn
          DataBinding.FieldName = 'ADMSIST'
          Width = 49
        end
        object cxGrid1DBTableView1OCIC: TcxGridDBColumn
          DataBinding.FieldName = 'OCIC'
          Width = 31
        end
        object cxGrid1DBTableView1DIRECCION: TcxGridDBColumn
          DataBinding.FieldName = 'DIRECCION'
          Width = 65
        end
        object cxGrid1DBTableView1CADETESISMI: TcxGridDBColumn
          DataBinding.FieldName = 'CADETES ISMI'
          Width = 75
        end
        object cxGrid1DBTableView1SERVDEGUARDIA: TcxGridDBColumn
          DataBinding.FieldName = 'SERV DE GUARDIA'
          Width = 112
        end
        object cxGrid1DBTableView1COMISIONSERV: TcxGridDBColumn
          DataBinding.FieldName = 'COMISION SERV'
          Width = 102
        end
        object cxGrid1DBTableView1ESTUDIOAUTORIZADO: TcxGridDBColumn
          DataBinding.FieldName = 'ESTUDIO AUTORIZADO'
          Width = 136
        end
        object cxGrid1DBTableView1PREPMILITAR: TcxGridDBColumn
          DataBinding.FieldName = 'PREP MILITAR'
          Width = 74
        end
        object cxGrid1DBTableView1CHEQUEOMEDICO: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUEO MEDICO'
          Width = 114
        end
        object cxGrid1DBTableView1VAC: TcxGridDBColumn
          DataBinding.FieldName = 'VAC'
          Width = 42
        end
        object cxGrid1DBTableView1LM: TcxGridDBColumn
          DataBinding.FieldName = 'L/M'
          Width = 39
        end
        object cxGrid1DBTableView1LSS: TcxGridDBColumn
          DataBinding.FieldName = 'LSS'
          Width = 22
        end
        object cxGrid1DBTableView1RS: TcxGridDBColumn
          DataBinding.FieldName = 'RS'
          Width = 20
        end
        object cxGrid1DBTableView1ENFERMO: TcxGridDBColumn
          DataBinding.FieldName = 'ENFERMO'
          Width = 53
        end
        object cxGrid1DBTableView1PROBPERSOFAMILIAR: TcxGridDBColumn
          DataBinding.FieldName = 'PROB PERS O FAMILIAR'
          Width = 139
        end
        object cxGrid1DBTableView1FRANCO: TcxGridDBColumn
          DataBinding.FieldName = 'FRANCO'
        end
        object cxGrid1DBTableView1OTROS: TcxGridDBColumn
          DataBinding.FieldName = 'OTROS'
          Width = 681
        end
        object cxGrid1DBTableView1USUARIO: TcxGridDBColumn
          DataBinding.FieldName = 'USUARIO'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
end
