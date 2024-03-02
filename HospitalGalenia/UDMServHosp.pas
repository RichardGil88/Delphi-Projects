unit UDMServHosp;

interface

uses
  System.SysUtils, System.Classes, UniProvider, MySQLUniProvider, Data.DB,
  DBAccess, Uni, MemDS;

type
  TDMServHosp = class(TDataModule)
    ConeccionServHosp: TUniConnection;
    QTruncateServHosp: TUniQuery;
    QInsertarServHosp: TUniQuery;
    QInsertarServHospPesos: TUniQuery;
    QTruncateServHospPesos: TUniQuery;
    QTruncateServHospDolares: TUniQuery;
    QInsertarServHospDolares: TUniQuery;
    TablaServHosp: TUniTable;
    DSServHosp: TUniDataSource;
    TablaServHospPesos: TUniTable;
    DSServHospPesos: TUniDataSource;
    TablaServHospDolares: TUniTable;
    DSServHospDolares: TUniDataSource;
    MySQLUniProvider1: TMySQLUniProvider;
    ConeccionServHospVer: TUniConnection;
    TablaServHospCODIGO: TLargeintField;
    TablaServHospDESCRIPCION: TStringField;
    TablaServHospGRUPO: TStringField;
    TablaServHospIMPORTE: TStringField;
    TablaServHospIVA: TStringField;
    TablaServHospTOTAL_CON_IVA: TStringField;
    TablaServHospPesosCODIGO: TLargeintField;
    TablaServHospPesosDESCRIPCION: TStringField;
    TablaServHospPesosGRUPO: TStringField;
    TablaServHospPesosIMPORTE: TStringField;
    TablaServHospPesosIVA: TStringField;
    TablaServHospPesosTOTAL_CON_IVA: TStringField;
    TablaServHospDolaresCODIGO: TLargeintField;
    TablaServHospDolaresDESCRIPCION: TStringField;
    TablaServHospDolaresGRUPO: TStringField;
    TablaServHospDolaresIMPORTE: TStringField;
    TablaServHospDolaresIVA: TStringField;
    TablaServHospDolaresTOTAL_CON_IVA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMServHosp: TDMServHosp;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
