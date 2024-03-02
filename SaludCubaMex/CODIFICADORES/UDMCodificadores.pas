unit UDMCodificadores;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, MemDS;

type
  TFDMCodificadores = class(TDataModule)
    QMedicamentos: TUniQuery;
    QMedicamentosCODIGO: TIntegerField;
    QMedicamentosNOMBRE: TStringField;
    DSMedicamentos: TUniDataSource;
    QServicios: TUniQuery;
    QServiciosCODIGO: TIntegerField;
    QServiciosNOMBRE: TStringField;
    QServiciosPRECIO_DE_VENTA: TIntegerField;
    DSServicios: TUniDataSource;
    QInsumos: TUniQuery;
    QInsumosCODIGO: TIntegerField;
    QInsumosNOMBRE: TStringField;
    DSInsumos: TUniDataSource;
    DSQproveedores: TUniDataSource;
    Qproveedores: TUniQuery;
    QproveedoresCODIGO: TIntegerField;
    QproveedoresNOMBRE: TStringField;
    QproveedoresTELEFONO: TIntegerField;
    QproveedoresDIRECCION: TStringField;
    DSLab: TUniDataSource;
    QLab: TUniQuery;
    QLabCODIGO: TIntegerField;
    QLabNOMBRE: TStringField;
    QLabDESCRIPCION: TStringField;
    QLabTELEFONO: TIntegerField;
    QLabDIRECCION: TStringField;
    DSPresentacion: TUniDataSource;
    QPresentacion: TUniQuery;
    QPresentacionCODIGO: TIntegerField;
    DSCod_Cita_Motivos: TUniDataSource;
    DSCod_Cita_Estados: TUniDataSource;
    QCod_Cita_Estados: TUniQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    QCod_Cita_Motivos: TUniQuery;
    QCod_Cita_MotivosCODIGO: TIntegerField;
    QCod_Cita_MotivosNOMBRE: TStringField;
    QPresentacionNOMBRE: TStringField;
    DSCod_Tipos_De_Sangre: TUniDataSource;
    QCod_Tipos_De_Sangre: TUniQuery;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    DSCategorias: TUniDataSource;
    QCategorias: TUniQuery;
    IntegerField3: TIntegerField;
    StringField3: TStringField;
    QInsertar: TUniQuery;
    IntegerField4: TIntegerField;
    StringField4: TStringField;
    QEliminar: TUniQuery;
    IntegerField5: TIntegerField;
    StringField5: TStringField;
    QproveedoresDESCRIPCION: TStringField;
    QproveedoresEMAIL2: TStringField;
    QLabEMAIL2: TStringField;
    QMedicamentosCATEGORIA: TStringField;
    DSDoctores: TUniDataSource;
    QDoctores: TUniQuery;
    IntegerField6: TIntegerField;
    StringField6: TStringField;
    QDoctoresTELEFONO: TIntegerField;
    QDoctoresEMAIL: TStringField;
    QDoctoresDIRECCION: TStringField;
    QDoctoresESPECIALIDADES: TStringField;
    DSEstados_Civiles: TUniDataSource;
    QEstados_Civiles: TUniQuery;
    IntegerField7: TIntegerField;
    StringField7: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDMCodificadores: TFDMCodificadores;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
USES UDM1;
end.
