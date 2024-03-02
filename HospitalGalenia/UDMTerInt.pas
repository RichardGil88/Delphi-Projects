unit UDMTerInt;

interface

uses
  System.SysUtils, System.Classes, UniProvider, MySQLUniProvider, Data.DB,
  DBAccess, Uni, MemDS;

type
  TDMTerInt = class(TDataModule)
    ConeccionTerInt: TUniConnection;
    QTruncateTerInt: TUniQuery;
    QInsertarTerInt: TUniQuery;
    QInsertarTerIntPesos: TUniQuery;
    QTruncateTerIntPesos: TUniQuery;
    QTruncateTerIntDolares: TUniQuery;
    QInsertarTerIntDolares: TUniQuery;
    TablaTerInt: TUniTable;
    DSTerInt: TUniDataSource;
    TablaTerIntPesos: TUniTable;
    DSTerIntPesos: TUniDataSource;
    TablaTerIntDolares: TUniTable;
    DSTerIntDolares: TUniDataSource;
    MySQLUniProvider1: TMySQLUniProvider;
    ConeccionTerIntVer: TUniConnection;
    TablaTerIntCODIGO: TLargeintField;
    TablaTerIntDESCRIPCION: TStringField;
    TablaTerIntGRUPO: TStringField;
    TablaTerIntIMPORTE: TStringField;
    TablaTerIntIVA: TStringField;
    TablaTerIntTOTAL_CON_IVA: TStringField;
    TablaTerIntPesosCODIGO: TLargeintField;
    TablaTerIntPesosDESCRIPCION: TStringField;
    TablaTerIntPesosGRUPO: TStringField;
    TablaTerIntPesosIMPORTE: TStringField;
    TablaTerIntPesosIVA: TStringField;
    TablaTerIntPesosTOTAL_CON_IVA: TStringField;
    TablaTerIntDolaresCODIGO: TLargeintField;
    TablaTerIntDolaresDESCRIPCION: TStringField;
    TablaTerIntDolaresGRUPO: TStringField;
    TablaTerIntDolaresIMPORTE: TStringField;
    TablaTerIntDolaresIVA: TStringField;
    TablaTerIntDolaresTOTAL_CON_IVA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMTerInt: TDMTerInt;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
