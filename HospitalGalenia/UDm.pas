unit UDm;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni, UniProvider,
  MySQLUniProvider;

type
  TDM1 = class(TDataModule)
    MySQLUniProvider1: TMySQLUniProvider;
    ConeccionGeneral: TUniConnection;
    QGuardarConfInc: TUniQuery;
    QGuardarConfDec: TUniQuery;
    QGuardarConfIvaYCambio: TUniQuery;
    QBorrarConf: TUniQuery;
    Qlogin: TUniQuery;
    QloginId: TIntegerField;
    QloginUsuario: TStringField;
    QloginContraseña: TStringField;
    QloginPerfil: TStringField;
    QConfInc: TUniTable;
    QConfIncId: TIntegerField;
    QConfIncHabilitado: TStringField;
    QConfIncNumero: TStringField;
    QConfIncDesde: TStringField;
    QConfIncHasta: TStringField;
    QConfIncValor: TStringField;
    QConfDec: TUniTable;
    QConfDecId: TIntegerField;
    QConfDecHabilitado: TStringField;
    QConfDecNumero: TStringField;
    QConfDecValor: TStringField;
    QconfIva: TUniTable;
    QConfDolar: TUniTable;
    QconfIvaId: TIntegerField;
    QconfIvaIva: TStringField;
    QConfDolarId: TIntegerField;
    QConfDolarCambioMonedas: TStringField;
    QEstado: TUniQuery;
    QEstadoId: TIntegerField;
    QEstadoEstado: TStringField;
    QEstadoPorActualizar: TUniQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    QEstadoActualizado: TUniQuery;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    QGuardarConfFtp: TUniQuery;
    QConfFtp: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM1: TDM1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
