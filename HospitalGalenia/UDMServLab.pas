unit UDMServLab;

interface

uses
  System.SysUtils, System.Classes, UniProvider, MySQLUniProvider, Data.DB,
  DBAccess, Uni, MemDS;

type
  TDMServLab = class(TDataModule)
    ConeccionServLab: TUniConnection;
    QTruncateServLab: TUniQuery;
    QInsertarServLab: TUniQuery;
    QInsertarServLabPesos: TUniQuery;
    QTruncateServLabPesos: TUniQuery;
    QTruncateServLabDolares: TUniQuery;
    QInsertarServLabDolares: TUniQuery;
    TablaServLab: TUniTable;
    DSServLab: TUniDataSource;
    TablaServLabPesos: TUniTable;
    DSServLabPesos: TUniDataSource;
    TablaServLabDolares: TUniTable;
    DSServLabDolares: TUniDataSource;
    MySQLUniProvider1: TMySQLUniProvider;
    ConeccionServLabVer: TUniConnection;
    TablaServLabCODIGO: TLargeintField;
    TablaServLabDESCRIPCION: TStringField;
    TablaServLabGRUPO: TStringField;
    TablaServLabIMPORTE: TStringField;
    TablaServLabIVA: TStringField;
    TablaServLabTOTAL_CON_IVA: TStringField;
    TablaServLabPesosCODIGO: TLargeintField;
    TablaServLabPesosDESCRIPCION: TStringField;
    TablaServLabPesosGRUPO: TStringField;
    TablaServLabPesosIMPORTE: TStringField;
    TablaServLabPesosIVA: TStringField;
    TablaServLabPesosTOTAL_CON_IVA: TStringField;
    TablaServLabDolaresCODIGO: TLargeintField;
    TablaServLabDolaresDESCRIPCION: TStringField;
    TablaServLabDolaresGRUPO: TStringField;
    TablaServLabDolaresIMPORTE: TStringField;
    TablaServLabDolaresIVA: TStringField;
    TablaServLabDolaresTOTAL_CON_IVA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMServLab: TDMServLab;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
