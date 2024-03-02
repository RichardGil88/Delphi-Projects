object Fmain: TFmain
  Left = 0
  Top = 0
  Caption = 'Monitor'
  ClientHeight = 523
  ClientWidth = 834
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = 'Monitor de Cuotas'
    TabOrder = 0
    Height = 523
    Width = 834
    object DBGrid1: TDBGrid
      Left = 3
      Top = 15
      Width = 828
      Height = 360
      Align = alClient
      DataSource = UniDataSource1
      PopupMenu = AdvPopupMenu1
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
    end
    object cxGroupBox2: TcxGroupBox
      Left = 3
      Top = 375
      Align = alBottom
      Caption = 'Detalles de los grupos'
      TabOrder = 1
      Height = 64
      Width = 828
      object Label1: TLabel
        Left = 157
        Top = 16
        Width = 44
        Height = 13
        Caption = 'Inactivos'
        Transparent = True
      end
      object Label2: TLabel
        Left = 86
        Top = 16
        Width = 35
        Height = 13
        Caption = 'Activos'
        Transparent = True
      end
      object Label3: TLabel
        Left = 17
        Top = 16
        Width = 24
        Height = 13
        Caption = 'Total'
        Transparent = True
      end
      object Label4: TLabel
        Left = 230
        Top = 16
        Width = 61
        Height = 13
        Caption = 'Funcionando'
        Transparent = True
      end
      object Label5: TLabel
        Left = 305
        Top = 17
        Width = 64
        Height = 13
        Caption = 'Sin Funcionar'
        Transparent = True
      end
      object Edit1: TEdit
        Left = 17
        Top = 32
        Width = 53
        Height = 21
        ReadOnly = True
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 86
        Top = 32
        Width = 54
        Height = 21
        ReadOnly = True
        TabOrder = 1
      end
      object Edit3: TEdit
        Left = 157
        Top = 32
        Width = 53
        Height = 21
        ReadOnly = True
        TabOrder = 2
      end
      object Edit4: TEdit
        Left = 230
        Top = 32
        Width = 53
        Height = 21
        ReadOnly = True
        TabOrder = 3
      end
      object Edit5: TEdit
        Left = 305
        Top = 32
        Width = 53
        Height = 21
        ReadOnly = True
        TabOrder = 4
      end
    end
    object cxGroupBox3: TcxGroupBox
      Left = 3
      Top = 439
      Align = alBottom
      Caption = 'Mensajes'
      TabOrder = 2
      Height = 75
      Width = 828
      object cxMemo1: TcxMemo
        Left = 3
        Top = 15
        Align = alClient
        TabOrder = 0
        Height = 51
        Width = 822
      end
    end
  end
  object UniConnection1: TUniConnection
    ProviderName = 'MySQL'
    Port = 9306
    Database = 'globalkd'
    Username = 'root'
    Server = '10.8.1.13'
    Left = 40
    Top = 144
    EncryptedPassword = '88FF96FF91FF9BFF90FF88FF8CFF87FF8FFF'
  end
  object UniDataSource1: TUniDataSource
    DataSet = Tgrupos
    Left = 136
    Top = 144
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 40
    Top = 80
  end
  object MainMenu1: TMainMenu
    OwnerDraw = True
    Left = 40
    Top = 328
    object Configuracin1: TMenuItem
      Caption = 'Configuraci'#243'n'
      OnClick = Configuracin1Click
    end
    object Estadsticas1: TMenuItem
      Caption = 'Estad'#237'sticas'
      OnClick = Estadsticas1Click
    end
  end
  object AdvPopupMenu1: TAdvPopupMenu
    Version = '2.6.2.1'
    Left = 40
    Top = 280
    object ModificarDirTx1: TMenuItem
      Caption = 'Modificar DirTx'
      OnClick = ModificarDirTx1Click
    end
    object ModificarCantidaddeFicherosAlarma1: TMenuItem
      Caption = 'Modificar Cantidad de Ficheros Alarma'
      OnClick = ModificarCantidaddeFicherosAlarma1Click
    end
    object ModificarCantidaddeFicherosLimite1: TMenuItem
      Caption = 'Modificar Cantidad de Ficheros L'#237'mite'
      OnClick = ModificarCantidaddeFicherosLimite1Click
    end
    object ModificarFuncionando1: TMenuItem
      Caption = 'Modificar Funcionando'
      OnClick = ModificarFuncionando1Click
    end
  end
  object Update1: TUniSQL
    Connection = UniConnection1
    Left = 200
    Top = 88
  end
  object Update2: TUniSQL
    Connection = UniConnection1
    Left = 248
    Top = 88
  end
  object UniTable1: TUniTable
    TableName = 'desp claves estadisticas'
    Connection = UniConnection2
    Left = 200
    Top = 144
    object UniTable1id: TLargeintField
      FieldName = 'id'
    end
    object UniTable1fecha: TDateField
      FieldName = 'fecha'
      Required = True
    end
    object UniTable1grupo: TStringField
      FieldName = 'grupo'
      Required = True
      Size = 30
    end
    object UniTable1unidad: TStringField
      FieldName = 'unidad'
      Required = True
      Size = 30
    end
    object UniTable1autoridad: TStringField
      FieldName = 'autoridad'
      Required = True
      Size = 50
    end
    object UniTable1chequeo: TStringField
      FieldName = 'chequeo'
      Required = True
      Size = 255
    end
    object UniTable1cdadRx: TLargeintField
      FieldName = 'cdadRx'
      Required = True
    end
  end
  object UniTable2: TUniTable
    TableName = 'desp estadisticas'
    Connection = UniConnection2
    Left = 248
    Top = 144
    object UniTable2id: TLargeintField
      FieldName = 'id'
    end
    object UniTable2fecha: TDateField
      FieldName = 'fecha'
      Required = True
    end
    object UniTable2despachador: TStringField
      FieldName = 'despachador'
      Required = True
      Size = 30
    end
    object UniTable2procesados: TLargeintField
      FieldName = 'procesados'
      Required = True
    end
    object UniTable2chequeados: TLargeintField
      FieldName = 'chequeados'
      Required = True
    end
    object UniTable2masivos: TLargeintField
      FieldName = 'masivos'
      Required = True
    end
    object UniTable2almacenados: TLargeintField
      FieldName = 'almacenados'
      Required = True
    end
    object UniTable2ParaEstudio: TLargeintField
      FieldName = 'ParaEstudio'
      Required = True
    end
    object UniTable2ipdr: TLargeintField
      FieldName = 'ipdr'
      Required = True
    end
  end
  object UniTable3: TUniTable
    TableName = 'desp grupos estadisticas'
    Connection = UniConnection2
    Left = 296
    Top = 144
    object UniTable3id: TLargeintField
      FieldName = 'id'
    end
    object UniTable3fecha: TDateField
      FieldName = 'fecha'
      Required = True
    end
    object UniTable3grupo: TStringField
      FieldName = 'grupo'
      Required = True
      Size = 30
    end
    object UniTable3unidad: TStringField
      FieldName = 'unidad'
      Required = True
      Size = 30
    end
    object UniTable3autoridad: TStringField
      FieldName = 'autoridad'
      Required = True
      Size = 50
    end
    object UniTable3cdadRx: TLargeintField
      FieldName = 'cdadRx'
      Required = True
    end
  end
  object UniTable4: TUniTable
    TableName = 'monkd estadisticas'
    Connection = UniConnection2
    Left = 344
    Top = 144
    object UniTable4id: TLargeintField
      FieldName = 'id'
    end
    object UniTable4fecha: TDateField
      FieldName = 'fecha'
      Required = True
    end
    object UniTable4idMon: TStringField
      FieldName = 'idMon'
      Required = True
      Size = 30
    end
    object UniTable4tipoTx: TStringField
      FieldName = 'tipoTx'
      Required = True
      Size = 8
    end
    object UniTable4PktRx: TLargeintField
      FieldName = 'PktRx'
      Required = True
    end
    object UniTable4BytesRx: TLargeintField
      FieldName = 'BytesRx'
      Required = True
    end
    object UniTable4Cdad: TLargeintField
      FieldName = 'Cdad'
      Required = True
    end
  end
  object UniDataSource2: TUniDataSource
    DataSet = UniTable1
    Left = 200
    Top = 192
  end
  object UniDataSource3: TUniDataSource
    DataSet = UniTable2
    Left = 248
    Top = 192
  end
  object UniDataSource4: TUniDataSource
    DataSet = UniTable3
    Left = 296
    Top = 192
  end
  object UniDataSource5: TUniDataSource
    DataSet = UniTable4
    Left = 344
    Top = 192
  end
  object UniConnection2: TUniConnection
    ProviderName = 'MySQL'
    Port = 9306
    Database = 'kdestadisticas'
    Username = 'root'
    Server = '10.8.1.13'
    Left = 40
    Top = 208
    EncryptedPassword = '88FF96FF91FF9BFF90FF88FF8CFF87FF8FFF'
  end
  object Tgrupos: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select * from grupos')
    Options.StrictUpdate = False
    Left = 136
    Top = 88
    object Tgruposidgrupo: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'idgrupo'
    end
    object Tgruposgrupo: TStringField
      FieldName = 'grupo'
      Required = True
    end
    object Tgruposunidad: TStringField
      FieldName = 'unidad'
      Required = True
    end
    object Tgruposautoridad: TStringField
      FieldName = 'autoridad'
      Required = True
      Size = 50
    end
    object Tgruposactivo: TBooleanField
      FieldName = 'activo'
      Required = True
    end
    object Tgruposfuncionando: TBooleanField
      FieldName = 'funcionando'
      Required = True
    end
    object Tgruposautomatico: TBooleanField
      FieldName = 'automatico'
      Required = True
    end
    object TgruposFicherosCantidad: TLargeintField
      FieldName = 'FicherosCantidad'
      Required = True
    end
    object TgruposFicherosCantidadAlarma: TLargeintField
      FieldName = 'FicherosCantidadAlarma'
      Required = True
    end
    object TgruposFicherosCantidadLimite: TLargeintField
      FieldName = 'FicherosCantidadLimite'
      Required = True
    end
    object TgruposDirtx: TStringField
      FieldName = 'Dirtx'
      Required = True
      Size = 250
    end
    object TgruposUsarDirTx: TStringField
      FieldName = 'UsarDirTx'
      Required = True
      FixedChar = True
      Size = 5
    end
    object Tgruposclavemenor: TIntegerField
      FieldName = 'clavemenor'
      Required = True
    end
    object Tgruposclavemayor: TIntegerField
      FieldName = 'clavemayor'
      Required = True
    end
    object TgruposMaxIntereses: TIntegerField
      FieldName = 'MaxIntereses'
      Required = True
    end
    object Tgruposcopiariri: TStringField
      FieldName = 'copiariri'
      Required = True
      FixedChar = True
      Size = 5
    end
    object Tgruposformatoiri: TStringField
      FieldName = 'formatoiri'
      FixedChar = True
      Size = 11
    end
    object Tgruposorganizar: TStringField
      FieldName = 'organizar'
      Required = True
      FixedChar = True
      Size = 5
    end
    object Tgruposdescripcion: TStringField
      FieldName = 'descripcion'
      Required = True
      Size = 50
    end
    object Tgruposorden: TIntegerField
      FieldName = 'orden'
    end
    object Tgruposchequear: TStringField
      FieldName = 'chequear'
      Required = True
      FixedChar = True
      Size = 5
    end
    object TgruposBDatosKdGrupo: TStringField
      FieldName = 'BDatosKdGrupo'
      Required = True
      Size = 50
    end
    object TgruposPuertoKdGrupo: TIntegerField
      FieldName = 'PuertoKdGrupo'
      Required = True
    end
    object TgruposUserKdGrupo: TStringField
      FieldName = 'UserKdGrupo'
      Required = True
      Size = 50
    end
    object TgruposPasswKdGrupo: TStringField
      FieldName = 'PasswKdGrupo'
      Required = True
      Size = 50
    end
  end
  object dxSkinController1: TdxSkinController
    Kind = lfFlat
    NativeStyle = False
    SkinName = 'DarkSide'
    Left = 568
    Top = 24
  end
end
