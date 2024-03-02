unit UDM1;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, MemDS, UniProvider,
  ODBCUniProvider, AccessUniProvider, MySQLUniProvider;

type
  TFDM1 = class(TDataModule)
    UniConnection1: TUniConnection;
    MySQLUniProvider1: TMySQLUniProvider;
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FDM1: TFDM1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

end.
