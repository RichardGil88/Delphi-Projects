unit UDM1;

interface

uses
  SysUtils, Classes, UniProvider, MySQLUniProvider, DB, DBAccess, Uni, MemDS;

type
  TDM1 = class(TDataModule)
    cibercafe: TUniConnection;
    MySQLUniProvider1: TMySQLUniProvider;
    Qinsertar: TUniQuery;
    QActivo: TUniQuery;
    QDespachador: TUniQuery;
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
