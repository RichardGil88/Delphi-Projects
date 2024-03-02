unit UDMTrasAmb;

interface

uses
  System.SysUtils, System.Classes, UniProvider, MySQLUniProvider, Data.DB,
  DBAccess, Uni, MemDS;

type
  TDMTrasAmb = class(TDataModule)
    ConeccionTrasAmb: TUniConnection;
    QTruncateTrasAmb: TUniQuery;
    QInsertarTrasAmb: TUniQuery;
    QInsertarTrasAmbPesos: TUniQuery;
    QTruncateTrasAmbPesos: TUniQuery;
    QTruncateTrasAmbDolares: TUniQuery;
    QInsertarTrasAmbDolares: TUniQuery;
    TablaTrasAmb: TUniTable;
    DSTrasAmb: TUniDataSource;
    TablaTrasAmbPesos: TUniTable;
    DSTrasAmbPesos: TUniDataSource;
    TablaTrasAmbDolares: TUniTable;
    DSTrasAmbDolares: TUniDataSource;
    MySQLUniProvider1: TMySQLUniProvider;
    ConeccionTrasAmbVer: TUniConnection;
    TablaTrasAmbCODIGO: TLargeintField;
    TablaTrasAmbDESCRIPCION: TStringField;
    TablaTrasAmbGRUPO: TStringField;
    TablaTrasAmbIMPORTE: TStringField;
    TablaTrasAmbIVA: TStringField;
    TablaTrasAmbTOTAL_CON_IVA: TStringField;
    TablaTrasAmbPesosCODIGO: TLargeintField;
    TablaTrasAmbPesosDESCRIPCION: TStringField;
    TablaTrasAmbPesosGRUPO: TStringField;
    TablaTrasAmbPesosIMPORTE: TStringField;
    TablaTrasAmbPesosIVA: TStringField;
    TablaTrasAmbPesosTOTAL_CON_IVA: TStringField;
    TablaTrasAmbDolaresCODIGO: TLargeintField;
    TablaTrasAmbDolaresDESCRIPCION: TStringField;
    TablaTrasAmbDolaresGRUPO: TStringField;
    TablaTrasAmbDolaresIMPORTE: TStringField;
    TablaTrasAmbDolaresIVA: TStringField;
    TablaTrasAmbDolaresTOTAL_CON_IVA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMTrasAmb: TDMTrasAmb;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
