unit UDMMedNuc;

interface

uses
  System.SysUtils, System.Classes, UniProvider, MySQLUniProvider, Data.DB,
  DBAccess, Uni, MemDS;

type
  TDMMedNuc = class(TDataModule)
    ConeccionMedNuc: TUniConnection;
    QTruncateMedNuc: TUniQuery;
    QInsertarMedNuc: TUniQuery;
    QInsertarMedNucPesos: TUniQuery;
    QTruncateMedNucPesos: TUniQuery;
    QTruncateMedNucDolares: TUniQuery;
    QInsertarMedNucDolares: TUniQuery;
    TablaMedNuc: TUniTable;
    DSMedNuc: TUniDataSource;
    TablaMedNucPesos: TUniTable;
    DSMedNucPesos: TUniDataSource;
    TablaMedNucDolares: TUniTable;
    DSMedNucDolares: TUniDataSource;
    MySQLUniProvider1: TMySQLUniProvider;
    ConeccionMedNucVer: TUniConnection;
    TablaMedNucCODIGO: TLargeintField;
    TablaMedNucDESCRIPCION: TStringField;
    TablaMedNucGRUPO: TStringField;
    TablaMedNucIMPORTE: TStringField;
    TablaMedNucIVA: TStringField;
    TablaMedNucTOTAL_CON_IVA: TStringField;
    TablaMedNucPesosCODIGO: TLargeintField;
    TablaMedNucPesosDESCRIPCION: TStringField;
    TablaMedNucPesosGRUPO: TStringField;
    TablaMedNucPesosIMPORTE: TStringField;
    TablaMedNucPesosIVA: TStringField;
    TablaMedNucPesosTOTAL_CON_IVA: TStringField;
    TablaMedNucDolaresCODIGO: TLargeintField;
    TablaMedNucDolaresDESCRIPCION: TStringField;
    TablaMedNucDolaresGRUPO: TStringField;
    TablaMedNucDolaresIMPORTE: TStringField;
    TablaMedNucDolaresIVA: TStringField;
    TablaMedNucDolaresTOTAL_CON_IVA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMMedNuc: TDMMedNuc;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
