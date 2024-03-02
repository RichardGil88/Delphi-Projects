unit UDMServMed;

interface

uses
  System.SysUtils, System.Classes, UniProvider, MySQLUniProvider, Data.DB,
  DBAccess, Uni, MemDS;

type
  TDMServMed = class(TDataModule)
    ConeccionServMed: TUniConnection;
    QTruncateServMed: TUniQuery;
    QInsertarServMed: TUniQuery;
    QInsertarServMedPesos: TUniQuery;
    QTruncateServMedPesos: TUniQuery;
    QTruncateServMedDolares: TUniQuery;
    QInsertarServMedDolares: TUniQuery;
    TablaServMed: TUniTable;
    DSServMed: TUniDataSource;
    TablaServMedPesos: TUniTable;
    DSServMedPesos: TUniDataSource;
    TablaServMedDolares: TUniTable;
    DSServMedDolares: TUniDataSource;
    MySQLUniProvider1: TMySQLUniProvider;
    ConeccionServMedVer: TUniConnection;
    TablaServMedCODIGO: TLargeintField;
    TablaServMedDESCRIPCION: TStringField;
    TablaServMedGRUPO: TStringField;
    TablaServMedIMPORTE: TStringField;
    TablaServMedIVA: TStringField;
    TablaServMedTOTAL_CON_IVA: TStringField;
    TablaServMedPesosCODIGO: TLargeintField;
    TablaServMedPesosDESCRIPCION: TStringField;
    TablaServMedPesosGRUPO: TStringField;
    TablaServMedPesosIMPORTE: TStringField;
    TablaServMedPesosIVA: TStringField;
    TablaServMedPesosTOTAL_CON_IVA: TStringField;
    TablaServMedDolaresCODIGO: TLargeintField;
    TablaServMedDolaresDESCRIPCION: TStringField;
    TablaServMedDolaresGRUPO: TStringField;
    TablaServMedDolaresIMPORTE: TStringField;
    TablaServMedDolaresIVA: TStringField;
    TablaServMedDolaresTOTAL_CON_IVA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMServMed: TDMServMed;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
