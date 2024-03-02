unit UDM;

interface

uses
  SysUtils, Classes, DB, MemDS, DBAccess, Uni, UniProvider, MySQLUniProvider;

type
  TDM = class(TDataModule)
    MySQLUniProvider1: TMySQLUniProvider;
    UniConnection1: TUniConnection;
    UniConnection2: TUniConnection;
    DStodos: TUniDataSource;
    Qtodos: TUniQuery;
    QtodosUserIpV4: TStringField;
    QtodosUserInfo: TStringField;
    QtodosNasIP: TStringField;
    QtodosNasId: TStringField;
    QtodosIdSesion: TStringField;
    QtodosInicio: TDateTimeField;
    QtodosFin: TDateTimeField;
    QtodosProtocolo: TStringField;
    QtodosPortType: TStringField;
    QtodosCausaFin: TStringField;
    QtodosTSesion: TStringField;
    QtodosInBytes: TStringField;
    QtodosOutBytes: TStringField;
    Qtodosusername: TStringField;
    Qtodoscli: TStringField;
    Quser: TUniQuery;
    Qcli: TUniQuery;
    DSQcli: TUniDataSource;
    Qusername: TUniQuery;
    DSQusername: TUniDataSource;
    DSQbyCli: TUniDataSource;
    DSQlistartablas: TUniDataSource;
    Qlistartablas: TUniQuery;
    QlistartablasTables_in_aaa: TStringField;
    DSQdepurar: TUniDataSource;
    Qdepurar: TUniQuery;
    StringField1: TStringField;
    QbyCli: TUniQuery;
    DSQbyusername: TUniDataSource;
    Qbyusername: TUniQuery;
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
