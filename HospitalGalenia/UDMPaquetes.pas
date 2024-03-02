unit UDMPaquetes;

interface

uses
  System.SysUtils, System.Classes, UniProvider, MySQLUniProvider, Data.DB,
  DBAccess, Uni, MemDS;

type
  TDMPaquetes = class(TDataModule)
    ConeccionPaq: TUniConnection;
    QTruncatePaq: TUniQuery;
    QInsertarPaq: TUniQuery;
    QInsertarPaqPesos: TUniQuery;
    QTruncatePaqPesos: TUniQuery;
    QTruncatePaqDolares: TUniQuery;
    QInsertarPaqDolares: TUniQuery;
    TablaPaq: TUniTable;
    DSPaq: TUniDataSource;
    TablaPaqPesos: TUniTable;
    DSPaqPesos: TUniDataSource;
    TablaPaqDolares: TUniTable;
    DSPaqDolares: TUniDataSource;
    MySQLUniProvider1: TMySQLUniProvider;
    ConeccionPaqVer: TUniConnection;
    TablaPaqCODIGO: TLargeintField;
    TablaPaqDESCRIPCION: TStringField;
    TablaPaqGRUPO: TStringField;
    TablaPaqIMPORTE: TStringField;
    TablaPaqIVA: TStringField;
    TablaPaqTOTAL_CON_IVA: TStringField;
    TablaPaqPesosCODIGO: TLargeintField;
    TablaPaqPesosDESCRIPCION: TStringField;
    TablaPaqPesosGRUPO: TStringField;
    TablaPaqPesosIMPORTE: TStringField;
    TablaPaqPesosIVA: TStringField;
    TablaPaqPesosTOTAL_CON_IVA: TStringField;
    TablaPaqDolaresCODIGO: TLargeintField;
    TablaPaqDolaresDESCRIPCION: TStringField;
    TablaPaqDolaresGRUPO: TStringField;
    TablaPaqDolaresIMPORTE: TStringField;
    TablaPaqDolaresIVA: TStringField;
    TablaPaqDolaresTOTAL_CON_IVA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMPaquetes: TDMPaquetes;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
