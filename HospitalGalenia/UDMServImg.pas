unit UDMServImg;

interface

uses
  System.SysUtils, System.Classes, UniProvider, MySQLUniProvider, Data.DB,
  DBAccess, Uni, MemDS;

type
  TDMServImg = class(TDataModule)
    ConeccionServImg: TUniConnection;
    QTruncateServImg: TUniQuery;
    QInsertarServImg: TUniQuery;
    QInsertarServImgPesos: TUniQuery;
    QTruncateServImgPesos: TUniQuery;
    QTruncateServImgDolares: TUniQuery;
    QInsertarServImgDolares: TUniQuery;
    TablaServImg: TUniTable;
    DSServImg: TUniDataSource;
    TablaServImgPesos: TUniTable;
    DSServImgPesos: TUniDataSource;
    TablaServImgDolares: TUniTable;
    DSServImgDolares: TUniDataSource;
    MySQLUniProvider1: TMySQLUniProvider;
    ConeccionServImgVer: TUniConnection;
    TablaServImgCODIGO: TLargeintField;
    TablaServImgDESCRIPCION: TStringField;
    TablaServImgGRUPO: TStringField;
    TablaServImgIMPORTE: TStringField;
    TablaServImgIVA: TStringField;
    TablaServImgTOTAL_CON_IVA: TStringField;
    TablaServImgPesosCODIGO: TLargeintField;
    TablaServImgPesosDESCRIPCION: TStringField;
    TablaServImgPesosGRUPO: TStringField;
    TablaServImgPesosIMPORTE: TStringField;
    TablaServImgPesosIVA: TStringField;
    TablaServImgPesosTOTAL_CON_IVA: TStringField;
    TablaServImgDolaresCODIGO: TLargeintField;
    TablaServImgDolaresDESCRIPCION: TStringField;
    TablaServImgDolaresGRUPO: TStringField;
    TablaServImgDolaresIMPORTE: TStringField;
    TablaServImgDolaresIVA: TStringField;
    TablaServImgDolaresTOTAL_CON_IVA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMServImg: TDMServImg;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
