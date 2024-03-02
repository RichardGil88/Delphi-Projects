unit UDmMedicamentos;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, MemDS, UniProvider,
  MySQLUniProvider;

type
  TDmMedicamentos = class(TDataModule)
    QTruncateMedicamentos: TUniQuery;
    QInsertarMedicamentos: TUniQuery;
    ConeccionMedicamentos: TUniConnection;
    TablaMedicamentos: TUniTable;
    DSMedicamentos: TUniDataSource;
    QInsertarMedicamentosPesos: TUniQuery;
    QTruncateMedicamentosPesos: TUniQuery;
    TablaMedicamentosPesos: TUniTable;
    DSMedicamentosPesos: TUniDataSource;
    QTruncateMedicamentosDolares: TUniQuery;
    QInsertarMedicamentosDolares: TUniQuery;
    TablaMedicamentosDolares: TUniTable;
    DSMedicamentosDolares: TUniDataSource;
    MySQLUniProvider1: TMySQLUniProvider;
    ConeccionMedicamentosVer: TUniConnection;
    TablaMedicamentosCODIGO: TLargeintField;
    TablaMedicamentosMEDICAMENTO: TStringField;
    TablaMedicamentosGRUPO: TStringField;
    TablaMedicamentosIMPORTE: TStringField;
    TablaMedicamentosIVA: TStringField;
    TablaMedicamentosTOTAL_CON_IVA: TStringField;
    TablaMedicamentosPesosCODIGO: TLargeintField;
    TablaMedicamentosPesosMEDICAMENTO: TStringField;
    TablaMedicamentosPesosGRUPO: TStringField;
    TablaMedicamentosPesosIMPORTE: TStringField;
    TablaMedicamentosPesosIVA: TStringField;
    TablaMedicamentosPesosTOTAL_CON_IVA: TStringField;
    TablaMedicamentosDolaresCODIGO: TLargeintField;
    TablaMedicamentosDolaresMEDICAMENTO: TStringField;
    TablaMedicamentosDolaresGRUPO: TStringField;
    TablaMedicamentosDolaresIMPORTE: TStringField;
    TablaMedicamentosDolaresIVA: TStringField;
    TablaMedicamentosDolaresTOTAL_CON_IVA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmMedicamentos: TDmMedicamentos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
