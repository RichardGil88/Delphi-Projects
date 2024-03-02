unit UDMCitas;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, MemDS;

type
  TFDMCitas = class(TDataModule)
    QCitasTodas: TUniQuery;
    DSCitasTodas: TUniDataSource;
    QInsertarCita: TUniQuery;
    QUpdateCita: TUniQuery;
    QEliminarCita: TUniQuery;
    QHoraInicio: TUniQuery;
    DSHoraInicio: TUniDataSource;
    QHoraFin: TUniQuery;
    DSHoraFin: TUniDataSource;
    QHoraFinHORA_FIN: TStringField;
    QHoraInicioCODIGO: TIntegerField;
    QHoraInicioHORA_INICIO: TStringField;
    QHoraInicioHORA_FIN: TStringField;
    QCitasBuscar: TUniQuery;
    DSCitasBuscar: TUniDataSource;
    QCitasDoctor: TUniQuery;
    DSCitasDoctor: TUniDataSource;
    QCitasOld: TUniQuery;
    QInsertarCitaHist: TUniQuery;
    QCitasBuscarDoctor: TUniQuery;
    DSCitasBuscarDoctor: TUniDataSource;
    QCitasBuscarHist: TUniQuery;
    DSCitasBuscarHist: TUniDataSource;
    QCitasBuscarDoctorHist: TUniQuery;
    DSCitasBuscarDoctorHist: TUniDataSource;
    QConfirmarCita: TUniQuery;
    QVentas: TUniQuery;
    DSVentas: TUniDataSource;
    QVentasNOMBRE_PACIENTE: TStringField;
    QVentasPRIMER_APELLIDO: TStringField;
    QVentasSEGUNDO_APELLIDO: TStringField;
    QVentasVENDEDOR: TStringField;
    QVentasFECHA_DE_VENTA: TDateField;
    QVentasPRECIO_TOTAL: TIntegerField;
    QVentasCANTIDAD_VENDIDO: TIntegerField;
    QVentasPRECIO_VENTA_POR_UNIDAD: TIntegerField;
    QVentasNOMBRE: TStringField;
    QCitasTodasCODIGO: TIntegerField;
    QCitasTodasNOMBRE: TStringField;
    QCitasTodasTELEFONO: TStringField;
    QCitasTodasMOTIVO: TStringField;
    QCitasTodasESTADO: TStringField;
    QCitasTodasFECHA_CITA: TDateField;
    QCitasTodasFECHA_CONFIRMACION: TDateField;
    QCitasTodasHORA_INICIO: TStringField;
    QCitasTodasHORA_FIN: TStringField;
    QCitasTodasMEDICO_ASIGNADO: TStringField;
    QCitasTodasRECEPCIONISTA: TStringField;
    QCitasDoctorCODIGO: TIntegerField;
    QCitasDoctorNOMBRE: TStringField;
    QCitasDoctorTELEFONO: TStringField;
    QCitasDoctorMOTIVO: TStringField;
    QCitasDoctorESTADO: TStringField;
    QCitasDoctorFECHA_CITA: TDateField;
    QCitasDoctorFECHA_CONFIRMACION: TDateField;
    QCitasDoctorHORA_INICIO: TStringField;
    QCitasDoctorHORA_FIN: TStringField;
    QCitasDoctorMEDICO_ASIGNADO: TStringField;
    QCitasDoctorRECEPCIONISTA: TStringField;
    QCitasBuscarCODIGO: TIntegerField;
    QCitasBuscarNOMBRE: TStringField;
    QCitasBuscarTELEFONO: TStringField;
    QCitasBuscarMOTIVO: TStringField;
    QCitasBuscarESTADO: TStringField;
    QCitasBuscarFECHA_CITA: TDateField;
    QCitasBuscarFECHA_CONFIRMACION: TDateField;
    QCitasBuscarHORA_INICIO: TStringField;
    QCitasBuscarHORA_FIN: TStringField;
    QCitasBuscarMEDICO_ASIGNADO: TStringField;
    QCitasBuscarRECEPCIONISTA: TStringField;
    QCitasBuscarDoctorCODIGO: TIntegerField;
    QCitasBuscarDoctorNOMBRE: TStringField;
    QCitasBuscarDoctorTELEFONO: TStringField;
    QCitasBuscarDoctorMOTIVO: TStringField;
    QCitasBuscarDoctorESTADO: TStringField;
    QCitasBuscarDoctorFECHA_CITA: TDateField;
    QCitasBuscarDoctorFECHA_CONFIRMACION: TDateField;
    QCitasBuscarDoctorHORA_INICIO: TStringField;
    QCitasBuscarDoctorHORA_FIN: TStringField;
    QCitasBuscarDoctorMEDICO_ASIGNADO: TStringField;
    QCitasBuscarDoctorRECEPCIONISTA: TStringField;
    QCitasBuscarHistCODIGO: TIntegerField;
    QCitasBuscarHistNOMBRE: TStringField;
    QCitasBuscarHistTELEFONO: TIntegerField;
    QCitasBuscarHistMOTIVO: TStringField;
    QCitasBuscarHistESTADO: TStringField;
    QCitasBuscarHistFECHA_CITA: TDateField;
    QCitasBuscarHistFECHA_CONFIRMACION: TDateField;
    QCitasBuscarHistHORA_INICIO: TStringField;
    QCitasBuscarHistHORA_FIN: TStringField;
    QCitasBuscarHistMEDICO_ASIGNADO: TStringField;
    QCitasBuscarHistRECEPCIONISTA: TStringField;
    QCitasBuscarDoctorHistCODIGO: TIntegerField;
    QCitasBuscarDoctorHistNOMBRE: TStringField;
    QCitasBuscarDoctorHistTELEFONO: TIntegerField;
    QCitasBuscarDoctorHistMOTIVO: TStringField;
    QCitasBuscarDoctorHistESTADO: TStringField;
    QCitasBuscarDoctorHistFECHA_CITA: TDateField;
    QCitasBuscarDoctorHistFECHA_CONFIRMACION: TDateField;
    QCitasBuscarDoctorHistHORA_INICIO: TStringField;
    QCitasBuscarDoctorHistHORA_FIN: TStringField;
    QCitasBuscarDoctorHistMEDICO_ASIGNADO: TStringField;
    QCitasBuscarDoctorHistRECEPCIONISTA: TStringField;
    QCitasOldCODIGO: TIntegerField;
    QCitasOldNOMBRE: TStringField;
    QCitasOldTELEFONO: TStringField;
    QCitasOldMOTIVO: TStringField;
    QCitasOldESTADO: TStringField;
    QCitasOldFECHA_CITA: TDateField;
    QCitasOldFECHA_CONFIRMACION: TDateField;
    QCitasOldHORA_INICIO: TStringField;
    QCitasOldHORA_FIN: TStringField;
    QCitasOldMEDICO_ASIGNADO: TStringField;
    QCitasOldRECEPCIONISTA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDMCitas: TFDMCitas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
 uses UDM1;
end.
