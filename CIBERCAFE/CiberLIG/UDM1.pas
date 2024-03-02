unit UDM1;

interface

uses
  SysUtils, Classes, UniProvider, MySQLUniProvider, DB, Uni, DBAccess, MemDS;

type
  TDM1 = class(TDataModule)
    cibercafe: TUniConnection;
    MySQLUniProvider1: TMySQLUniProvider;
    Qmaq: TUniQuery;
    Qmaquinas: TUniQuery;
    DSQmaquinas: TUniDataSource;
    QUpdateUSB: TUniQuery;
    UniSQL1: TUniSQL;
    QmaquinasidMaquina: TLongWordField;
    QmaquinasNombre_PC: TStringField;
    QmaquinasIP: TStringField;
    QmaquinasProvincia: TStringField;
    QmaquinasMunicipio: TStringField;
    QmaquinasNombre_CiberCafe: TStringField;
    QmaquinasUbicacion: TStringField;
    Qmaq1: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM1: TDM1;

implementation

{$R *.dfm}

end.
