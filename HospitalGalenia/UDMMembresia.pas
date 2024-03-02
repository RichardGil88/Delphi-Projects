unit UDMMembresia;

interface

uses
  System.SysUtils, System.Classes, UniProvider, MySQLUniProvider, Data.DB,
  DBAccess, Uni, MemDS;

type
  TDMMembresia = class(TDataModule)
    ConeccionMemb: TUniConnection;
    QTruncateMemb: TUniQuery;
    QInsertarMemb: TUniQuery;
    QInsertarMembPesos: TUniQuery;
    QTruncateMembPesos: TUniQuery;
    QTruncateMembDolares: TUniQuery;
    QInsertarMembDolares: TUniQuery;
    TablaMemb: TUniTable;
    DSMemb: TUniDataSource;
    TablaMembPesos: TUniTable;
    DSMembPesos: TUniDataSource;
    TablaMembDolares: TUniTable;
    DSMembDolares: TUniDataSource;
    MySQLUniProvider1: TMySQLUniProvider;
    ConeccionMembVer: TUniConnection;
    TablaMembCODIGO: TLargeintField;
    TablaMembDESCRIPCION: TStringField;
    TablaMembGRUPO: TStringField;
    TablaMembIMPORTE: TStringField;
    TablaMembIVA: TStringField;
    TablaMembTOTAL_CON_IVA: TStringField;
    TablaMembPesosCODIGO: TLargeintField;
    TablaMembPesosDESCRIPCION: TStringField;
    TablaMembPesosGRUPO: TStringField;
    TablaMembPesosIMPORTE: TStringField;
    TablaMembPesosIVA: TStringField;
    TablaMembPesosTOTAL_CON_IVA: TStringField;
    TablaMembDolaresCODIGO: TLargeintField;
    TablaMembDolaresDESCRIPCION: TStringField;
    TablaMembDolaresGRUPO: TStringField;
    TablaMembDolaresIMPORTE: TStringField;
    TablaMembDolaresIVA: TStringField;
    TablaMembDolaresTOTAL_CON_IVA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMMembresia: TDMMembresia;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
