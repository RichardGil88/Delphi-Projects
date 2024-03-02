unit Unit2;

interface

uses
  SysUtils, Classes, DB, Uni, DBAccess, MemDS, UniProvider, MySQLUniProvider;

type
  TDM = class(TDataModule)
    MySQLUniProvider1: TMySQLUniProvider;
    serv: TUniConnection;
    Quser1: TUniQuery;
    DSuser1: TUniDataSource;
    Qinsertarusuario: TUniQuery;
    DSinsertarusuario: TUniDataSource;
    Qlistcargoadm: TUniQuery;
    DSlistcargoadm: TUniDataSource;
    Qlistunidadadm: TUniQuery;
    DSQlistunidadadm: TUniDataSource;
    Qeliminaruser: TUniQuery;
    DSeliminaruser: TUniDataSource;
    DSusuarios: TUniDataSource;
    Qmodpass: TUniQuery;
    DSmospass: TUniDataSource;
    chequeo: TUniConnection;
    codificadores: TUniConnection;
    partes: TUniConnection;
    UniQuery1: TUniQuery;
    UniDataSource1: TUniDataSource;
    Quser: TUniQuery;
    Qcargoyunidad: TUniQuery;
    DScargoyunidad: TUniDataSource;
    DSuser: TUniDataSource;
    DSQBYUchequeos: TUniDataSource;
    QBYUchequeos: TUniQuery;
    DSdptosysecc: TUniDataSource;
    DSfase: TUniDataSource;
    DSmotcump: TUniDataSource;
    DSniveldelAprobacion: TUniDataSource;
    DSlugmon: TUniDataSource;
    UniSQL1: TUniSQL;
    QBYUchequeosUNIDAD: TStringField;
    QBYUchequeosCLAVES: TIntegerField;
    QBYUchequeosLMONITOREO: TStringField;
    QBYUchequeosTEL�FONO: TStringField;
    QBYUchequeosESTADO: TStringField;
    QBYUchequeosCASO: TStringField;
    QBYUchequeosFECHAALTA: TDateTimeField;
    QBYUchequeosOBJETIVO: TStringField;
    QBYUchequeosFASE: TStringField;
    QBYUchequeosDPTO: TStringField;
    QBYUchequeosOFICIAL: TStringField;
    QBYUchequeosNIVELDEAPROBACION: TStringField;
    QBYUchequeosPERMANENTEONO: TSmallintField;
    QBYUchequeosATENCIONESPECIAL: TSmallintField;
    QBYUchequeosMOTIVOAE: TStringField;
    QBYUchequeosCUMPLIMIENTO: TSmallintField;
    QBYUchequeosMOTIVO: TStringField;
    QBYUchequeosESPECIALISTA: TStringField;
    QBYUchequeosFECHABAJA: TDateTimeField;
    QBYUchequeosUSUARIO: TStringField;
    DSQBYUllamadas: TUniDataSource;
    DSTkmnoperm: TUniDataSource;
    QBYUllamadas: TUniQuery;
    QBYUkmnoperm: TUniQuery;
    DSestados: TUniDataSource;
    DSTtiposdeKM: TUniDataSource;
    DSTlugardemonitoreo: TUniDataSource;
    DSidiomas: TUniDataSource;
    DSTformadeprocesamientokm: TUniDataSource;
    QBYUasist: TUniQuery;
    DSQBYUasist: TUniDataSource;
    DSescrito: TUniDataSource;
    DStipodoc: TUniDataSource;
    DST6virus: TUniDataSource;
    DST6reporte: TUniDataSource;
    DST6asist: TUniDataSource;
    DStunidades: TUniDataSource;
    DSllamadas: TUniDataSource;
    DSchequeos: TUniDataSource;
    DSasist: TUniDataSource;
    DSkmnoperm: TUniDataSource;
    DSincidencias: TUniDataSource;
    QBYUincidencias: TUniQuery;
    DSQBYUincidencias: TUniDataSource;
    Qmodcargo: TUniQuery;
    DSQmodcargo: TUniDataSource;
    QOICE: TUniQuery;
    DSQOICE: TUniDataSource;
    QOICE2: TUniQuery;
    DSQOICE2: TUniDataSource;
    DSTOICE: TUniDataSource;
    DSQava0: TUniDataSource;
    Qava1: TUniQuery;
    DSQava1: TUniDataSource;
    Qava0: TUniQuery;
    Qavaseg: TUniQuery;
    DSQavaseg: TUniDataSource;
    DSQavaexplo: TUniDataSource;
    Qavaexplo: TUniQuery;
    Qava2: TUniQuery;
    DSQava2: TUniDataSource;
    DSTLUGARAPLIC: TUniDataSource;
    Qkmp0: TUniQuery;
    DSQkmp0: TUniDataSource;
    Qkmp1: TUniQuery;
    DSQkmp1: TUniDataSource;
    Qkmp2: TUniQuery;
    DSQkmp2: TUniDataSource;
    Qkmp: TUniQuery;
    DSQkmp: TUniDataSource;
    QsegKM: TUniQuery;
    DSQsegKM: TUniDataSource;
    DSTEXPKM: TUniDataSource;
    QBYUasistFECHA: TDateTimeField;
    QBYUasistUNIDAD: TStringField;
    QBYUasistLUGARDEMONITOREO: TStringField;
    QBYUasistKT: TIntegerField;
    QBYUasistKM: TIntegerField;
    QBYUasistKD: TIntegerField;
    QBYUasistESCRITO: TIntegerField;
    QBYUasistADMSIST: TIntegerField;
    QBYUasistOCIC: TIntegerField;
    QBYUasistDIRECCION: TIntegerField;
    QBYUasistCADETESISMI: TIntegerField;
    QBYUasistSERVDEGUARDIA: TIntegerField;
    QBYUasistCOMISIONSERV: TIntegerField;
    QBYUasistESTUDIOAUTORIZADO: TIntegerField;
    QBYUasistPREPMILITAR: TIntegerField;
    QBYUasistCHEQUEOMEDICO: TIntegerField;
    QBYUasistVAC: TIntegerField;
    QBYUasistLM: TIntegerField;
    QBYUasistLSS: TIntegerField;
    QBYUasistRS: TIntegerField;
    QBYUasistENFERMO: TIntegerField;
    QBYUasistPROBPERSOFAMILIAR: TIntegerField;
    QBYUasistFRANCO: TIntegerField;
    QBYUasistOTROS: TStringField;
    QBYUasistUSUARIO: TStringField;
    Qasist1: TUniQuery;
    DSQasist1: TUniDataSource;
    Qasist2: TUniQuery;
    DSQasist2: TUniDataSource;
    Qllam1: TUniQuery;
    Qllam2: TUniQuery;
    DSQllam1: TUniDataSource;
    DSQllam2: TUniDataSource;
    DSTavanzadas: TUniDataSource;
    Qefect6: TUniQuery;
    DSQefect6: TUniDataSource;
    DSTinterrucciones: TUniDataSource;
    QBYUkmnopermidkmnoperm: TLargeintField;
    QBYUkmnopermunidad: TStringField;
    QBYUkmnopermexpediente: TStringField;
    QBYUkmnopermentrada: TDateTimeField;
    QBYUkmnopermsalida: TDateTimeField;
    QBYUkmnopermestado: TStringField;
    QBYUkmnopermniveldeaprobacion: TStringField;
    QBYUkmnopermtipodekm: TStringField;
    QBYUkmnopermlugarmonitoreo: TStringField;
    QBYUkmnopermmonitoreadopor: TStringField;
    QBYUkmnopermtranscritopor: TStringField;
    QBYUkmnopermidioma: TStringField;
    QBYUkmnopermfase: TStringField;
    QBYUkmnopermdpto: TStringField;
    QBYUkmnopermformaprocesamiento: TStringField;
    QBYUkmnopermcumpfinalidadop: TSmallintField;
    QBYUkmnopermmotivonocumplim: TStringField;
    QBYUkmnoperminfresultado: TDateTimeField;
    QBYUkmnopermtrancripsia: TDateTimeField;
    QBYUkmnopermppalestematicasreferencia: TStringField;
    QBYUkmnopermusuario: TStringField;
    QBYUasistIDASISTENCIA: TLargeintField;
    QBYUchequeosINTERES: TStringField;
    QBYUchequeosIDCHEQUEO: TLargeintField;
    QBYUllamadasUNIDAD: TIntegerField;
    QBYUllamadasLUGARDEMONITOREO: TStringField;
    QBYUllamadasFECHA: TDateTimeField;
    QBYUllamadasCHEQUEOSKT: TIntegerField;
    QBYUllamadasLLAMENTRADAS: TIntegerField;
    QBYUllamadasLLAMSININTERES: TIntegerField;
    QBYUllamadasLLAMCONINTERES: TIntegerField;
    QBYUllamadasLLAMPENDIENTE: TIntegerField;
    QBYUllamadasVERSIONES: TIntegerField;
    QBYUllamadasPUBLICASAPLICADAS: TIntegerField;
    QBYUllamadasMCCENTRADAS: TIntegerField;
    QBYUllamadasMCCCONINTERES: TIntegerField;
    QBYUllamadasMCCSININTERES: TIntegerField;
    QBYUllamadasMCCPENDIENTE: TIntegerField;
    QBYUllamadasUSUARIO: TStringField;
    QBYUllamadasIDLLAMADAS: TLargeintField;
    DSTchequeosKD: TUniDataSource;
    DSTtipochequeo: TUniDataSource;
    DSTobjetoaplicacion: TUniDataSource;
    DSTnivelcompart: TUniDataSource;
    DSTcorreosKD: TUniDataSource;
    Qalerta: TUniQuery;
    DSQalerta: TUniDataSource;
    UniSQL2: TUniSQL;
    QalertaAlerta: TStringField;
    Qalertaid: TLargeintField;
    Qalertausuario: TStringField;
    DSalertas: TUniDataSource;
    QalertaUnidad: TStringField;
    QalertaEstado: TStringField;
    Qalertaatendidopor: TStringField;
    DSGSA: TUniDataSource;
    QefecGSA: TUniQuery;
    DSQefecGSA: TUniDataSource;
    QOICE2USUARIO: TStringField;
    QOICE2UNIDAD: TStringField;
    QOICE2Id: TIntegerField;
    QOICE2FECHA: TDateTimeField;
    QOICE2LLAMADASPROC: TStringField;
    QOICE2INFENBUZON: TStringField;
    QOICE2CINTERES: TStringField;
    QOICE2INFALOSDPTO: TStringField;
    QOICE2PDTE: TStringField;
    Qchequeoskd: TUniQuery;
    Qcorreoskd: TUniQuery;
    DSQchequeoskd: TUniDataSource;
    DSQcorreoskd: TUniDataSource;
    Qefectcorreoskd: TUniQuery;
    DSQefectcorreoskd: TUniDataSource;
    QefectcorreoskdU: TUniQuery;
    DSQefectcorreoskdU: TUniDataSource;
    QBYUkmnopermcantidaddecuartillas: TIntegerField;
    Tescrito: TUniQuery;
    Tusuarios: TUniQuery;
    T6virus: TUniQuery;
    T6reporte: TUniQuery;
    T6asist: TUniQuery;
    Tniveldeaprobacion: TUniQuery;
    TABLEmotcump: TUniQuery;
    TABLEfase: TUniQuery;
    TABLEdptosysecc: TUniQuery;
    TABLElugmon: TUniQuery;
    TtiposdeKM: TUniQuery;
    Tlugardemonitoreo: TUniQuery;
    Tidiomas: TUniQuery;
    Tformadeprocesamientokm: TUniQuery;
    TLUGARAPLIC: TUniQuery;
    Tunidades: TUniQuery;
    Ttipodoc: TUniQuery;
    Testados: TUniQuery;
    TOICE: TUniQuery;
    Tincidencias: TUniQuery;
    Tnivelcompart: TUniQuery;
    Tobjetoaplicacion: TUniQuery;
    Ttipochequeo: TUniQuery;
    Talertas: TUniQuery;
    TGSA: TUniQuery;
    Tchequeos: TUniQuery;
    Tllamadas: TUniQuery;
    Tkmnoperm: TUniQuery;
    Tasist: TUniQuery;
    TEXPKM: TUniQuery;
    Tavanzadas: TUniQuery;
    Tinterrucciones: TUniQuery;
    TchequeosKD: TUniQuery;
    TcorreosKD: TUniQuery;
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
