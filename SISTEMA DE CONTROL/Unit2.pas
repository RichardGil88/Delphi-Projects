unit Unit2;

interface

uses
  SysUtils, Classes, DB, DBAccess, Uni, MemDS, UniProvider, MySQLUniProvider;

type
  TDM = class(TDataModule)
    MySQLUniProvider1: TMySQLUniProvider;
    ConChequeo: TUniConnection;
    DSTcontrol: TUniDataSource;
    Qgrupos: TUniQuery;
    DSQgrupos: TUniDataSource;
    Qaux: TUniQuery;
    DSQaux: TUniDataSource;
    Qaux2: TUniQuery;
    DSQaux2: TUniDataSource;
    DSQvaciar: TUniDataSource;
    Qvaciar: TUniQuery;
    Tcontrol: TUniTable;
    UniSQL1: TUniSQL;
    Tcontrolgrupo: TStringField;
    TcontrolClave: TIntegerField;
    TcontrolFechainicio: TDateTimeField;
    TcontrolDuracion: TIntegerField;
    TcontrolSentido: TStringField;
    TcontrolTelefonollamador: TStringField;
    TcontrolTelefonollamado: TStringField;
    TcontrolCategoria: TStringField;
    TcontrolTipoTx: TStringField;
    TcontrolTema: TStringField;
    TcontrolDigitosserviciosagregados: TStringField;
    TcontrolIt: TLargeintField;
    Tcontrolkt: TStringField;
    Tcontrolfechita: TDateTimeField;
    Tcontrolpriorizada: TBooleanField;
    Tcontrolconidioma: TBooleanField;
    TcontrolDepurada: TSmallintField;
    Tcontrolktclick: TStringField;
    Tcontrolfechaclick: TDateTimeField;
    Tcontrolduraclick: TIntegerField;
    Tcontrolfichero: TStringField;
    TcontrolidSolicitud: TLargeintField;
    Tcontrolktprimero: TStringField;
    TcontrolfechitaPrimero: TDateTimeField;
    Tcontrolidioma: TStringField;
    Tcontrolconfax: TBooleanField;
    Tcontrolbancovoces: TBooleanField;
    Tcontrolcontenido: TStringField;
    Tcontrolficherocontenido: TStringField;
    Tcontrollugardemonitoreo: TStringField;
    ConControl: TUniConnection;
    Qestado: TUniQuery;
    DSestado: TUniDataSource;
    TEstados: TUniTable;
    DStestados: TUniDataSource;
    TEstadosTabla: TStringField;
    TEstadosActiva: TStringField;
    UniQuery1: TUniQuery;
    Tcontroldptosecc: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
