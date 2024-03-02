unit UDMCuenta;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, UniProvider,
  MySQLUniProvider, MemDS;

type
  TDMCuenta = class(TDataModule)
    MySQLUniProvider1: TMySQLUniProvider;
    ConeccionGeneral: TUniConnection;
    QInsertarCuentaOriginal: TUniQuery;
    QTruncateCuentaOriginal: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCuenta: TDMCuenta;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
