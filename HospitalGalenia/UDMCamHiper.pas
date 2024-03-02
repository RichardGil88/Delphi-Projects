unit UDMCamHiper;

interface

uses
  System.SysUtils, System.Classes, UniProvider, MySQLUniProvider, Data.DB,
  DBAccess, Uni, MemDS;

type
  TDMCamHiper = class(TDataModule)
    ConeccionCamHiper: TUniConnection;
    QTruncateCamHiper: TUniQuery;
    QInsertarCamHiper: TUniQuery;
    QInsertarCamHiperPesos: TUniQuery;
    QTruncateCamHiperPesos: TUniQuery;
    QTruncateCamHiperDolares: TUniQuery;
    QInsertarCamHiperDolares: TUniQuery;
    TablaCamHiper: TUniTable;
    DSCamHiper: TUniDataSource;
    TablaCamHiperPesos: TUniTable;
    DSCamHiperPesos: TUniDataSource;
    TablaCamHiperDolares: TUniTable;
    DSCamHiperDolares: TUniDataSource;
    MySQLUniProvider1: TMySQLUniProvider;
    ConeccionCamHiperVer: TUniConnection;
    TablaCamHiperCODIGO: TLargeintField;
    TablaCamHiperDESCRIPCION: TStringField;
    TablaCamHiperGRUPO: TStringField;
    TablaCamHiperIMPORTE: TStringField;
    TablaCamHiperIVA: TStringField;
    TablaCamHiperTOTAL_CON_IVA: TStringField;
    TablaCamHiperPesosCODIGO: TLargeintField;
    TablaCamHiperPesosDESCRIPCION: TStringField;
    TablaCamHiperPesosGRUPO: TStringField;
    TablaCamHiperPesosIMPORTE: TStringField;
    TablaCamHiperPesosIVA: TStringField;
    TablaCamHiperPesosTOTAL_CON_IVA: TStringField;
    TablaCamHiperDolaresCODIGO: TLargeintField;
    TablaCamHiperDolaresDESCRIPCION: TStringField;
    TablaCamHiperDolaresGRUPO: TStringField;
    TablaCamHiperDolaresIMPORTE: TStringField;
    TablaCamHiperDolaresIVA: TStringField;
    TablaCamHiperDolaresTOTAL_CON_IVA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCamHiper: TDMCamHiper;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
