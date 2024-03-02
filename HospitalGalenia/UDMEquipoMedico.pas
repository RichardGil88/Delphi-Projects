unit UDMEquipoMedico;

interface

uses
  System.SysUtils, System.Classes, UniProvider, MySQLUniProvider, Data.DB,
  DBAccess, Uni, MemDS;

type
  TDMEquipoMedico = class(TDataModule)
    ConeccionEquipoMed: TUniConnection;
    QTruncateEquipoMed: TUniQuery;
    QInsertarEquipoMed: TUniQuery;
    QInsertarEquipoMedPesos: TUniQuery;
    QTruncateEquipoMedPesos: TUniQuery;
    QTruncateEquipoMedDolares: TUniQuery;
    QInsertarEquipoMedDolares: TUniQuery;
    TablaEquipoMedico: TUniTable;
    DSEquipoMed: TUniDataSource;
    TablaEquipoMedPesos: TUniTable;
    DSEquipoMedPesos: TUniDataSource;
    TablaEquipoMedDolares: TUniTable;
    DSEquipoMedDolares: TUniDataSource;
    MySQLUniProvider1: TMySQLUniProvider;
    ConeccionServHospVer: TUniConnection;
    TablaEquipoMedicoCODIGO: TLargeintField;
    TablaEquipoMedicoDESCRIPCION: TStringField;
    TablaEquipoMedicoGRUPO: TStringField;
    TablaEquipoMedicoIMPORTE: TStringField;
    TablaEquipoMedicoIVA: TStringField;
    TablaEquipoMedicoTOTAL_CON_IVA: TStringField;
    TablaEquipoMedPesosCODIGO: TLargeintField;
    TablaEquipoMedPesosDESCRIPCION: TStringField;
    TablaEquipoMedPesosGRUPO: TStringField;
    TablaEquipoMedPesosIMPORTE: TStringField;
    TablaEquipoMedPesosIVA: TStringField;
    TablaEquipoMedPesosTOTAL_CON_IVA: TStringField;
    TablaEquipoMedDolaresCODIGO: TLargeintField;
    TablaEquipoMedDolaresDESCRIPCION: TStringField;
    TablaEquipoMedDolaresGRUPO: TStringField;
    TablaEquipoMedDolaresIMPORTE: TStringField;
    TablaEquipoMedDolaresIVA: TStringField;
    TablaEquipoMedDolaresTOTAL_CON_IVA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMEquipoMedico: TDMEquipoMedico;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
