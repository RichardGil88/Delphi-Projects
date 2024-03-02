unit UDM3;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni, UniProvider,
  MySQLUniProvider;

type
  TDM3 = class(TDataModule)
    cibercafe: TUniConnection;
    MySQLUniProvider1: TMySQLUniProvider;
    QSelectActivas: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM3: TDM3;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
