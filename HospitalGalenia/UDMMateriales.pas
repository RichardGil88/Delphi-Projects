unit UDMMateriales;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, MemDS, UniProvider,
  MySQLUniProvider;

type
  TDmMateriales = class(TDataModule)
    ConeccionMateriales: TUniConnection;
    QTruncateMateriales: TUniQuery;
    QInsertarMateriales: TUniQuery;
    QInsertarMaterialesPesos: TUniQuery;
    QTruncateMaterialesPesos: TUniQuery;
    QTruncateMaterialesDolares: TUniQuery;
    QInsertarMaterialesDolares: TUniQuery;
    TablaMateriales: TUniTable;
    DSMateriales: TUniDataSource;
    TablaMaterialesPesos: TUniTable;
    DSMaterialesPesos: TUniDataSource;
    TablaMaterialesDolares: TUniTable;
    DSMaterialesDolares: TUniDataSource;
    MySQLUniProvider1: TMySQLUniProvider;
    ConeccionMaterialesVer: TUniConnection;
    TablaMaterialesCODIGO: TLargeintField;
    TablaMaterialesMATERIAL: TStringField;
    TablaMaterialesGRUPO: TStringField;
    TablaMaterialesIMPORTE: TStringField;
    TablaMaterialesIVA: TStringField;
    TablaMaterialesTOTAL_CON_IVA: TStringField;
    TablaMaterialesPesosCODIGO: TLargeintField;
    TablaMaterialesPesosMATERIAL: TStringField;
    TablaMaterialesPesosGRUPO: TStringField;
    TablaMaterialesPesosIMPORTE: TStringField;
    TablaMaterialesPesosIVA: TStringField;
    TablaMaterialesPesosTOTAL_CON_IVA: TStringField;
    TablaMaterialesDolaresCODIGO: TLargeintField;
    TablaMaterialesDolaresMATERIAL: TStringField;
    TablaMaterialesDolaresGRUPO: TStringField;
    TablaMaterialesDolaresIMPORTE: TStringField;
    TablaMaterialesDolaresIVA: TStringField;
    TablaMaterialesDolaresTOTAL_CON_IVA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmMateriales: TDmMateriales;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
