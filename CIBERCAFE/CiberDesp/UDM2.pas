unit UDM2;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni, UniProvider,
  MySQLUniProvider;

type
  TDM2 = class(TDataModule)
    cibercafe: TUniConnection;
    MySQLUniProvider1: TMySQLUniProvider;
    Qftp: TUniQuery;
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
