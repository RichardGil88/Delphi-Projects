object FActualizarDatosGenerales: TFActualizarDatosGenerales
  Left = 406
  Top = 118
  BorderStyle = bsSingle
  Caption = 'Actualizar datos generales '
  ClientHeight = 680
  ClientWidth = 818
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 169
    Align = alClient
    Caption = 'Datos generales'
    TabOrder = 0
    Height = 511
    Width = 818
    object cxGrid2: TcxGrid
      Left = 2
      Top = 18
      Width = 814
      Height = 491
      Align = alClient
      TabOrder = 0
      object cxGrid2DBTableView2: TcxGridDBTableView
        PopupMenu = pm1
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.PriorPage.Visible = True
        NavigatorButtons.Prior.Visible = True
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Append.Visible = False
        NavigatorButtons.Delete.Visible = True
        NavigatorButtons.Edit.Visible = False
        NavigatorButtons.Post.Visible = True
        NavigatorButtons.Cancel.Visible = False
        NavigatorButtons.Refresh.Visible = True
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = True
        FilterBox.Visible = fvNever
        OnCellClick = cxGrid2DBTableView2CellClick
        DataController.DataSource = DSgenerales
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = 'CANTIDAD=#'
            Kind = skCount
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'idObjetivo'
            Column = cxGrid2DBTableView2idObjetivo
          end>
        DataController.Summary.SummaryGroups = <>
        DateTimeHandling.Filters = [dtfRelativeDays, dtfRelativeDayPeriods, dtfRelativeYears, dtfMonths, dtfYears]
        Filtering.ColumnFilteredItemsList = True
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsBehavior.IncSearch = True
        OptionsBehavior.NavigatorHints = True
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.GroupRowSizing = True
        OptionsData.CancelOnExit = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Navigator = True
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 15
        object cxGrid2DBTableView2idObjetivo: TcxGridDBColumn
          DataBinding.FieldName = 'idObjetivo'
          Width = 60
        end
        object cxGrid2DBTableView2Nombre: TcxGridDBColumn
          DataBinding.FieldName = 'Nombre'
          Width = 127
        end
        object cxGrid2DBTableView2Nombre1: TcxGridDBColumn
          DataBinding.FieldName = 'Nombre1'
          Width = 118
        end
        object cxGrid2DBTableView2Apellido1: TcxGridDBColumn
          DataBinding.FieldName = 'Apellido1'
          Width = 108
        end
        object cxGrid2DBTableView2Apellido2: TcxGridDBColumn
          DataBinding.FieldName = 'Apellido2'
          Width = 137
        end
        object cxGrid2DBTableView2Alias: TcxGridDBColumn
          DataBinding.FieldName = 'Alias'
        end
        object cxGrid2DBTableView2NumeroDeIdentidad: TcxGridDBColumn
          DataBinding.FieldName = 'NumeroDeIdentidad'
          Width = 144
        end
        object cxGrid2DBTableView2Pais: TcxGridDBColumn
          DataBinding.FieldName = 'Pais'
          Width = 96
        end
        object cxGrid2DBTableView2fecha: TcxGridDBColumn
          DataBinding.FieldName = 'fecha'
          Width = 88
        end
        object cxGrid2DBTableView2ktfecha: TcxGridDBColumn
          DataBinding.FieldName = 'ktfecha'
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGrid2DBTableView2
      end
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'Modificar Datos'
    TabOrder = 1
    Height = 169
    Width = 818
    object lbl1: TLabel
      Left = 32
      Top = 24
      Width = 37
      Height = 13
      Caption = 'Nombre'
      Transparent = True
    end
    object lbl2: TLabel
      Left = 176
      Top = 24
      Width = 46
      Height = 13
      Caption = 'Nombre 1'
      Transparent = True
    end
    object lbl3: TLabel
      Left = 320
      Top = 24
      Width = 46
      Height = 13
      Caption = 'Apellido 1'
      Transparent = True
    end
    object lbl4: TLabel
      Left = 472
      Top = 24
      Width = 46
      Height = 13
      Caption = 'Apellido 2'
      Transparent = True
    end
    object lbl5: TLabel
      Left = 616
      Top = 24
      Width = 22
      Height = 13
      Caption = 'Alias'
      Transparent = True
    end
    object lbl6: TLabel
      Left = 32
      Top = 72
      Width = 99
      Height = 13
      Caption = 'N'#250'mero de Identidad'
      Transparent = True
    end
    object lbl7: TLabel
      Left = 176
      Top = 73
      Width = 20
      Height = 13
      Caption = 'Pais'
      Transparent = True
    end
    object lbl8: TLabel
      Left = 320
      Top = 72
      Width = 44
      Height = 13
      Caption = 'KTFecha'
      Transparent = True
    end
    object lbl9: TLabel
      Left = 472
      Top = 72
      Width = 30
      Height = 13
      Caption = 'Fecha'
      Transparent = True
    end
    object cxTextEdit1: TcxTextEdit
      Left = 32
      Top = 40
      TabOrder = 0
      Width = 121
    end
    object cxTextEdit2: TcxTextEdit
      Left = 176
      Top = 40
      TabOrder = 1
      Width = 121
    end
    object cxTextEdit3: TcxTextEdit
      Left = 320
      Top = 40
      TabOrder = 2
      Width = 121
    end
    object cxTextEdit4: TcxTextEdit
      Left = 472
      Top = 40
      TabOrder = 3
      Width = 121
    end
    object cxTextEdit5: TcxTextEdit
      Left = 616
      Top = 40
      TabOrder = 4
      Width = 121
    end
    object cxTextEdit6: TcxTextEdit
      Left = 32
      Top = 88
      TabOrder = 5
      Width = 121
    end
    object cxTextEdit7: TcxTextEdit
      Left = 320
      Top = 88
      TabOrder = 6
      Width = 121
    end
    object cxButton1: TcxButton
      Left = 32
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Actualizar'
      TabOrder = 7
      OnClick = cxButton1Click
    end
    object cxDateEdit1: TcxDateEdit
      Left = 472
      Top = 88
      TabOrder = 8
      Width = 121
    end
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 176
      Top = 88
      Properties.KeyFieldNames = 'Pais'
      Properties.ListColumns = <
        item
          FieldName = 'Pais'
        end>
      TabOrder = 9
      Width = 121
    end
    object cxTextEdit8: TcxTextEdit
      Left = 616
      Top = 88
      Properties.ReadOnly = True
      TabOrder = 10
      Width = 121
    end
    object cxLabel1: TcxLabel
      Left = 616
      Top = 70
      Caption = 'IdObjetivo'
      Transparent = True
    end
  end
  object pm1: TPopupMenu
    Left = 720
    Top = 96
    object ACTUALIZAROBJETIVOSANTECEDENTES1: TMenuItem
      Caption = 'ACTUALIZAR OBJETIVOS ANTECEDENTES'
      OnClick = ACTUALIZAROBJETIVOSANTECEDENTES1Click
    end
    object ACTUALIZARDATOSLABORALES1: TMenuItem
      Caption = 'ACTUALIZAR DATOS LABORALES'
      OnClick = ACTUALIZARDATOSLABORALES1Click
    end
    object ACTUALIZARDATOSRESIDENCIALES1: TMenuItem
      Caption = 'ACTUALIZAR DATOS RESIDENCIALES'
      OnClick = ACTUALIZARDATOSRESIDENCIALES1Click
    end
    object GENERARREPORTE1: TMenuItem
      Caption = 'GENERAR REPORTE'
      OnClick = GENERARREPORTE1Click
    end
  end
  object QUpdate: TUniQuery
    Connection = DM.conserv
    SQL.Strings = (
      
        'UPDATE `objetivos datos generales` SET  Nombre=:Pnombre, Nombre1' +
        '=:Pnombre1,Apellido1=:Papellido1, Apellido2=:Papellido2, Alias=:' +
        'Palias, NumeroDeIdentidad=:Pcarnet, Pais=:Ppais, fecha=:Pfecha, ' +
        'ktfecha=:Pktfecha  '
      'WHERE `objetivos datos generales`.`IdObjetivo` =:Pid;')
    Left = 480
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pnombre'
      end
      item
        DataType = ftUnknown
        Name = 'Pnombre1'
      end
      item
        DataType = ftUnknown
        Name = 'Papellido1'
      end
      item
        DataType = ftUnknown
        Name = 'Papellido2'
      end
      item
        DataType = ftUnknown
        Name = 'Palias'
      end
      item
        DataType = ftUnknown
        Name = 'Pcarnet'
      end
      item
        DataType = ftUnknown
        Name = 'Ppais'
      end
      item
        DataType = ftDateTime
        Name = 'Pfecha'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Pktfecha'
      end
      item
        DataType = ftInteger
        Name = 'Pid'
        ParamType = ptInput
      end>
  end
  object EkRTF1: TEkRTF
    InFile = 'D:\PROYECTOS\SISTEMA ANALISIS\Plantilla.rtf'
    OutFile = 'outfile.doc'
    TrueValue = 'True'
    FalseValue = 'False'
    Charset = DEFAULT_CHARSET
    Lang = 0
    Options = [eoGraphicsBinary, eoDotAsColon]
    DisableControls = True
    Left = 768
    Top = 96
    VarDataTypes = {00000000}
  end
  object Tgenerales: TUniTable
    TableName = 'objetivos datos generales'
    Connection = DM.conserv
    Options.StrictUpdate = False
    Left = 608
    Top = 276
    object TgeneralesidObjetivo: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'idObjetivo'
    end
    object TgeneralesNombre: TStringField
      FieldName = 'Nombre'
      Size = 50
    end
    object TgeneralesNombre1: TStringField
      FieldName = 'Nombre1'
      Size = 50
    end
    object TgeneralesApellido1: TStringField
      FieldName = 'Apellido1'
      Size = 50
    end
    object TgeneralesApellido2: TStringField
      FieldName = 'Apellido2'
      Size = 50
    end
    object TgeneralesAlias: TStringField
      FieldName = 'Alias'
    end
    object TgeneralesNumeroDeIdentidad: TStringField
      FieldName = 'NumeroDeIdentidad'
      Size = 15
    end
    object TgeneralesPais: TStringField
      FieldName = 'Pais'
      Size = 50
    end
    object TgeneralesLugar: TStringField
      FieldName = 'Lugar'
      Size = 50
    end
    object Tgeneralesfecha: TDateField
      FieldName = 'fecha'
    end
    object Tgeneralesktfecha: TStringField
      FieldName = 'ktfecha'
    end
    object TgeneralesidUbicacion: TIntegerField
      FieldName = 'idUbicacion'
    end
    object TgeneralesidLaborales: TIntegerField
      FieldName = 'idLaborales'
    end
  end
  object DSgenerales: TUniDataSource
    DataSet = Tgenerales
    Left = 672
    Top = 276
  end
  object DSobjant: TUniDataSource
    DataSet = Qobjant
    Left = 674
    Top = 384
  end
  object DSobjlab: TUniDataSource
    DataSet = Qobjlab
    Left = 673
    Top = 331
  end
  object DSobjres: TUniDataSource
    DataSet = Qobjres
    Left = 674
    Top = 440
  end
  object Qobjlab: TUniQuery
    Connection = DM.conserv
    SQL.Strings = (
      'select * from `objetivos datos laborales`'
      'Where `objetivos datos laborales`.`IdObjetivo` = :Pid')
    Left = 608
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pid'
      end>
    object QobjlabIdLaborales: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'IdLaborales'
    end
    object QobjlabIdObjetivo: TIntegerField
      FieldName = 'IdObjetivo'
    end
    object QobjlabCentroDeTrabajo: TStringField
      FieldName = 'CentroDeTrabajo'
      Size = 50
    end
    object QobjlabOcupacion: TStringField
      FieldName = 'Ocupacion'
    end
    object QobjlabCargo: TStringField
      FieldName = 'Cargo'
      Size = 35
    end
    object QobjlabOrganismo: TStringField
      FieldName = 'Organismo'
      Size = 30
    end
    object QobjlabFecha: TDateField
      FieldName = 'Fecha'
    end
    object Qobjlabktfecha: TStringField
      FieldName = 'ktfecha'
    end
  end
  object Qobjant: TUniQuery
    Connection = DM.conserv
    SQL.Strings = (
      'select * from `objetivos antecedentes`'
      'Where `objetivos antecedentes`.`IdObjetivo` = :Pid')
    Left = 608
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pid'
      end>
    object QobjantidSolicitud: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'idSolicitud'
    end
    object Qobjantestado: TStringField
      FieldName = 'estado'
      Size = 30
    end
    object QobjantfechaAlta: TDateField
      FieldName = 'fechaAlta'
    end
    object QobjantktAlta: TStringField
      FieldName = 'ktAlta'
    end
    object QobjantfechaBaja: TDateField
      FieldName = 'fechaBaja'
    end
    object QobjantktBaja: TStringField
      FieldName = 'ktBaja'
    end
    object Qobjantclave: TIntegerField
      FieldName = 'clave'
    end
    object Qobjantchequeo: TStringField
      FieldName = 'chequeo'
      Size = 80
    end
    object Qobjantsitio: TStringField
      FieldName = 'sitio'
      Size = 30
    end
    object QobjanttipodeTecnica: TStringField
      FieldName = 'tipodeTecnica'
      Size = 30
    end
    object Qobjantaplicadopor: TStringField
      FieldName = 'aplicadopor'
      Size = 30
    end
    object Qobjanttipotx: TStringField
      FieldName = 'tipotx'
    end
    object QobjantfinalidadOperativa: TStringField
      FieldName = 'finalidadOperativa'
      Size = 60
    end
    object QobjantcumplimientoFinalidad: TSmallintField
      FieldName = 'cumplimientoFinalidad'
    end
    object QobjantmotivoNoCumplimiento: TStringField
      FieldName = 'motivoNoCumplimiento'
      Size = 50
    end
    object Qobjantatencionespecial: TSmallintField
      FieldName = 'atencionespecial'
    end
    object Qobjantcaso: TStringField
      FieldName = 'caso'
      Size = 30
    end
    object Qobjantinteres: TBlobField
      FieldName = 'interes'
    end
    object QobjantdptoSeccion: TStringField
      FieldName = 'dptoSeccion'
      Size = 50
    end
    object Qobjantseccion: TStringField
      FieldName = 'seccion'
    end
    object Qobjantoficial: TStringField
      FieldName = 'oficial'
      Size = 30
    end
    object Qobjantfase: TStringField
      FieldName = 'fase'
      Size = 50
    end
    object QobjantniveldeAprobacion: TStringField
      FieldName = 'niveldeAprobacion'
      Size = 30
    end
    object QobjantniveldeCompartimentacion: TStringField
      FieldName = 'niveldeCompartimentacion'
    end
    object QobjantIdObjetivo: TIntegerField
      FieldName = 'IdObjetivo'
    end
    object QobjantIdUbicacion: TIntegerField
      FieldName = 'IdUbicacion'
    end
    object QobjantIdLaborales: TIntegerField
      FieldName = 'IdLaborales'
    end
    object QobjantcategoriaOperativa: TStringField
      FieldName = 'categoriaOperativa'
      Size = 50
    end
    object Qobjantregistro: TStringField
      FieldName = 'registro'
      Size = 30
    end
    object Qobjantnsiso: TIntegerField
      FieldName = 'nsiso'
    end
    object QobjantExpedienteOperativo: TStringField
      FieldName = 'ExpedienteOperativo'
      Size = 30
    end
  end
  object Qobjres: TUniQuery
    Connection = DM.conserv
    SQL.Strings = (
      'select * from `objetivos datos residenciales`'
      'Where `objetivos datos residenciales`.`IdObjetivo` = :Pid')
    Left = 608
    Top = 440
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pid'
      end>
    object QobjresIdUbicacion: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'IdUbicacion'
    end
    object QobjresIdObjetivo: TIntegerField
      FieldName = 'IdObjetivo'
    end
    object QobjresCalle: TStringField
      FieldName = 'Calle'
      Size = 50
    end
    object QobjresNumero: TStringField
      FieldName = 'Numero'
      Size = 10
    end
    object QobjresEdificio: TStringField
      FieldName = 'Edificio'
      Size = 15
    end
    object QobjresPiso: TStringField
      FieldName = 'Piso'
      Size = 50
    end
    object QobjresApartamento: TStringField
      FieldName = 'Apartamento'
      Size = 10
    end
    object QobjresCalle1: TStringField
      FieldName = 'Calle1'
      Size = 50
    end
    object QobjresCalle2: TStringField
      FieldName = 'Calle2'
      Size = 50
    end
    object QobjresBarrio: TStringField
      FieldName = 'Barrio'
    end
    object QobjresMunicipio: TStringField
      FieldName = 'Municipio'
      Size = 30
    end
    object QobjresProvincia: TStringField
      FieldName = 'Provincia'
      Size = 30
    end
    object QobjresFecha: TDateField
      FieldName = 'Fecha'
    end
    object Qobjresktfecha: TStringField
      FieldName = 'ktfecha'
    end
  end
  object ds1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 536
    Top = 280
    Data = {
      430000009619E0BD0100000018000000020000000000030000004300066E6F6D
      6272650100490000000100055749445448020002003C00056665636861080008
      00000000000000}
    object ds1nombre: TStringField
      FieldName = 'nombre'
      Size = 60
    end
    object ds1fecha: TDateTimeField
      FieldName = 'fecha'
    end
  end
end
