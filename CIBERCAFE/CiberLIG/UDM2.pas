unit UDM2;

interface

uses
  System.SysUtils, System.Classes, UniProvider, MySQLUniProvider, Data.DB,
  DBAccess, Uni, MemDS;

type
  TDM2 = class(TDataModule)
    cibercafe: TUniConnection;
    MySQLUniProvider1: TMySQLUniProvider;
    QInactivar: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM2: TDM2;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
