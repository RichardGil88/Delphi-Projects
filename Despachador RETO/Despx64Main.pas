unit Despx64Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, System.DateUtils, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Menus,
  Vcl.Buttons, Vcl.ExtCtrls, System.IniFiles, uni, UniProvider, MySQLUniProvider,
  DAScript, UniScript, magsubs1,UciaXml, GlobalReto;

type
  dst = array[0..MaxDestinos] of RecDestinos;
  gen = array[0..MaxGenericos] of RecGenericos;
  TButton = class(Vcl.StdCtrls.TButton)
    Tarea: TThread;
  end;

  TTarea = class(TThread)

    private
    FPendientes: Integer;
    FButton: TButton;
    cad: string;
    fmt: string;
    Lista: TStringList;

    fsms: TInifile;
    fmemory: TmemoryStream;
    fichero: string;
    nombreFile: string;
    Path: String;
    id: string;
    NoTarea: string;
    RutaOrigen:string;
    Mascara: string;
    BDMasivos: string;
    BDTrazas: string;
    GuardarBDMasivos: boolean;
    GuardarMasivos: boolean;
    GuardarBDTrazas: boolean;
    GuardarTrazas: boolean;
    FormaRxIri: string;
    FormaRxContent: string;
    FormaTxIri: integer;
    FormaTxContent: string;
    FormatoIri: string;
    idServicio: integer;
    destinos: dst;
    genericos: gen;
    cdadfich: integer;

    RxiriHost: string;
    RxiriUsuario: string;
    RxiriPuerto: string;
    RxiriPassword: string;
    RxContenidosHost: string;
    RxContenidosUsuario: string;
    RxContenidosPuerto: string;
    RxContenidosPassword: string;
    RxRutaContenidos: string;
    RxRutaTemporalIri: string;
    RxRutaTemporalContenidos: string;

    idformatoTxIri: integer;
    TxiriHost: string;
    TxiriUsuario: string;
    TxiriPuerto: string;
    TxiriPassword: string;
    TxRutaIri: string;
    TxdestinoHost: string;
    TxdestinoUsuario: string;
    TxdestinoPuerto: string;
    TxdestinoPassword: string;
    TxRutaContenidos: string;
    idformatoTxContenidos: integer;
    TxContenidosHost: string;
    TxContenidosUsuario: string;
    TxContenidosPuerto: string;
    TxContenidosPassword: string;
    TotalDestinos : word;
    Totalgenericos: word;
    carpetaDestino: string;

    fechacim: string;
    temita: string;
    fechacimlongitud: integer;
    tamano: integer;
    despachados: int64;
    masivos: Integer;
    chequeados: Integer;
    paraestudio: Integer;
    almacenados: Integer;
    procesados: Integer;
    nombreSalva: string;
    GuardarParaestudio: boolean;
    grupos: array[0..MaxGrupos] of RecGrupos;
    origenes: array[0..MaxOrigenes] of RecOrigenes;
    servicios: array[0..MaxServicios] of RecServicios;
    Cartas : RecCartas;
    Telefonia : RecTelefonia;
    Sms : RecSms;
    TxCR : RecTxCR;

    cdadGrupos: integer;
    DestinoIndex1 : word;
    ActualServicio : word;
    AbortFlag: boolean ;
    IniFileName: string ;

    llamado: ansistring;
    llamador: ansistring;
    clave: integer;
    chequeo: string;
    multiplex: integer;
    canal: integer;
    captura: string;
    clavita, zonita : string;
    porzona: boolean;
    uno: string;
    dsa: string;

    RutaIri: String;
    RutaContenidos: String;

    cdad1:integer;
    cdadgenericos:integer;

    Buffer: LongWord;
    result: boolean;
    datosaux: aux;
    datostx: datos;
    dp: pdatos;
    ep: pointer;
    bp: pointer;
    ap: paux;
    cdor,cdor1:longint;
    error: boolean;
    generico: boolean;
    cc: longint;

    ConexionDestino: TUniConnection;
    claves: TuniStoredproc;
    Combinados: TuniStoredproc;
    InsertarTTelefonia: TUniStoredProc;
    InsertarTCorrespondencia: TUniStoredProc;
    InsertarTTxCR: TUniStoredProc;
    InsertarMasivoSMS: TuniStoredProc;

    procedure DoProgress;
    procedure SetPendientes(const Value: Integer);
    procedure SetError;
    procedure SetButton(const Value: TButton);
    function  BuscaFicheros(const path: string; const mask : string; var Value : TStringList; const brec : Boolean; const max: integer): Boolean;
    function  DevuelveIriContenido: boolean;
    procedure LoadIri;
    procedure LoadIni;
    Procedure LoadFooter;
    Procedure LoadXML;
    procedure LoadGnome;
    procedure GuardarGenericos(const f: TmemoryStream; const fich: string; const msg: string);

  protected
    procedure Execute; override;
  public
    constructor Create(   const fNoTarea: string;
                          const fid: string;
                          const fRutaOrigen:string;
                          const fRxRutatemporalIri: string;
                          const fRxRutatemporalContenidos: string;
                          const fMascara: string;
                          const fBDMasivos: string;
                          const fGuardarBDMasivos: boolean;
                          const fGuardarMasivos: boolean;
                          const fBDTrazas: string;
                          const fGuardarBDTrazas: boolean;
                          const fGuardarTrazas: boolean;
                          const fformatoIri: string;
                          const fFormaRxIri: string;
                          const fIriHost: string;
                          const fIriUsuario: string;
                          const fIriPassword: string;
                          const fFormaRxContenidos: string;
                          const fContentHost: string;
                          const fContentUsuario: string;
                          const fContentPassword: string;
                          const fRutaContenidos: string;
                          const fidServicio: integer;
                          const fTotalDestinos: integer;
                          const fdestinos: dst;
                          const fTotalGenericos: integer;
                          const fgenericos: gen;
                          const fConexionDestino: TUniConnection;
                          const fclaves: TuniStoredproc;
                          const fcombinados: TuniStoredproc;
                          const fInsertarTTelefonia: TUniStoredProc;
                          const fInsertarTCorrespondencia: TUniStoredProc;
                          const fInsertarTTxCR: TUniStoredProc;
                          const fInsertarMasivoSMS: TuniStoredProc;
                          FCreateSuspended: Boolean);

    property Pendientes: Integer read FPendientes write SetPendientes;
    property OwnerButton: TButton read FButton write SetButton;
  end;

  TPrincipal = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    minimizar1: TMenuItem;
    salir1: TMenuItem;
    Acciones1: TMenuItem;
    Configuracin1: TMenuItem;
    N1: TMenuItem;
    Iniciar1: TMenuItem;
    Memo: TComboBoxEx;
    GroupBox1: TGroupBox;
    LblT3: TLabel;
    LblT1: TLabel;
    LblT2: TLabel;
    LblT4: TLabel;
    LblT5: TLabel;
    LblT6: TLabel;
    LblT7: TLabel;
    LblT8: TLabel;
    LblT9: TLabel;
    LblT10: TLabel;
    LblT11: TLabel;
    LblT12: TLabel;
    LblT13: TLabel;
    LblT14: TLabel;
    LblT15: TLabel;
    LblT16: TLabel;
    Button3: TButton;
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Configuracin1Click(Sender: TObject);
    procedure minimizar1Click(Sender: TObject);
    procedure salir1Click(Sender: TObject);
    procedure AddLogText (S: Unicodestring) ;
    procedure GetSettings ;
    procedure PutSettings ;
    function encriptaPassword(passw:string):string;
    function conviertePassword(passw:string):string;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonClick(Sender: TObject;
                          const NoTarea: string;
                          const id: string;
                          const RutaOrigen:string;
                          const RxRutatemporalIri: string;
                          const RxRutatemporalContenidos: string;
                          const Mascara: string;
                          const BDMasivos: string;
                          const GuardarBDmasivos: boolean;
                          const GuardarMasivos: boolean;
                          const BDTrazas: string;
                          const GuardarBDTrazas: boolean;
                          const GuardarTrazas: boolean;
                          const formatoIri: string;
                          const FormaRxIri: string;
                          const IriHost: string;
                          const IriUsuario: string;
                          const IriPassword: string;
                          const FormaRxContenidos: string;
                          const ContentHost: string;
                          const ContentUsuario: string;
                          const ContentPassword: string;
                          const RutaContenidos: string;
                          const idServicio: integer;
                          const TotalDestinos: integer;
                          const destinos: dst;
                          const TotalGenericos: integer;
                          const genericos: gen;
                          const ConexionDestino: TUniConnection;
                          const claves: TuniStoredproc;
                          const combinados: TuniStoredproc;
                          const InsertarTTelefonia: TUniStoredProc;
                          const InsertarTCorrespondencia: TUniStoredProc;
                          const InsertarTTxCR: TUniStoredProc;
                          const InsertarMasivoSMS: TuniStoredProc
                           );
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure GuardoDatosdelOrigen(index : word);
    procedure GuardoDatosdelDestino(index : word);
    procedure GuardoDatosdelosGenericos(index : word);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
    Principal: TPrincipal;
    Inifilename: string;
    grupos: array[0..MaxGrupos] of RecGrupos;
    origenes: array[0..MaxOrigenes] of RecOrigenes;
    destinos: dst;
    servicios: array[0..MaxServicios] of RecServicios;
    genericos: gen;
    Cartas : RecCartas;
    Telefonia : RecTelefonia;
    Sms : RecSms;
    TxCR : RecTxCR;

    cdadGrupos: integer;
    TotalOrigenes : word;
    TotalDestinos : word;
    TotalServicios : word;
    Totalgenericos : word;
    OrigenIndex1 : word;
    OrigenIndex2 : word;
    OrigenIndex3 : word;
    DestinoIndex1 : word;
    ActualServicio : word;
    AbortFlag: boolean ;
    NombreDespachador: String;

    RutaOrigen: string;
    Notarea: string;
    id: string;
    mascara: string;
    ii: integer;
    jj: integer;
    kk: integer;

implementation

{$R *.dfm}
uses DspApp_ConfigServicios, DMDespachador1;

procedure TPrincipal.ButtonClick(Sender: TObject;
                          const NoTarea: string;
                          const id: string;
                          const RutaOrigen:string;
                          const RxRutatemporalIri: string;
                          const RxRutatemporalContenidos: string;
                          const Mascara: string;
                          const BDMasivos: string;
                          const GuardarBDmasivos: boolean;
                          const GuardarMasivos: boolean;
                          const BDTrazas: string;
                          const GuardarBDTrazas: boolean;
                          const GuardarTrazas: boolean;
                          const formatoIri: string;
                          const FormaRxIri: string;
                          const IriHost: string;
                          const IriUsuario: string;
                          const IriPassword: string;
                          const FormaRxContenidos: string;
                          const ContentHost: string;
                          const ContentUsuario: string;
                          const ContentPassword: string;
                          const RutaContenidos: string;
                          const idServicio: integer;
                          const TotalDestinos: integer;
                          const destinos: dst;
                          const TotalGenericos: integer;
                          const genericos: gen;
                          const ConexionDestino: TUniConnection;
                          const claves: TuniStoredproc;
                          const combinados: TuniStoredproc;
                          const InsertarTTelefonia: TUniStoredProc;
                          const InsertarTCorrespondencia: TUniStoredProc;
                          const InsertarTTxCR: TUniStoredProc;
                          const InsertarMasivoSMS: TuniStoredProc
                          );
var
  aButton: TButton;
  aThread: TTarea;
begin
  aButton := TButton(Sender);
  if not Assigned(aButton.Tarea) then
  begin
   aThread := TTarea.Create(
                            NoTarea,
                            id,
                            RutaOrigen,
                            RxRutatemporalIri,
                            RxRutatemporalContenidos,
                            Mascara,
                            BDMasivos,
                            GuardarBDMasivos,
                            GuardarMasivos,
                            BDTrazas,
                            GuardarBDTrazas,
                            GuardarTrazas,
                            formatoIri,
                            FormaRxIri,
                            IriHost,
                            IriUsuario,
                            IriPassword,
                            FormaRxContenidos,
                            ContentHost,
                            ContentUsuario,
                            ContentPassword,
                            RutaContenidos,
                            idServicio,
                            TotalDestinos,
                            destinos,
                            TotalGenericos,
                            genericos,
                            ConexionDestino,
                            claves,
                            combinados,
                            InsertarTTelefonia,
                            InsertarTCorrespondencia,
                            InsertarTTxCR,
                            InsertarMasivoSMS,
                            True);
    aButton.tarea := aThread;
    aThread.FButton := aButton;

    aThread.Resume;
    aButton.Caption := 'Run';
  end
  else
  begin
    if aButton.Tarea.Suspended then
      begin
      aButton.Tarea.Resume;
      aButton.Caption := 'Run';
      end
    else
      begin
      aButton.Tarea.Suspend;
      aButton.Caption := 'Pausa';
    end;
  end;


end;

procedure TPrincipal.Button10Click(Sender: TObject);
begin
ButtonClick(Sender,
            inttostr(jj),
            origenes[ii].Descripcion,
            RutaOrigen,
            origenes[ii].CarpetaTemporalIRI,
            origenes[ii].CarpetaTemporalContenidos,
            origenes[ii].Extension,
            origenes[ii].BDMasivo,
            origenes[ii].GuardarBDMasivos,
            origenes[ii].guardarMasivos,
            origenes[ii].BDTrazas,
            origenes[ii].GuardarBDTrazas,
            origenes[ii].guardartrazas,
            origenes[ii].FormatoIri,
            origenes[ii].FormaRxIri,
            origenes[ii].ServidorRxIRI,
            origenes[ii].UsuarioRxIRI,
            origenes[ii].PasswordRxIRI,
            origenes[ii].FormaRxContenidos,
            origenes[ii].ServidorRxContenidos,
            origenes[ii].UsuarioRxContenidos,
            origenes[ii].PasswordRxContenidos,
            origenes[ii].CarpetaContenidos,
            origenes[ii].IdServicio,
            TotalDestinos,
            destinos,
            TotalGenericos,
            Genericos,
            DMDespachador.ConexionDestino10,
            DMDespachador.claves10,
            DMDespachador.combinados10,
            DMDespachador.InsertarTTelefonia10,
            DMDespachador.InsertarTCorrespondencia10,
            DMDespachador.InsertarTTxCR10,
            DMDespachador.InsertarMasivoSMS10
            );
end;

procedure TPrincipal.Button11Click(Sender: TObject);
begin
ButtonClick(Sender,
            inttostr(jj),
            origenes[ii].Descripcion,
            RutaOrigen,
            origenes[ii].CarpetaTemporalIRI,
            origenes[ii].CarpetaTemporalContenidos,
            origenes[ii].Extension,
            origenes[ii].BDMasivo,
            origenes[ii].GuardarBDMasivos,
            origenes[ii].guardarMasivos,
            origenes[ii].BDTrazas,
            origenes[ii].GuardarBDTrazas,
            origenes[ii].guardartrazas,
            origenes[ii].FormatoIri,
            origenes[ii].FormaRxIri,
            origenes[ii].ServidorRxIRI,
            origenes[ii].UsuarioRxIRI,
            origenes[ii].PasswordRxIRI,
            origenes[ii].FormaRxContenidos,
            origenes[ii].ServidorRxContenidos,
            origenes[ii].UsuarioRxContenidos,
            origenes[ii].PasswordRxContenidos,
            origenes[ii].CarpetaContenidos,
            origenes[ii].IdServicio,
            TotalDestinos,
            destinos,
            TotalGenericos,
            Genericos,
            DMDespachador.ConexionDestino11,
            DMDespachador.claves11,
            DMDespachador.combinados11,
            DMDespachador.InsertarTTelefonia11,
            DMDespachador.InsertarTCorrespondencia11,
            DMDespachador.InsertarTTxCR11,
            DMDespachador.InsertarMasivoSMS11
            );
end;

procedure TPrincipal.Button12Click(Sender: TObject);
begin
ButtonClick(Sender,
            inttostr(jj),
            origenes[ii].Descripcion,
            RutaOrigen,
            origenes[ii].CarpetaTemporalIRI,
            origenes[ii].CarpetaTemporalContenidos,
            origenes[ii].Extension,
            origenes[ii].BDMasivo,
            origenes[ii].GuardarBDMasivos,
            origenes[ii].guardarMasivos,
            origenes[ii].BDTrazas,
            origenes[ii].GuardarBDTrazas,
            origenes[ii].guardartrazas,
            origenes[ii].FormatoIri,
            origenes[ii].FormaRxIri,
            origenes[ii].ServidorRxIRI,
            origenes[ii].UsuarioRxIRI,
            origenes[ii].PasswordRxIRI,
            origenes[ii].FormaRxContenidos,
            origenes[ii].ServidorRxContenidos,
            origenes[ii].UsuarioRxContenidos,
            origenes[ii].PasswordRxContenidos,
            origenes[ii].CarpetaContenidos,
            origenes[ii].IdServicio,
            TotalDestinos,
            destinos,
            TotalGenericos,
            Genericos,
            DMDespachador.ConexionDestino12,
            DMDespachador.claves12,
            DMDespachador.combinados12,
            DMDespachador.InsertarTTelefonia12,
            DMDespachador.InsertarTCorrespondencia12,
            DMDespachador.InsertarTTxCR12,
            DMDespachador.InsertarMasivoSMS12
            );
end;

procedure TPrincipal.Button13Click(Sender: TObject);
begin
ButtonClick(Sender,
            inttostr(jj),
            origenes[ii].Descripcion,
            RutaOrigen,
            origenes[ii].CarpetaTemporalIRI,
            origenes[ii].CarpetaTemporalContenidos,
            origenes[ii].Extension,
            origenes[ii].BDMasivo,
            origenes[ii].GuardarBDMasivos,
            origenes[ii].guardarMasivos,
            origenes[ii].BDTrazas,
            origenes[ii].GuardarBDTrazas,
            origenes[ii].guardartrazas,
            origenes[ii].FormatoIri,
            origenes[ii].FormaRxIri,
            origenes[ii].ServidorRxIRI,
            origenes[ii].UsuarioRxIRI,
            origenes[ii].PasswordRxIRI,
            origenes[ii].FormaRxContenidos,
            origenes[ii].ServidorRxContenidos,
            origenes[ii].UsuarioRxContenidos,
            origenes[ii].PasswordRxContenidos,
            origenes[ii].CarpetaContenidos,
            origenes[ii].IdServicio,
            TotalDestinos,
            destinos,
            TotalGenericos,
            Genericos,
            DMDespachador.ConexionDestino13,
            DMDespachador.claves13,
            DMDespachador.combinados13,
            DMDespachador.InsertarTTelefonia13,
            DMDespachador.InsertarTCorrespondencia13,
            DMDespachador.InsertarTTxCR13,
            DMDespachador.InsertarMasivoSMS13
            );
end;

procedure TPrincipal.Button14Click(Sender: TObject);
begin
ButtonClick(Sender,
             inttostr(jj),
            origenes[ii].Descripcion,
            RutaOrigen,
            origenes[ii].CarpetaTemporalIRI,
            origenes[ii].CarpetaTemporalContenidos,
            origenes[ii].Extension,
            origenes[ii].BDMasivo,
            origenes[ii].GuardarBDMasivos,
            origenes[ii].guardarMasivos,
            origenes[ii].BDTrazas,
            origenes[ii].GuardarBDTrazas,
            origenes[ii].guardartrazas,
            origenes[ii].FormatoIri,
            origenes[ii].FormaRxIri,
            origenes[ii].ServidorRxIRI,
            origenes[ii].UsuarioRxIRI,
            origenes[ii].PasswordRxIRI,
            origenes[ii].FormaRxContenidos,
            origenes[ii].ServidorRxContenidos,
            origenes[ii].UsuarioRxContenidos,
            origenes[ii].PasswordRxContenidos,
            origenes[ii].CarpetaContenidos,
            origenes[ii].IdServicio,
            TotalDestinos,
            destinos,
            TotalGenericos,
            Genericos,
            DMDespachador.ConexionDestino14,
            DMDespachador.claves14,
            DMDespachador.combinados14,
            DMDespachador.InsertarTTelefonia14,
            DMDespachador.InsertarTCorrespondencia14,
            DMDespachador.InsertarTTxCR14,
            DMDespachador.InsertarMasivoSMS14
            );
end;

procedure TPrincipal.Button15Click(Sender: TObject);
begin
ButtonClick(Sender,
            inttostr(jj),
            origenes[ii].Descripcion,
            RutaOrigen,
            origenes[ii].CarpetaTemporalIRI,
            origenes[ii].CarpetaTemporalContenidos,
            origenes[ii].Extension,
            origenes[ii].BDMasivo,
            origenes[ii].GuardarBDMasivos,
            origenes[ii].guardarMasivos,
            origenes[ii].BDTrazas,
            origenes[ii].GuardarBDTrazas,
            origenes[ii].guardartrazas,
            origenes[ii].FormatoIri,
            origenes[ii].FormaRxIri,
            origenes[ii].ServidorRxIRI,
            origenes[ii].UsuarioRxIRI,
            origenes[ii].PasswordRxIRI,
            origenes[ii].FormaRxContenidos,
            origenes[ii].ServidorRxContenidos,
            origenes[ii].UsuarioRxContenidos,
            origenes[ii].PasswordRxContenidos,
            origenes[ii].CarpetaContenidos,
            origenes[ii].IdServicio,
            TotalDestinos,
            destinos,
            TotalGenericos,
            Genericos,
            DMDespachador.ConexionDestino15,
            DMDespachador.claves15,
            DMDespachador.combinados15,
            DMDespachador.InsertarTTelefonia15,
            DMDespachador.InsertarTCorrespondencia15,
            DMDespachador.InsertarTTxCR15,
            DMDespachador.InsertarMasivoSMS15
            );
end;

procedure TPrincipal.Button16Click(Sender: TObject);
begin
ButtonClick(Sender,
            inttostr(jj),
            origenes[ii].Descripcion,
            RutaOrigen,
            origenes[ii].CarpetaTemporalIRI,
            origenes[ii].CarpetaTemporalContenidos,
            origenes[ii].Extension,
            origenes[ii].BDMasivo,
            origenes[ii].GuardarBDMasivos,
            origenes[ii].guardarMasivos,
            origenes[ii].BDTrazas,
            origenes[ii].GuardarBDTrazas,
            origenes[ii].guardartrazas,
            origenes[ii].FormatoIri,
            origenes[ii].FormaRxIri,
            origenes[ii].ServidorRxIRI,
            origenes[ii].UsuarioRxIRI,
            origenes[ii].PasswordRxIRI,
            origenes[ii].FormaRxContenidos,
            origenes[ii].ServidorRxContenidos,
            origenes[ii].UsuarioRxContenidos,
            origenes[ii].PasswordRxContenidos,
            origenes[ii].CarpetaContenidos,
            origenes[ii].IdServicio,
            TotalDestinos,
            destinos,
            TotalGenericos,
            Genericos,
            DMDespachador.ConexionDestino16,
            DMDespachador.claves16,
            DMDespachador.combinados16,
            DMDespachador.InsertarTTelefonia16,
            DMDespachador.InsertarTCorrespondencia16,
            DMDespachador.InsertarTTxCR16,
            DMDespachador.InsertarMasivoSMS16
            );
end;

procedure TPrincipal.Button1Click(Sender: TObject);
begin
ButtonClick(Sender,
            inttostr(jj),
            origenes[ii].Descripcion,
            RutaOrigen,
            origenes[ii].CarpetaTemporalIRI,
            origenes[ii].CarpetaTemporalContenidos,
            origenes[ii].Extension,
            origenes[ii].BDMasivo,
            origenes[ii].GuardarBDMasivos,
            origenes[ii].guardarMasivos,
            origenes[ii].BDTrazas,
            origenes[ii].GuardarBDTrazas,
            origenes[ii].guardartrazas,
            origenes[ii].FormatoIri,
            origenes[ii].FormaRxIri,
            origenes[ii].ServidorRxIRI,
            origenes[ii].UsuarioRxIRI,
            origenes[ii].PasswordRxIRI,
            origenes[ii].FormaRxContenidos,
            origenes[ii].ServidorRxContenidos,
            origenes[ii].UsuarioRxContenidos,
            origenes[ii].PasswordRxContenidos,
            origenes[ii].CarpetaContenidos,
            origenes[ii].IdServicio,
            TotalDestinos,
            destinos,
            TotalGenericos,
            Genericos,
            DMDespachador.ConexionDestino1,
            DMDespachador.claves1,
            DMDespachador.combinados1,
            DMDespachador.InsertarTTelefonia1,
            DMDespachador.InsertarTCorrespondencia1,
            DMDespachador.InsertarTTxCR1,
            DMDespachador.InsertarMasivoSMS1
            );
end;

procedure TPrincipal.Button2Click(Sender: TObject);
begin
ButtonClick(Sender,
            inttostr(jj),
            origenes[ii].Descripcion,
            RutaOrigen,
            origenes[ii].CarpetaTemporalIRI,
            origenes[ii].CarpetaTemporalContenidos,
            origenes[ii].Extension,
            origenes[ii].BDMasivo,
            origenes[ii].GuardarBDMasivos,
            origenes[ii].guardarMasivos,
            origenes[ii].BDTrazas,
            origenes[ii].GuardarBDTrazas,
            origenes[ii].guardartrazas,
            origenes[ii].FormatoIri,
            origenes[ii].FormaRxIri,
            origenes[ii].ServidorRxIRI,
            origenes[ii].UsuarioRxIRI,
            origenes[ii].PasswordRxIRI,
            origenes[ii].FormaRxContenidos,
            origenes[ii].ServidorRxContenidos,
            origenes[ii].UsuarioRxContenidos,
            origenes[ii].PasswordRxContenidos,
            origenes[ii].CarpetaContenidos,
            origenes[ii].IdServicio,
            TotalDestinos,
            destinos,
            TotalGenericos,
            Genericos,
            DMDespachador.ConexionDestino2,
            DMDespachador.claves2,
            DMDespachador.combinados2,
            DMDespachador.InsertarTTelefonia2,
            DMDespachador.InsertarTCorrespondencia2,
            DMDespachador.InsertarTTxCR2,
            DMDespachador.InsertarMasivoSMS2
            );
end;

procedure TPrincipal.Button3Click(Sender: TObject);
begin
ButtonClick(Sender,
            inttostr(jj),
            origenes[ii].Descripcion,
            RutaOrigen,
            origenes[ii].CarpetaTemporalIRI,
            origenes[ii].CarpetaTemporalContenidos,
            origenes[ii].Extension,
            origenes[ii].BDMasivo,
            origenes[ii].GuardarBDMasivos,
            origenes[ii].guardarMasivos,
            origenes[ii].BDTrazas,
            origenes[ii].GuardarBDTrazas,
            origenes[ii].guardartrazas,
            origenes[ii].FormatoIri,
            origenes[ii].FormaRxIri,
            origenes[ii].ServidorRxIRI,
            origenes[ii].UsuarioRxIRI,
            origenes[ii].PasswordRxIRI,
            origenes[ii].FormaRxContenidos,
            origenes[ii].ServidorRxContenidos,
            origenes[ii].UsuarioRxContenidos,
            origenes[ii].PasswordRxContenidos,
            origenes[ii].CarpetaContenidos,
            origenes[ii].IdServicio,
            TotalDestinos,
            destinos,
            TotalGenericos,
            Genericos,
            DMDespachador.ConexionDestino3,
            DMDespachador.claves3,
            DMDespachador.combinados3,
            DMDespachador.InsertarTTelefonia3,
            DMDespachador.InsertarTCorrespondencia3,
            DMDespachador.InsertarTTxCR3,
            DMDespachador.InsertarMasivoSMS3
            );
end;

procedure TPrincipal.Button4Click(Sender: TObject);
begin
ButtonClick(Sender,
            inttostr(jj),
            origenes[ii].Descripcion,
            RutaOrigen,
            origenes[ii].CarpetaTemporalIRI,
            origenes[ii].CarpetaTemporalContenidos,
            origenes[ii].Extension,
            origenes[ii].BDMasivo,
            origenes[ii].GuardarBDMasivos,
            origenes[ii].guardarMasivos,
            origenes[ii].BDTrazas,
            origenes[ii].GuardarBDTrazas,
            origenes[ii].guardartrazas,
            origenes[ii].FormatoIri,
            origenes[ii].FormaRxIri,
            origenes[ii].ServidorRxIRI,
            origenes[ii].UsuarioRxIRI,
            origenes[ii].PasswordRxIRI,
            origenes[ii].FormaRxContenidos,
            origenes[ii].ServidorRxContenidos,
            origenes[ii].UsuarioRxContenidos,
            origenes[ii].PasswordRxContenidos,
            origenes[ii].CarpetaContenidos,
            origenes[ii].IdServicio,
            TotalDestinos,
            destinos,
            TotalGenericos,
            Genericos,
            DMDespachador.ConexionDestino4,
            DMDespachador.claves4,
            DMDespachador.combinados4,
            DMDespachador.InsertarTTelefonia4,
            DMDespachador.InsertarTCorrespondencia4,
            DMDespachador.InsertarTTxCR4,
            DMDespachador.InsertarMasivoSMS4
            );
end;

procedure TPrincipal.Button5Click(Sender: TObject);
begin
ButtonClick(Sender,
             inttostr(jj),
            origenes[ii].Descripcion,
            RutaOrigen,
            origenes[ii].CarpetaTemporalIRI,
            origenes[ii].CarpetaTemporalContenidos,
            origenes[ii].Extension,
            origenes[ii].BDMasivo,
            origenes[ii].GuardarBDMasivos,
            origenes[ii].guardarMasivos,
            origenes[ii].BDTrazas,
            origenes[ii].GuardarBDTrazas,
            origenes[ii].guardartrazas,
            origenes[ii].FormatoIri,
            origenes[ii].FormaRxIri,
            origenes[ii].ServidorRxIRI,
            origenes[ii].UsuarioRxIRI,
            origenes[ii].PasswordRxIRI,
            origenes[ii].FormaRxContenidos,
            origenes[ii].ServidorRxContenidos,
            origenes[ii].UsuarioRxContenidos,
            origenes[ii].PasswordRxContenidos,
            origenes[ii].CarpetaContenidos,
            origenes[ii].IdServicio,
            TotalDestinos,
            destinos,
            TotalGenericos,
            Genericos,
            DMDespachador.ConexionDestino5,
            DMDespachador.claves5,
            DMDespachador.combinados5,
            DMDespachador.InsertarTTelefonia5,
            DMDespachador.InsertarTCorrespondencia5,
            DMDespachador.InsertarTTxCR5,
            DMDespachador.InsertarMasivoSMS5
            );
end;

procedure TPrincipal.Button6Click(Sender: TObject);
begin
ButtonClick(Sender,
             inttostr(jj),
            origenes[ii].Descripcion,
            RutaOrigen,
            origenes[ii].CarpetaTemporalIRI,
            origenes[ii].CarpetaTemporalContenidos,
            origenes[ii].Extension,
            origenes[ii].BDMasivo,
            origenes[ii].GuardarBDMasivos,
            origenes[ii].guardarMasivos,
            origenes[ii].BDTrazas,
            origenes[ii].GuardarBDTrazas,
            origenes[ii].guardartrazas,
            origenes[ii].FormatoIri,
            origenes[ii].FormaRxIri,
            origenes[ii].ServidorRxIRI,
            origenes[ii].UsuarioRxIRI,
            origenes[ii].PasswordRxIRI,
            origenes[ii].FormaRxContenidos,
            origenes[ii].ServidorRxContenidos,
            origenes[ii].UsuarioRxContenidos,
            origenes[ii].PasswordRxContenidos,
            origenes[ii].CarpetaContenidos,
            origenes[ii].IdServicio,
            TotalDestinos,
            destinos,
            TotalGenericos,
            Genericos,
            DMDespachador.ConexionDestino6,
            DMDespachador.claves6,
            DMDespachador.combinados6,
            DMDespachador.InsertarTTelefonia6,
            DMDespachador.InsertarTCorrespondencia6,
            DMDespachador.InsertarTTxCR6,
            DMDespachador.InsertarMasivoSMS6
            );
end;

procedure TPrincipal.Button7Click(Sender: TObject);
begin
ButtonClick(Sender,
            inttostr(jj),
            origenes[ii].Descripcion,
            RutaOrigen,
            origenes[ii].CarpetaTemporalIRI,
            origenes[ii].CarpetaTemporalContenidos,
            origenes[ii].Extension,
            origenes[ii].BDMasivo,
            origenes[ii].GuardarBDMasivos,
            origenes[ii].guardarMasivos,
            origenes[ii].BDTrazas,
            origenes[ii].GuardarBDTrazas,
            origenes[ii].guardartrazas,
            origenes[ii].FormatoIri,
            origenes[ii].FormaRxIri,
            origenes[ii].ServidorRxIRI,
            origenes[ii].UsuarioRxIRI,
            origenes[ii].PasswordRxIRI,
            origenes[ii].FormaRxContenidos,
            origenes[ii].ServidorRxContenidos,
            origenes[ii].UsuarioRxContenidos,
            origenes[ii].PasswordRxContenidos,
            origenes[ii].CarpetaContenidos,
            origenes[ii].IdServicio,
            TotalDestinos,
            destinos,
            TotalGenericos,
            Genericos,
            DMDespachador.ConexionDestino7,
            DMDespachador.claves7,
            DMDespachador.combinados7,
            DMDespachador.InsertarTTelefonia7,
            DMDespachador.InsertarTCorrespondencia7,
            DMDespachador.InsertarTTxCR7,
            DMDespachador.InsertarMasivoSMS7
            );
end;

procedure TPrincipal.Button8Click(Sender: TObject);
begin
ButtonClick(Sender,
             inttostr(jj),
            origenes[ii].Descripcion,
            RutaOrigen,
            origenes[ii].CarpetaTemporalIRI,
            origenes[ii].CarpetaTemporalContenidos,
            origenes[ii].Extension,
            origenes[ii].BDMasivo,
            origenes[ii].GuardarBDMasivos,
            origenes[ii].guardarMasivos,
            origenes[ii].BDTrazas,
            origenes[ii].GuardarBDTrazas,
            origenes[ii].guardartrazas,
            origenes[ii].FormatoIri,
            origenes[ii].FormaRxIri,
            origenes[ii].ServidorRxIRI,
            origenes[ii].UsuarioRxIRI,
            origenes[ii].PasswordRxIRI,
            origenes[ii].FormaRxContenidos,
            origenes[ii].ServidorRxContenidos,
            origenes[ii].UsuarioRxContenidos,
            origenes[ii].PasswordRxContenidos,
            origenes[ii].CarpetaContenidos,
            origenes[ii].IdServicio,
            TotalDestinos,
            destinos,
            TotalGenericos,
            Genericos,
            DMDespachador.ConexionDestino8,
            DMDespachador.claves8,
            DMDespachador.combinados8,
            DMDespachador.InsertarTTelefonia8,
            DMDespachador.InsertarTCorrespondencia8,
            DMDespachador.InsertarTTxCR8,
            DMDespachador.InsertarMasivoSMS8
            );
end;

procedure TPrincipal.Button9Click(Sender: TObject);
begin
ButtonClick(Sender,
            inttostr(jj),
            origenes[ii].Descripcion,
            RutaOrigen,
            origenes[ii].CarpetaTemporalIRI,
            origenes[ii].CarpetaTemporalContenidos,
            origenes[ii].Extension,
            origenes[ii].BDMasivo,
            origenes[ii].GuardarBDMasivos,
            origenes[ii].guardarMasivos,
            origenes[ii].BDTrazas,
            origenes[ii].GuardarBDTrazas,
            origenes[ii].guardartrazas,
            origenes[ii].FormatoIri,
            origenes[ii].FormaRxIri,
            origenes[ii].ServidorRxIRI,
            origenes[ii].UsuarioRxIRI,
            origenes[ii].PasswordRxIRI,
            origenes[ii].FormaRxContenidos,
            origenes[ii].ServidorRxContenidos,
            origenes[ii].UsuarioRxContenidos,
            origenes[ii].PasswordRxContenidos,
            origenes[ii].CarpetaContenidos,
            origenes[ii].IdServicio,
            TotalDestinos,
            destinos,
            TotalGenericos,
            Genericos,
            DMDespachador.ConexionDestino9,
            DMDespachador.claves9,
            DMDespachador.combinados9,
            DMDespachador.InsertarTTelefonia9,
            DMDespachador.InsertarTCorrespondencia9,
            DMDespachador.InsertarTTxCR9,
            DMDespachador.InsertarMasivoSMS9
            );
end;

procedure TPrincipal.Configuracin1Click(Sender: TObject);
begin
 try
  ConfigServicios.showmodal;
  Putsettings;
  GetSettings;
 except
 end;

end;

procedure TPrincipal.FormActivate(Sender: TObject);
begin
GetSettings;
end;

procedure TPrincipal.FormCreate(Sender: TObject);
begin
IniFileName := 'DespRETO.ini' ;

end;

function TPrincipal.conviertePassword(passw:string):string;
var
  p:string;
  i: integer;
  c: char;
begin
if Length(passw)>=4 then
begin
c:=char(chr(ord(passw[2])-1));
passw[2]:=char(chr(ord(passw[1])-1));
passw[1]:=c;
c:=char(chr(ord(passw[length(passw)])-1));
passw[length(passw)]:=char(chr(ord(passw[length(passw)-1])-1));
passw[length(passw)-1]:=c;

p:='';
for i:=length(passw) downto 1 do
   p:=p+passw[i];
end
else
begin
ShowMessage('El password debe tener 4 o más caracteres...Seteado automáticamente a 123456');
p:='123456';
end;
result:=p;
end;

function TPrincipal.encriptaPassword(passw:string):string;
var
  p:string;
  i: integer;
  c: char;
begin
if Length(passw)<4 then
begin
ShowMessage('El password debe tener 4 o más caracteres...Seteado automáticamente a 123456');
passw:='123456';
end;
c:=char(chr(Ord(passw[2])+1));
passw[2]:=char(chr(ord(passw[1])+1));
passw[1]:=c;
c:=char(chr(ord(passw[length(passw)])+1));
passw[length(passw)]:=char(chr(ord(passw[length(passw)-1])+1));
passw[length(passw)-1]:=c;

p:='';
for i:=length(passw) downto 1 do
   p:=p+passw[i];
result:=p;
end;


procedure TPrincipal.GuardoDatosdelOrigen(index : word);
begin
  origenes[index].IdOrigen := DMDespachador.origenessrc.DataSet.FieldByName('IdOrigen').asInteger;
  origenes[index].Descripcion :=  DMDespachador.origenessrc.DataSet.FieldByName('Descripcion').asString;
  origenes[index].Compactados :=  DMDespachador.origenessrc.DataSet.FieldByName('Compactados').asBoolean;
  origenes[index].ServidorRxIRI :=  DMDespachador.origenessrc.DataSet.FieldByName('ServidorRxIri').asString;
  origenes[index].UsuarioRxIRI :=  DMDespachador.origenessrc.DataSet.FieldByName('UsuarioRxIri').asString;
  origenes[index].PasswordRxIRI :=  DMDespachador.origenessrc.DataSet.FieldByName('PasswordRxiri').asString;
  origenes[index].CarpetaIRI :=  DMDespachador.origenessrc.DataSet.FieldByName('carpetaIri').asString;
  if origenes[index].CarpetaIRI[length(origenes[index].CarpetaIRI)]<>'\' then
     origenes[index].CarpetaIRI:=origenes[index].CarpetaIRI+'\';
  origenes[index].TimeOutIRI :=  DMDespachador.origenessrc.DataSet.FieldByName('TimeoutIri').asInteger;
  origenes[index].ServidorRxContenidos :=  DMDespachador.origenessrc.DataSet.FieldByName('ServidorRxContenidos').asString;
  origenes[index].PasswordRxContenidos :=  DMDespachador.origenessrc.DataSet.FieldByName('PasswordRxContenidos').asString;
  origenes[index].UsuarioRxContenidos :=  DMDespachador.origenessrc.DataSet.FieldByName('UsuariorxContenidos').asString;
  origenes[index].CarpetaContenidos :=  DMDespachador.origenessrc.DataSet.FieldByName('carpetaContenidos').asString;
  origenes[index].GeneraAvisos :=  DMDespachador.origenessrc.DataSet.FieldByName('GeneraAvisos').asBoolean;
  origenes[index].CantidadFicheros := DMDespachador.origenessrc.DataSet.FieldByName('CantidadFicheros').asInteger;
  origenes[index].CantidadFicherosAviso :=  DMDespachador.origenessrc.DataSet.FieldByName('CantidadFicherosAviso').asInteger;
  origenes[index].CantidadFicherosLimite :=  DMDespachador.origenessrc.DataSet.FieldByName('CantidadFicherosLimite').asInteger;
  origenes[index].FormatoCompactados :=  DMDespachador.origenessrc.DataSet.FieldByName('FormatoCompactados').asString;
  origenes[index].ExtensionCompactados :=  DMDespachador.origenessrc.DataSet.FieldByName('ExtensionCompactados').asString;
  origenes[index].FormaRxIRI :=  DMDespachador.origenessrc.DataSet.FieldByName('FormaRxIri').asString;
  origenes[index].FormaRxContenidos :=  DMDespachador.origenessrc.DataSet.FieldByName('FormaRxContenidos').asString;
  origenes[index].CarpetaTemporalIRI := DMDespachador.origenessrc.DataSet.FieldByName('carpetaTemporalIri').asString;
  if origenes[index].CarpetaTemporalIRI[length(origenes[index].CarpetaTemporalIRI)]<>'\' then
     origenes[index].CarpetaTemporalIRI:=origenes[index].CarpetaTemporalIRI+'\';
  origenes[index].CarpetaTemporalContenidos :=  DMDespachador.origenessrc.DataSet.FieldByName('carpetaTemporalContenidos').asString;
  if origenes[index].CarpetaTemporalContenidos[length(origenes[index].CarpetaTemporalContenidos)]<>'\' then
     origenes[index].CarpetaTemporalContenidos:=origenes[index].CarpetaTemporalContenidos+'\';
  origenes[index].IdServicio := DMDespachador.origenessrc.DataSet.FieldByName('idServicio').asInteger;
  origenes[index].Servicio := DMDespachador.origenessrc.DataSet.FieldByName('Servicio').asString;
  origenes[index].Extension := DMDespachador.origenessrc.DataSet.FieldByName('extension').asString;
  origenes[index].BDMasivo := DMDespachador.origenessrc.DataSet.FieldByName('Bdmasivo').asString;
  origenes[index].GuardarBDMasivos := DMDespachador.origenessrc.DataSet.FieldByName('GuardarBdmasivos').asBoolean;
  origenes[index].GuardarMasivos := DMDespachador.origenessrc.DataSet.FieldByName('Guardarmasivos').asBoolean;
  origenes[index].BDTrazas := DMDespachador.origenessrc.DataSet.FieldByName('Bdtrazas').asString;
  origenes[index].GuardarBDTrazas := DMDespachador.origenessrc.DataSet.FieldByName('GuardarBdtrazas').asBoolean;
  origenes[index].GuardarTrazas := DMDespachador.origenessrc.DataSet.FieldByName('Guardartrazas').asBoolean;
  origenes[index].TablaContenidos := DMDespachador.origenessrc.DataSet.FieldByName('carpetaContenidos').asString;
  origenes[index].FormatoIRI := DMDespachador.origenessrc.DataSet.FieldByName('FormatoIri').asString;
  origenes[index].NumeroServicio := DMDespachador.origenessrc.DataSet.FieldByName('NumeroServicio').asInteger;
  origenes[index].GrupoServicio := DMDespachador.origenessrc.DataSet.FieldByName('GrupoServicio').asString;
  AddLogText ( ' '+ origenes[index].Descripcion);
end;

procedure TPrincipal.GuardoDatosdelDestino(index : word);
begin
  destinos[index].idDestino := DMDespachador.destinossrc.DataSet.FieldByName('idDestino').asInteger;
  destinos[index].Descripcion := DMDespachador.destinossrc.DataSet.FieldByName('Descripcion').asString;
  destinos[index].ServidorBD := DMDespachador.destinossrc.DataSet.FieldByName('ServidorBd').asString;
  destinos[index].PuertoBD := DMDespachador.destinossrc.DataSet.FieldByName('PuertoBD').asInteger;
  destinos[index].UsuarioBD := DMDespachador.destinossrc.DataSet.FieldByName('UsuarioBD').asString;
  destinos[index].PasswordBD := DMDespachador.destinossrc.DataSet.FieldByName('PasswordBD').asString;
  destinos[index].Master := DMDespachador.destinossrc.DataSet.FieldByName('Master').AsBoolean;
  destinos[index].ServidorTxIRI:= DMDespachador.destinossrc.DataSet.FieldByName('ServidorTxIri').asString;
  destinos[index].PuertoTxIRI := DMDespachador.destinossrc.DataSet.FieldByName('PuertoTxIri').asInteger;
  destinos[index].UsuarioTxIRI := DMDespachador.destinossrc.DataSet.FieldByName('UsuarioTxIri').asString;
  destinos[index].PasswordTxIRI := DMDespachador.destinossrc.DataSet.FieldByName('PasswordTxIri').asString;
  destinos[index].CarpetaIRI := DMDespachador.destinossrc.DataSet.FieldByName('CarpetaIri').asString;
  if destinos[index].CarpetaIRI[length(destinos[index].CarpetaIRI)]<>'\' then
     destinos[index].CarpetaIRI:=destinos[index].CarpetaIRI+'\';
  destinos[index].ServidorTxContenidos := DMDespachador.destinossrc.DataSet.FieldByName('ServidorTxContenidos').asString;
  destinos[index].PuertoTxContenidos := DMDespachador.destinossrc.DataSet.FieldByName('PuertoTxContenidos').asInteger;
  destinos[index].UsuarioTxContenidos := DMDespachador.destinossrc.DataSet.FieldByName('UsuarioTxContenidos').asString;
  destinos[index].PasswordTxContenidos := DMDespachador.destinossrc.DataSet.FieldByName('PasswordTxContenidos').asString;
  destinos[index].CarpetaContenidos := DMDespachador.destinossrc.DataSet.FieldByName('CarpetaContenidos').asString;
  if destinos[index].CarpetaContenidos[length(destinos[index].CarpetaContenidos)]<>'\' then
     destinos[index].CarpetaContenidos:=destinos[index].CarpetaContenidos+'\';
  destinos[index].Compactados := DMDespachador.destinossrc.DataSet.FieldByName('Compactados').asBoolean;
  destinos[index].CantidadIRIenZIP := DMDespachador.destinossrc.DataSet.FieldByName('CantidadIrienZip').asInteger;
  destinos[index].FormatoCompactados := DMDespachador.destinossrc.DataSet.FieldByName('FormatoCompactados').asString;
  destinos[index].ExtensionCompactados := DMDespachador.destinossrc.DataSet.FieldByName('ExtensionCompactados').asString;
  destinos[index].Zona := DMDespachador.destinossrc.DataSet.FieldByName('Zona').asString;
  destinos[index].Autoridad := DMDespachador.destinossrc.DataSet.FieldByName('Autoridad').asString;
  destinos[index].TipodeAutoridad := DMDespachador.destinossrc.DataSet.FieldByName('TipodeAutoridad').asString;
  destinos[index].GuardarRequerimientos :=  DMDespachador.destinossrc.DataSet.FieldByName('GuardarRequerimientos').asBoolean;
  destinos[index].GuardarMasivos :=  DMDespachador.destinossrc.DataSet.FieldByName('GuardarMasivos').asBoolean;
  destinos[index].carpetaMasivos :=  DMDespachador.destinossrc.DataSet.FieldByName('CarpetaMasivos').asString;
  if destinos[index].carpetaMasivos[length(destinos[index].carpetaMasivos)]<>'\' then
     destinos[index].carpetaMasivos:=destinos[index].carpetaMasivos+'\';
  destinos[index].GuardarTrazas :=  DMDespachador.destinossrc.DataSet.FieldByName('GuardarTrazas').asBoolean;
  destinos[index].GuardarEstudios :=  DMDespachador.destinossrc.DataSet.FieldByName('Guardarestudios').asBoolean;
  destinos[index].carpetaEstudios :=  DMDespachador.destinossrc.DataSet.FieldByName('CarpetaEstudios').asString;
  if destinos[index].carpetaEstudios[length(destinos[index].carpetaEstudios)]<>'\' then
     destinos[index].carpetaEstudios:=destinos[index].carpetaEstudios+'\';
  destinos[index].Guardarestadisticas :=  DMDespachador.destinossrc.DataSet.FieldByName('GuardarEstadisticas').asBoolean;
  destinos[index].GuardarBDRequerimientos :=  DMDespachador.destinossrc.DataSet.FieldByName('GuardarBDRequerimientos').asBoolean;
  destinos[index].GuardarBDEstudios :=  DMDespachador.destinossrc.DataSet.FieldByName('GuardarBDestudios').asBoolean;
  destinos[index].GuardarBDestadisticas :=  DMDespachador.destinossrc.DataSet.FieldByName('GuardarBDEstadisticas').asBoolean;
  destinos[index].FormaTxIRI := DMDespachador.destinossrc.DataSet.FieldByName('FormaTxIri').asString;
  destinos[index].FormaTxContenidos := DMDespachador.destinossrc.DataSet.FieldByName('FormaTxContenidos').asString;
  destinos[index].claveMenor := DMDespachador.destinossrc.DataSet.FieldByName('clavemenor').asInteger;
  destinos[index].claveMayor := DMDespachador.destinossrc.DataSet.FieldByName('clavemayor').asInteger;
  AddLogtext (' '+ destinos[index].Descripcion);
end;


procedure TPrincipal.GuardoDatosdelosGenericos(index : word);
begin
  genericos[index].guardarGenericos := DMDespachador.genericossrc.DataSet.FieldByName('GuardarGenericos').asBoolean;
  genericos[index].FormaTxGenericos := DMDespachador.genericossrc.DataSet.FieldByName('FormaTxGenericos').asString;
  genericos[index].genericosHost := DMDespachador.genericossrc.DataSet.FieldByName('ServidorTxGenericos').asString;
  genericos[index].genericosUsuario := DMDespachador.genericossrc.DataSet.FieldByName('UsuarioTxGenericos').asString;
  genericos[index].genericosPuerto := DMDespachador.genericossrc.DataSet.FieldByName('PuertoTxGenericos').asInteger;
  genericos[index].genericosPassword := DMDespachador.genericossrc.DataSet.FieldByName('PasswordTxGenericos').asString;
  genericos[index].RutaGenericos := DMDespachador.genericossrc.DataSet.FieldByName('CarpetaGenericos').asString;
  AddLogtext(' '+ genericos[index].RutaGenericos);
end;

procedure TPrincipal.GetSettings ;
var
    IniFile: TMemIniFile ;
    section: string ;
    i: integer;
    OK: boolean;
    j: integer;
    k: integer;
begin
OK:=true;
    if NOT FileExists(IniFileName,true) then exit ;
    try
        IniFile := TMemIniFile.Create(IniFileName) ;
    except
        ShowMessage(' No se encuentra el fichero de parametros: '+Inifilename);
        Application.Terminate ;
    end ;
try // finally

with IniFile do
  begin

  Section:='DESPACHADOR-RETO';
  for j := 0  to 15 do
      case j of
        0: begin
           LblT1.Visible:=false;
           Button1.Visible:=false;
           Button1.ShowHint:=false;
           Button1.Hint:='\';
           LblT1.Caption:='';
           end;
        1: begin
           LblT2.Visible:=false;
           Button2.Visible:=false;
           Button2.ShowHint:=false;
           Button2.Hint:='\';
           LblT2.Caption:='';
           end;
        2: begin
           LblT3.Visible:=false;
           Button3.Visible:=false;
           Button3.ShowHint:=false;
           Button3.Hint:='\';
           LblT3.Caption:='';
           end;
        3: begin
           LblT4.Visible:=false;
           Button4.Visible:=false;
           Button4.ShowHint:=false;
           Button4.Hint:='\';
           LblT4.Caption:='';
           end;
        4: begin
           LblT5.Visible:=false;
           Button5.Visible:=false;
           Button5.ShowHint:=false;
           Button5.Hint:='\';
           LblT5.Caption:='';
           end;
        5: begin
           LblT6.Visible:=false;
           Button6.Visible:=false;
           Button6.ShowHint:=false;
           Button6.Hint:='\';
           LblT6.Caption:='';
           end;
        6: begin
           LblT7.Visible:=false;
           Button7.Visible:=false;
           Button7.ShowHint:=false;
           Button7.Hint:='\';
           LblT7.Caption:='';
           end;
        7: begin
           LblT8.Visible:=false;
           Button8.Visible:=false;
           Button8.ShowHint:=false;
           Button8.Hint:='\';
           LblT8.Caption:='';
           end;
        8: begin
           LblT9.Visible:=false;
           Button9.Visible:=false;
           Button9.ShowHint:=false;
           Button9.Hint:='\';
           LblT9.Caption:='';
           end;
        9: begin
           LblT10.Visible:=false;
           Button10.Visible:=false;
           Button10.ShowHint:=false;
           Button10.Hint:='\';
           LblT10.Caption:='';
           end;
        10: begin
           LblT11.Visible:=false;
           Button11.Visible:=false;
           Button11.ShowHint:=false;
           Button11.Hint:='\';
           LblT11.Caption:='';
          end;
        11: begin
           LblT12.Visible:=false;
           Button12.Visible:=false;
           Button12.ShowHint:=false;
           Button12.Hint:='\';
           LblT12.Caption:='';
           end;
        12: begin
           LblT13.Visible:=false;
           Button13.Visible:=false;
           Button13.ShowHint:=false;
           Button13.Hint:='\';
           LblT13.Caption:='';
           end;
        13: begin
           LblT14.Visible:=false;
           Button14.Visible:=false;
           Button14.ShowHint:=false;
           Button14.Hint:='\';
           LblT14.Caption:='';
           end;
        14: begin
           LblT15.Visible:=false;
           Button15.Visible:=false;
           Button15.ShowHint:=false;
           Button15.Hint:='\';
           LblT15.Caption:='';
           end;
        15: begin
           LblT16.Visible:=false;
           Button16.Visible:=false;
           Button16.ShowHint:=false;
           Button16.Hint:='\';
           LblT16.Caption:='';
           end;
      end;
  configServicios.edtIdDespachador.Text := ReadString (section, 'DespRETO_IdDespachador', '000') ;
  Nombredespachador:= configServicios.edtIdDespachador.Text;
  configServicios.edtHostKD.Text := ReadString (section, 'DespRETO_HostGlobal', 'LocalHost') ;
  configServicios.edtPuertoKD.Text := ReadString (section, 'DespRETO_PuertoGlobal', '3306') ;
  configServicios.edtUsuarioKD.Text := ReadString (section, 'DespRETO_UsuarioGlobal', 'root') ;
  configServicios.edtPasswordKD.Text := ConviertePassword(ReadString (section, 'DespRETO_PasswordGlobal', 'yqswodnxj')) ;
  if DMDespachador.global.Connected then  DMDespachador.global.Close;
  DMDespachador.global.Server:= configServicios.edtHostKD.Text;
  DMDespachador.global.Username:= configServicios.edtusuarioKD.Text;
  DMDespachador.global.Port:= strtoint(configServicios.edtPuertoKD.Text);
  DMDespachador.global.Password:= configServicios.edtPasswordKD.Text;
  try
   DMDespachador.global.Connect;

     DMDespachador.OrigenesProc.Close;
     DMDespachador.OrigenesProc.ParamByName('NombreDespachador').AsString := NombreDespachador;
     DMDespachador.OrigenesProc.ExecProc;
     DMDespachador.DestinosProc.Close;
     DMDespachador.DestinosProc.ParamByName('NombreDespachador').AsString := NombreDespachador;
     DMDespachador.DestinosProc.ExecProc;
     DMDespachador.GenericosProc.Close;
     DMDespachador.GenericosProc.ParamByName('NombreDespachador').AsString := NombreDespachador;
     DMDespachador.GenericosProc.ExecProc;


     ///// Origenes
     DMDespachador.OrigenesSrc.DataSet.First;
     TotalOrigenes := DMDespachador.OrigenesSrc.DataSet.RecordCount;
     AddLogtext ( 'Origenes ');
     for i := 0 to TotalOrigenes-1 do
     begin
       GuardoDatosdelOrigen(i);
       DMDespachador.OrigenesSrc.DataSet.Next;
     end;
     DMDespachador.OrigenesSrc.DataSet.First;


     ///// Destinos
     DMDespachador.DestinosSrc.DataSet.First;
     TotalDestinos := DMDespachador.DestinosSrc.DataSet.RecordCount;
     AddLogText ( 'Destinos ');
     for i := 0 to TotalDestinos-1 do
     begin
       GuardoDatosdelDestino(i);
       DMDespachador.DestinosSrc.DataSet.Next;
     end;
     DMDespachador.DestinosSrc.DataSet.First;

     ///// Genericos
     DMDespachador.GenericosSrc.DataSet.First;
     TotalGenericos := DMDespachador.GenericosSrc.DataSet.RecordCount;
     AddLogText ( 'Genericos ');
     for i := 0 to TotalGenericos-1 do
     begin
       GuardoDatosdelosgenericos(i);
       DMDespachador.GenericosSrc.DataSet.Next;
     end;
     DMDespachador.GenericosSrc.DataSet.First;

  jj:=0;
  for ii :=0  to TotalOrigenes -1 do
     begin
     if jj<16 then
       begin
       RutaOrigen:=origenes[ii].CarpetaIRI;
        case jj of
        0: begin
           LblT1.visible:=true;
           LblT1.ShowHint:=true;
           LblT1.Hint:= RutaOrigen+'*'+origenes[ii].Extension;
           lblT1.Caption:=origenes[ii].Descripcion+' '+origenes[ii].Servicio;
           Button1.visible:=true;
           Button1.ShowHint:=true;
           Button1.Hint:=LblT1.Hint;
           AddLogText(LblT1.Hint);
           end;
        1: begin
           LblT2.visible:=true;
           LblT2.ShowHint:=true;
           LblT2.Hint:= RutaOrigen+'*'+origenes[ii].Extension;
           lblT2.Caption:=origenes[ii].Descripcion+' '+origenes[ii].Servicio;
           Button2.visible:=true;
           Button2.ShowHint:=true;
           Button2.Hint:=LblT2.Hint;
           AddLogText(LblT2.Hint);
           end;
        2: begin
           LblT3.visible:=true;
           LblT3.ShowHint:=true;
           LblT3.Hint:= RutaOrigen+'*'+origenes[ii].Extension;
           lblT3.Caption:=origenes[ii].Descripcion+' '+origenes[ii].Servicio;
           Button3.visible:=true;
           Button3.ShowHint:=true;
           Button3.Hint:=LblT3.Hint;
           AddLogText(LblT3.Hint);
           end;
        3: begin
           LblT4.visible:=true;
           LblT4.ShowHint:=true;
           LblT4.Hint:= RutaOrigen+'*'+origenes[ii].Extension;
           lblT4.Caption:=origenes[ii].Descripcion+' '+origenes[ii].Servicio;
           Button4.visible:=true;
           Button4.ShowHint:=true;
           Button4.Hint:=LblT4.Hint;
           AddLogText(LblT4.Hint);
           end;
        4: begin
           LblT5.visible:=true;
           LblT5.ShowHint:=true;
           LblT5.Hint:= RutaOrigen+'*'+origenes[ii].Extension;
           lblT5.Caption:=origenes[ii].Descripcion+' '+origenes[ii].Servicio;
           Button5.visible:=true;
           Button5.ShowHint:=true;
           Button5.Hint:=LblT5.Hint;
           AddLogText(LblT5.Hint);
           end;
        5: begin
           LblT6.visible:=true;
           LblT6.ShowHint:=true;
           LblT6.Hint:= RutaOrigen+'*'+origenes[ii].Extension;
           lblT6.Caption:=origenes[ii].Descripcion+' '+origenes[ii].Servicio;
           Button6.visible:=true;
           Button6.ShowHint:=true;
           Button6.Hint:=LblT6.Hint;
           AddLogText(LblT6.Hint);
           end;
        6: begin
           LblT7.visible:=true;
           LblT7.ShowHint:=true;
           LblT7.Hint:= RutaOrigen+'*'+origenes[ii].Extension;
           lblT7.Caption:=origenes[ii].Descripcion+' '+origenes[ii].Servicio;
           Button7.visible:=true;
           Button7.ShowHint:=true;
           Button7.Hint:=LblT7.Hint;
          AddLogText(LblT7.Hint);
           end;
        7: begin
           LblT8.visible:=true;
           LblT8.ShowHint:=true;
           LblT8.Hint:= RutaOrigen+'*'+origenes[ii].Extension;
           lblT8.Caption:=origenes[ii].Descripcion+' '+origenes[ii].Servicio;
           Button8.visible:=true;
           Button8.ShowHint:=true;
           Button8.Hint:=LblT8.Hint;
           AddLogText(LblT8.Hint);
           end;
        8: begin
           LblT9.visible:=true;
           LblT9.ShowHint:=true;
           LblT9.Hint:= RutaOrigen+'*'+origenes[ii].Extension;
           lblT9.Caption:=origenes[ii].Descripcion+' '+origenes[ii].Servicio;
           Button9.visible:=true;
           Button9.ShowHint:=true;
           Button9.Hint:=LblT9.Hint;
           AddLogText(LblT9.Hint);
           end;
        9: begin
           LblT10.visible:=true;
           LblT10.ShowHint:=true;
           LblT10.Hint:= RutaOrigen+'*'+origenes[ii].Extension;
           lblT10.Caption:=origenes[ii].Descripcion+' '+origenes[ii].Servicio;
           Button10.visible:=true;
           Button10.ShowHint:=true;
           Button10.Hint:=LblT10.Hint;
           AddLogText(LblT10.Hint);
           end;
        10: begin
           LblT11.visible:=true;
           LblT11.ShowHint:=true;
           LblT11.Hint:= RutaOrigen+'*'+origenes[ii].Extension;
           lblT11.Caption:=origenes[ii].Descripcion+' '+origenes[ii].Servicio;
           Button11.visible:=true;
           Button11.ShowHint:=true;
           Button11.Hint:=LblT11.Hint;
          AddLogText(LblT11.Hint);
           end;
        11: begin
           LblT12.visible:=true;
           LblT12.ShowHint:=true;
           LblT12.Hint:= RutaOrigen+'*'+origenes[ii].Extension;
           lblT12.Caption:=origenes[ii].Descripcion+' '+origenes[ii].Servicio;
           Button12.visible:=true;
           Button12.ShowHint:=true;
           Button12.Hint:=LblT12.Hint;
           AddLogText(LblT12.Hint);
           end;
        12: begin
           LblT13.visible:=true;
           LblT13.ShowHint:=true;
           LblT13.Hint:= RutaOrigen+'*'+origenes[ii].Extension;
           lblT13.Caption:=origenes[ii].Descripcion+' '+origenes[ii].Servicio;
           Button13.visible:=true;
           Button13.ShowHint:=true;
           Button13.Hint:=LblT13.Hint;
           AddLogText(LblT13.Hint);
           end;
        13: begin
           LblT14.visible:=true;
           LblT14.ShowHint:=true;
           Button14.Hint:= RutaOrigen+'*'+origenes[ii].Extension;
           lblT14.Caption:=origenes[ii].Descripcion+' '+origenes[ii].Servicio;
           Button14.visible:=true;
           Button14.ShowHint:=true;
           Button14.Hint:=LblT14.Hint;
           AddLogText(LblT14.Hint);
           end;
        14: begin
           LblT15.visible:=true;
           LblT15.ShowHint:=true;
           LblT15.Hint:= RutaOrigen+'*'+origenes[ii].Extension;
           lblT15.Caption:=origenes[ii].Descripcion+' '+origenes[ii].Servicio;
           Button15.visible:=true;
           Button15.ShowHint:=true;
           Button15.Hint:=LblT15.Hint;
           AddLogText(LblT15.Hint);
           end;
        15: begin
           LblT16.visible:=true;
           LblT16.ShowHint:=true;
           LblT16.Hint:= RutaOrigen+'*'+origenes[ii].Extension;
           lblT16.Caption:=origenes[ii].Descripcion+' '+origenes[ii].Servicio;
           Button16.visible:=true;
           Button16.ShowHint:=true;
           Button16.Hint:=LblT16.Hint;
           AddLogText(LblT16.Hint);
           end;
        end;
       inc(jj);
       end;
      end;

  except
  ShowMessage('No se puede conectar a la Base de datos Global en Server: '+configServicios.edtHostKD.Text);
  OK:=false;
  end;
  end ;
  finally
     IniFile.Free ;
  end ;
if not OK then Application.Terminate;

end ;

procedure TPrincipal.PutSettings ;
var
    IniFile: TMemIniFile ;
    section: string ;
begin
    try

        IniFile := TMemIniFile.Create (IniFileName) ;
    except
        exit ;
    end ;
try // finally
 with IniFile do
  begin
  Section:='DESPACHADOR-RETO';
   WriteString (section, 'DespRETO_IdDespachador', configServicios.edtIdDespachador.Text) ;
   WriteString (section, 'DespRETO_HostGlobal', configServicios.edtHostKD.Text) ;
   WriteString (section, 'DespRETO_PuertoGlobal', configServicios.edtPuertoKD.Text) ;
   WriteString (section, 'DespRETO_UsuarioGlobal', configServicios.edtUsuarioKD.Text) ;
   WriteString (section, 'DespRETO_PasswordGlobal', EncriptaPassword(configServicios.edtPasswordKD.Text)) ;
  end;
 finally
   IniFile.UpdateFile ;
   IniFile.Free ;
 end ;

end ;

procedure TPrincipal.AddLogText (S: Unicodestring) ;
begin
    if Application.Terminated then exit ;
    if Memo.Items.Count>1000 then  Memo.Items.Clear;

    S := FormatDateTime(LongTimeMask, Now) + SPACE + S ;
    Memo.Items.Add (S) ;   // general unformatted comments about xfers
end ;

procedure TPrincipal.minimizar1Click(Sender: TObject);
begin
Application.Minimize;
end;

procedure TPrincipal.salir1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TPrincipal.SpeedButton1Click(Sender: TObject);
begin
if Configuracin1.Enabled then
  begin
  Configuracin1.Enabled:=false;
  Iniciar1.Caption:='&Detener todas';
  SpeedButton1.Caption:= '&Detener todas';
  AddLogText('Comenzado '+ DateTimeToStr(Now));
  jj:=0;
  for ii :=0  to TotalOrigenes -1 do
     begin
     if jj<16 then
       begin
       RutaOrigen:=origenes[ii].CarpetaIRI;
       if RutaOrigen[length(RutaOrigen)]<>'\' then
          RutaOrigen:=RutaOrigen+'\';
        case jj of
        0: begin
           if LblT1.visible then Button1.Click;
           end;
        1: begin
           if LblT2.visible then Button2.Click;
           end;
        2: begin
           if LblT3.visible then Button3.Click;
           end;
        3: begin
           if LblT4.visible then Button4.Click;
           end;
        4: begin
           if LblT5.visible then Button5.Click;
           end;
        5: begin
           if LblT6.visible then Button6.Click;
           end;
        6: begin
           if LblT7.visible then Button7.Click;
           end;
        7: begin
           if LblT8.visible then Button8.Click;
           end;
        8: begin
           if LblT9.visible then Button9.Click;
           end;
        9: begin
           if LblT10.visible then Button10.Click;
           end;
        10: begin
           if LblT11.visible then Button11.Click;
           end;
        11: begin
           if LblT12.visible then Button12.Click;
           end;
        12: begin
           if LblT13.visible then Button13.Click;
           end;
        13: begin
           if LblT14.visible then Button14.Click;
           end;
        14: begin
           if LblT15.visible then Button15.Click;
           end;
        15: begin
           if LblT16.visible then Button16.Click;
           end;
        end;
      end;
     inc(jj);
     end;

  end
else
  begin
  if LblT1.visible then Button1.Click;
  if LblT2.visible then Button2.Click;
  if LblT3.visible then Button3.Click;
  if LblT4.visible then Button4.Click;
  if LblT5.visible then Button5.Click;
  if LblT6.visible then Button6.Click;
  if LblT7.visible then Button7.Click;
  if LblT8.visible then Button8.Click;
  if LblT9.visible then Button9.Click;
  if LblT10.visible then Button10.Click;
  if LblT11.visible then Button11.Click;
  if LblT12.visible then Button12.Click;
  if LblT13.visible then Button13.Click;
  if LblT14.visible then Button14.Click;
  if LblT15.visible then Button15.Click;
  if LblT16.visible then Button16.Click;

  Configuracin1.Enabled:=true;
  Iniciar1.Caption:='&Iniciar todas';
  SpeedButton1.Caption:= '&Iniciar todas';
  AddLogText('Detenido '+ DateTimeToStr(Now));
  end;

end;


{TAREA}

constructor TTarea. Create(
                          const fNoTarea: string;
                          const fid: string;
                          const fRutaOrigen:string;
                          const fRxRutatemporalIri: string;
                          const fRxRutatemporalContenidos: string;
                          const fMascara: string;
                          const fBDMasivos: string;
                          const fGuardarBDMasivos: boolean;
                          const fGuardarMasivos: boolean;
                          const fBDTrazas: string;
                          const fGuardarBDTrazas: boolean;
                          const fGuardarTrazas: boolean;
                          const fformatoIri: string;
                          const fFormaRxIri: string;
                          const fIriHost: string;
                          const fIriUsuario: string;
                          const fIriPassword: string;
                          const fFormaRxContenidos: string;
                          const fContentHost: string;
                          const fContentUsuario: string;
                          const fContentPassword: string;
                          const fRutaContenidos: string;
                          const fidServicio: integer;
                          const fTotalDestinos: integer;
                          const fdestinos: dst;
                          const fTotalGenericos: integer;
                          const fgenericos: gen;
                          const fConexionDestino: TUniConnection;
                          const fclaves: TuniStoredproc;
                          const fcombinados: TuniStoredproc;
                          const fInsertarTTelefonia: TUniStoredProc;
                          const fInsertarTCorrespondencia: TUniStoredProc;
                          const fInsertarTTxCR: TUniStoredProc;
                          const fInsertarmasivoSMS: TUniStoredProc;
                          FCreateSuspended: Boolean);
var
j: integer;
begin
  FPendientes := 0;
  Lista:=TStringList.Create;
  fMemory:= TmemoryStream.Create;
  masivos := 0;
  chequeados:= 0;
  paraestudio:= 0;
  almacenados:= 0;
  procesados:= 0;
  NoTarea:= FNoTarea;
  id:= Fid;
  idServicio:=fidServicio;
  FormatoIri:= lowercase(fformatoIri);
  FormaRxIri:= lowercase(fFormaRxIri);
  RutaOrigen:= FRutaOrigen;
  Mascara:= '*'+FMascara;
  TotalDestinos:=fTotalDestinos;
  for j := 0  to TotalDestinos - 1  do destinos[j]:=fdestinos[j];
  TotalGenericos:=fTotalGenericos;
  for j := 0  to TotalGenericos - 1  do genericos[j]:=fgenericos[j];

  BDMasivos:=fBDMasivos;
  GuardarBDMasivos:= fGuardarBDMasivos;
  GuardarMasivos:=fGuardarMasivos;
  BDTrazas:=fBDTrazas;
  GuardarBDTrazas:= fGuardarBDTrazas;
  GuardarTrazas:=fGuardarTrazas;
  RxRutaContenidos:=fRutaContenidos;
  Rxcontenidoshost:=  fContentHost;
  RxContenidosUsuario:= fContentUsuario;
  RxContenidosPassword:= fContentPassword;
  RxiriHost:= fIriHost;
  RxiriUsuario:= fIriUsuario;
  RxiriPassword:= fIriPassword;
  RxRutatemporalIri:= fRxRutatemporalIri;
  RxRutatemporalContenidos:= fRxRutatemporalContenidos;
  conexionDestino:=fconexionDestino;
  Claves:=fclaves;
  Combinados:=fcombinados;
  insertarTTelefonia:= finsertarTTelefonia;
  insertarTCorrespondencia:= finsertarTCorrespondencia;
  insertarTTxCR:= finsertarTTxCR;
  insertarTTelefonia:= finsertarTTelefonia;
  insertarMasivoSMS:= finsertarMasivoSMS;
  cdadgenericos:=0;
  despachados:=0;
  inherited create(FCreateSuspended);
end;

procedure TTarea.GuardarGenericos(const f: TmemoryStream; const fich: string; const msg: string);
var
  i: integer;
begin
//
for i := 0 to Totalgenericos-1 do
 begin
 if genericos[i].guardarGenericos then
   begin
   if genericos[i].FormaTxgenericos = 'carpeta' then
     begin
       try
       forcedirectories(genericos[i].RutaGenericos+msg);
       f.SaveToFile(genericos[i].RutaGenericos+msg+'\'+fichero);
       except
       end;
     end;
   end;
 end;
end;

procedure TTarea.DoProgress;
begin
  FButton.caption := datetimetostr(now)+' --> '+IntToStr(despachados)+' ('+inttostr(cdadgenericos)+')';
end;

procedure TTarea.setError;
begin
  Principal.Memo.Items.Add('Error Tarea: '+NoTarea)
end;
procedure TTarea.SetPendientes(const Value: Integer);
begin
  FPendientes := Value;
end;

procedure TTarea.SetButton(const Value: TButton);
begin
  FButton := Value;
end;


procedure TTarea.LoadFooter;
var
  OKF: boolean;
  j: integer;
  i: integer;
  f: string;
  m: integer;
  p: integer;
  ext: string;
  T,combi: string;
begin
fichero:='';
T:='yyyymmddhhnnsszzz';
if DevuelveiriContenido then
begin
BuscaFicheros(RutaIri, Mascara, Lista, true, 100);
FPendientes:=Lista.Count;
j:=0;
while FPendientes<>0 do
begin
f:=Lista[0];
if fileExists(f) then
 begin
  try
  fmemory.Clear;
  fMemory.LoadFromFile(f);
  fichero:=extractfilename(f)+'.wav';
  cc:=fmemory.Size;
  bp:=fmemory.Memory;
  if cc>=(sizeof(datos)+sizeof(aux)) then
    begin  // tamano OK
    ep:=ptr(Longword(bp)+cc);
    dp := ptr(Longword(ep)-sizeof(datos));
  //  ap := ptr(LongWord(dp)-sizeof(aux));
    move(dp^,datostx,sizeof(datos));
  //  move(ap^,datosaux,sizeof(aux));
    // Rellenar Footer Auxiliar
  //  datosaux.CODE:=$55AA4466;
    error:= false;
    clave:=0;
    multiplex:=9999;
    canal:=9999;
    captura:='Desconocida';
    Telefonia.IdServicio:=idServicio;
    fechacim:=trim(datostx.fecha);
    case datostx.tipocaptura of
    1:begin  //Internacional
       llamado:= trim(datostx.llamado);
       llamador:= trim(datostx.llamador);
       if llamador='' then llamador:= trim(datostx.dsa);
       if llamado='' then llamado:= trim(datostx.dsa);
      captura:='internacional';
      end;

    2:begin
       if (datostx.multiplex = 0) then  datostx.multiplex := 987;
       fechacim := StringReplace(trim(datostx.fecha), '.', ':',[rfReplaceAll]);
       fechacimlongitud:=length(fechacim);
       if fechacimlongitud>40 then fechacimlongitud:=40;
       for i:=1 to 40 do datostx.fecha[i]:=#0;
       //datostx.fecha:=fechacim;
       for i:=1 to fechacimlongitud do datostx.fecha[i]:=ansichar(fechacim[i]);
       multiplex:=datostx.multiplex;
       canal:=datostx.itorigen;
       llamado:='M'+inttostr(datostx.multiplex)+'C'+inttostr(datostx.itorigen);
       captura:='multiplex';
       end;

     3:begin
       llamado:= trim(datostx.llamado);
       llamador:= trim(datostx.llamador);
       if llamador='' then llamador:= trim(datostx.dsa);
       if llamado='' then llamado:= trim(datostx.dsa);
       captura:='alcatel';
       temita := trim(datostx.tema);
       if temita <> '' then
        begin
        if Length(temita) > 6 then
         begin
         tamano:= Length(temita)-6;
         System.Delete (temita,7,tamano);
         end;
         try
         clave := StrToInt(temita);
         except
           clave := 0;
         end;
        end
       else
          clave := 0;
       end;

     4:begin
       canal:=datostx.itdestino;
       multiplex:=500;
       captura:='sgv';
       end;

     5:begin
       llamado:= trim(datostx.llamado);
       llamador:= trim(datostx.llamador);
       captura:='celular';
       end;

    6:begin
       llamado:= trim(datostx.llamado);
       llamador:= trim(datostx.llamador);
       if llamador='' then llamador:= trim(datostx.dsa);
       if llamado='' then llamado:= trim(datostx.dsa);
       captura:='ericsson';
       temita := trim(datostx.tema);
       if temita <> '' then
        begin
        if Length(temita) > 6 then
         begin
         tamano:= Length(temita)-6;
         System.Delete (temita,7,tamano);
         end;
         try
         clave := StrToInt(temita);
         except
           clave := 0;
         end;
        end
       else
          clave := 0;
      end;
     7:begin
       llamado:= trim(datostx.llamado);
       llamador:= trim(datostx.llamador);
       captura:='huaweingn';
       temita := trim(datostx.tema);
       if temita <> '' then
        begin
        if Length(temita) > 6 then
         begin
         tamano:= Length(temita)-6;
         System.Delete (temita,7,tamano);
         end;
         try
         clave := StrToInt(temita);
         except
           clave := 0;
         end;
        end
       else
          clave := 0;
       end;
     8:begin
       llamado:= trim(datostx.llamado);
       llamador:= trim(datostx.llamador);
       captura:='huaweicc08';
       temita := trim(datostx.tema);
       if temita <> '' then
        begin
        if Length(temita) > 6 then
         begin
         tamano:= Length(temita)-6;
         System.Delete (temita,7,tamano);
         end;
         try
         clave := StrToInt(temita);
         except
           clave := 0;
         end;
        end
       else
          clave := 0;
       end;
     9:begin
       llamado:= trim(datostx.llamado);
       llamador:= trim(datostx.llamador);
       captura:='chela';
       end;
     10:begin
       llamado:= trim(datostx.llamado);
       llamador:= trim(datostx.llamador);
       captura:='sms';
       end;
     11:begin
       llamado:= trim(datostx.llamado);
       llamador:= trim(datostx.llamador);
       captura:='pbx';
       end;

    12:begin
       llamado:= trim(datostx.llamado);
       llamador:= trim(datostx.llamador);
       captura:='Halcon';
       end

    else
      begin
      error:=true;
      datosaux.aplicadopor:='TipoCapturaDesconocido';
      end;
    end;

   if not error then
     begin
     for m  := 0 to TotalDestinos - 1 do
       begin
       carpetadestino := destinos[m].carpetacontenidos;
       if (destinos[m].tipodeAutoridad = 'Independiente') then
         begin
         if (clave>=destinos[m].clavemenor) and
          (clave<=destinos[m].clavemayor) then
              begin
              try
              case datostx.tipocaptura of
              1: datostx.tipocaptura:=6;
              2: datostx.tipocaptura:=2;
              3: datostx.tipocaptura:=3;
              4: datostx.tipocaptura:=4;
              5: datostx.tipocaptura:=5;
              6: datostx.tipocaptura:=3;
              7: datostx.tipocaptura:=3;
              8: datostx.tipocaptura:=3;
              9: datostx.tipocaptura:=3;
             10: datostx.tipocaptura:=3;
             11: datostx.tipocaptura:=3;
             12: datostx.tipocaptura:=3;
              end;
              move(datostx,dp^,sizeof(datos));
              ForceDirectories(carpetaDestino);
              fmemory.SaveToFile(carpetadestino+fichero);
              except
              inc(cdadgenericos);
              GuardarGenericos(fmemory,fichero,'ErrorEscAutoridad');
              // error escribiendo en autoridad independiente

              end;
              end;
         end
       else

        try
        ConexionDestino.Connected:=false;
        ConexionDestino.server := destinos[m].ServidorBD;
        ConexionDestino.port := destinos[m].PuertoBD;
        ConexionDestino.database :=destinos[m].Autoridad;
        ConexionDestino.username := 'root';//destinos[m].UsuarioBD;
        ConexionDestino.password := 'windowsxp';//destinos[m].PasswordBD;
        ConexionDestino.Connected:=true;
        claves.Connection:=ConexionDestino;
        Claves.ParamByName('chequeo').AsString := Llamado;
        Claves.ParamByName('chequeo1').AsString := Llamador;
        Claves.ParamByName('LIID').AsInteger := 0;
        Claves.ParamByName('clavecita').AsString := inttostr(clave);
        claves.ExecProc;
        if claves.RecordCount > 0 then
          begin
          Claves.First;
          for p := 0 to (Claves.RecordCount-1) do
            begin
            if (Claves.fieldbyname('fechafin').asdatetime >= now) and
                (Claves.fieldbyname('fechainicio').asdatetime <= now) then
                 begin
                   if claves.FieldByName('idEquipo').asInteger=143 then
                   begin
                     if claves.FieldByName('porcombinacion').asboolean then
                     begin
                       Combinados.ParamByName('idchequeo').Asinteger := Claves.ParamByName('idchequeo').AsInteger;
                       Combinados.ExecProc;
                       if Combinados.RecordCount > 0 then
                       begin
                         Combinados.First;
                         for I := 0 to Combinados.RecordCount-1 do
                         begin
                           combi := Combinados.fieldbyname('chequeocombinado').AsString;
                           if (llamado = combi) or (llamador = combi) then
                           begin
                             //ForceDirectories(carpetaDestino+inttostr(claves.FieldByName('idEquipo').asInteger));
                             ForceDirectories(claves.FieldByName('destinoExpress').asString);
                             if destinos[m].FormaTxIRI = 'carpeta' then
                             begin
                               try

                               DateTimeToString(cad,T,now);
                               fmemory.SaveToFile(claves.FieldByName('destinoExpress').asString+cad+'_'+fichero);
                               //fmemory.SaveToFile(CarpetaDestino+inttostr(claves.FieldByName('idEquipo').asInteger)+'\'+fichero);
                               except
                                inc(cdadgenericos);
                                GuardarGenericos(fmemory,fichero,'ErrorEscDestinoExpress');
                                // error escribiendo en directorio destino
                               end;
                             end;
                           end;
                           Combinados.Next;
                         end;
                       end;

                       
                     end
                     else //  es porcombinacion
                     begin
                        ForceDirectories(claves.FieldByName('destinoExpress').asString);
                       if destinos[m].FormaTxIRI = 'carpeta' then
                       begin
                         try
                         fmemory.SaveToFile(claves.FieldByName('destinoExpress').asString+fichero);
                         //fmemory.SaveToFile(CarpetaDestino+inttostr(claves.FieldByName('idEquipo').asInteger)+'\'+fichero);
                         except
                          inc(cdadgenericos);
                          GuardarGenericos(fmemory,fichero,'ErrorEscDestinoExpress');
                          // error escribiendo en directorio destino
                         end;
                       end;
                     end;
                   end
                   else
                   begin
                   if  claves.FieldByName('independiente').asBoolean then
                    begin
                    if claves.FieldByName('destinoExpress').asString<>'\' then
                       begin
                       try
                       case datostx.tipocaptura of
                        1: datostx.tipocaptura:=6;
                        2: datostx.tipocaptura:=2;
                        3: datostx.tipocaptura:=3;
                        4: datostx.tipocaptura:=4;
                        5: datostx.tipocaptura:=5;
                        6: datostx.tipocaptura:=3;
                        7: datostx.tipocaptura:=3;
                        8: datostx.tipocaptura:=3;
                        9: datostx.tipocaptura:=3;
                       10: datostx.tipocaptura:=3;
                       11: datostx.tipocaptura:=3;
                       12: datostx.tipocaptura:=3;
                       end;
                       move(datostx,dp^,sizeof(datos));
                       ForceDirectories(claves.FieldByName('destinoExpress').asString);
                       fmemory.SaveToFile(claves.FieldByName('destinoExpress').asString+fichero);
                       except
                       inc(cdadgenericos);
                       GuardarGenericos(fmemory,fichero,'ErrorEscGrupoIndependiente');
                       // error escribiendo en grupo independiente
                       end;
                       end
                    else
                       begin
                       inc(cdadgenericos);
                       GuardarGenericos(fmemory,fichero,'NoRutaDestino');
                       // grupo independiente sin Ruta Destino
                       end;
                    end // if independiente
                   else
                     begin
                     if destinos[m].GuardarBDRequerimientos then
                      begin
                       try
                        if destinos[m].FormaTxIRI = 'carpeta' then
                          begin
                          ForceDirectories(carpetaDestino+inttostr(claves.FieldByName('idEquipo').asInteger));
                          fmemory.SaveToFile(CarpetaDestino+inttostr(claves.FieldByName('idEquipo').asInteger)+'\'+fichero);
                          end;
                        Try
                        InsertarTTelefonia.ParamByName('idclave').AsInteger := Claves.fieldbyname('idclave').asinteger;
                        InsertarTTelefonia.ParamByName('fechatx').AsDateTime := strtodatetime(fechacim);
                        InsertarTTelefonia.ParamByName('duracion').AsString := trim(datostx.duracion);;
                        InsertarTTelefonia.ParamByName('origen').AsString := Llamador ;
                        InsertarTTelefonia.ParamByName('destino').AsString := Llamado;
                        InsertarTTelefonia.ParamByName('dsa').AsString :=trim(datostx.dsa);
                        InsertarTTelefonia.ParamByName('carpetacontenido').AsString := CarpetaDestino+inttostr(claves.FieldByName('idEquipo').asInteger)+'\';
                        InsertarTTelefonia.ParamByName('ficherocontenido').AsString := fichero ;
                        InsertarTTelefonia.ParamByName('servicio').AsInteger := IdServicio;
                        InsertarTTelefonia.ParamByName('idCategoria').AsInteger := datosTx.idcategoria;
                        InsertarTTelefonia.ExecProc;
                        except
                        inc(cdadgenericos);
                        GuardarGenericos(fmemory,fichero,'ErrorEscBaseDatos');
                        OKF:=DeleteFile(CarpetaDestino+inttostr(claves.FieldByName('idEquipo').asInteger)+'\'+ fichero);

                        End;
                       except
                       inc(cdadgenericos);
                       GuardarGenericos(fmemory,fichero,'ErrorEscDestino');
                        // error escribiendo en directorio destino
                       end;

                      end; // si guardar Requerimientos
                     end;
                   end;
                 end
                 else
                     begin
                     inc(cdadgenericos);
                     GuardarGenericos(fmemory,fichero,'FueradeFecha');
                     //generico por fuera de fecha
                     end;

            Claves.Next;
            end;
         end;
         // Operaciones con masivos
         if destinos[m].guardarMasivos then
         begin
         if GuardarMasivos then
            begin
            try
            ForceDirectories(destinos[m].carpetaMasivos+inttostr(idServicio));
            fmemory.SaveToFile(destinos[m].carpetaMasivos+inttostr(idServicio)+'\'+fichero);
            except
            end;
            end;
         if GuardarBDMasivos then
            begin
              // Guardar en BD Masivo el servicio
            end;
         end;
         // Operaciones con trazas
         if destinos[m].guardarTrazas then
         begin
         if GuardarTrazas then   // definido por el servicio
            begin

            end;
         if GuardarBDTrazas then  // definido por el servicio
            begin
              // Guardar en BD Masivo el servicio
            end;
         end;
        inc(despachados);
        ConexionDestino.Close;
        except
        inc(cdadgenericos);
        GuardarGenericos(fmemory,fichero,'ErrorConexionDestino');
        end;
       end;

     Synchronize(DoProgress);
     end
     else
      begin
      inc(cdadgenericos);
      GuardarGenericos(fmemory,fichero,'TipoCapturaDesconocida');
      // tipo captura desconocida
      end;
   end
   else
     begin
     // fichero corupto
     inc(cdadgenericos);
     GuardarGenericos(fmemory,fichero,'FicheroCorrupto');
     end;

  fmemory.clear;
  OKF:= Deletefile(f);
  except
  fichero:='';
 // OKF:= Deletefile(f);
  end;

 end;
 Lista.Delete(0);
 dec(FPendientes);
end;// while
end;
end;

procedure TTarea.LoadXML;
var
   rec: Boolean;
begin
fichero:='';
Result:=(fichero<>'');
end;

procedure TTarea.LoadIni;
var
  OKF: boolean;
  j: integer;
  i: integer;
  f: string;
  m: integer;
  p: integer;
table: string;
week: word;
anno: word;
d: Tdatetime;
begin
fichero:='';
OKF:=False;
if DevuelveiriContenido then
begin
BuscaFicheros(RutaIri, Mascara, Lista, true, 500);
FPendientes:=Lista.Count;
j:=0;
while FPendientes<>0 do
begin
f:=Lista[j];
if fileExists(f) then
 begin
  try
  fichero:=extractfilename(f);
  error:= false;
  llamado:= '';
  llamador:= '';
  clave:=0;
  captura:='Desconocida';
  dsa:='';
  fechacim:='';
  uno:='';
  fillchar(datostx.duracion,20,#0);
  datostx.idcategoria:=1;
  fsms:=TInifile.Create(rutaOrigen+fichero);
  with fsms do
    begin
    try
    if SectionExists('SMS') then
      begin
      llamador := Trim(ReadString('SMS', 'origen', ''));
      llamado := Trim(ReadString('SMS', 'destino', ''));
      uno := trim(ReadString('SMS', 'fecha hora', ''));
      fechacim := Copy(uno,9,2)+'/'+ Copy(uno,6,2)+'/'+ Copy(uno,1,4)+' '+Copy(uno,12,2)+':'+Copy(uno,15,2)+':'+Copy(uno,18,2);
      try
      d:=strtodatetime(fechacim);
      except
      fechacim:=datetimetostr(now);
      end;
      dsa := Trim(ReadString('SMS', 'mensaje', ''));
      captura:='SMS';
      end;
    except
     error:=true;
    end;
    end; //with

   if not error then
     begin
     fmemory.Clear;
     fmemory.LoadFromFile(rutaOrigen+fichero);
     for m  := 0 to TotalDestinos - 1 do
       begin
       carpetadestino := destinos[m].carpetacontenidos;
       if (destinos[m].tipodeAutoridad = 'Independiente') then
         begin
         if (clave>=destinos[m].clavemenor) and
          (clave<=destinos[m].clavemayor) then
              begin
              try
              ForceDirectories(carpetaDestino);
              fmemory.SaveToFile(carpetadestino+fichero);
              except
              inc(cdadgenericos);
              GuardarGenericos(fmemory,fichero,'ErrorEscAutoridad');
              // error escribiendo en autoridad independiente
              end;
              end;
         end
       else

       try
       ConexionDestino.Connected:=false;
       ConexionDestino.server := destinos[m].ServidorBD;
       ConexionDestino.port := destinos[m].PuertoBD;
       ConexionDestino.database :=destinos[m].Autoridad;
       ConexionDestino.username := destinos[m].UsuarioBD;
       ConexionDestino.password := destinos[m].PasswordBD;
       ConexionDestino.Connected:=true;
       claves.Connection:=ConexionDestino;
       Claves.ParamByName('chequeo').AsString := Llamado;
       Claves.ParamByName('chequeo1').AsString := Llamador;
       Claves.ParamByName('LIID').AsInteger := 0;
       Claves.ParamByName('clavecita').AsString := inttostr(clave);
       claves.ExecProc;
       if claves.RecordCount > 0 then
          begin
          Claves.First;
          for p := 0 to (Claves.RecordCount-1) do
            begin
            if (Claves.fieldbyname('fechafin').asdatetime >= now) and
               (Claves.fieldbyname('fechainicio').asdatetime <= now) then
                 begin
                 if  claves.FieldByName('independiente').asBoolean then
                   begin
                   if claves.FieldByName('destinoExpress').asString<>'\' then
                       begin
                       try
                       ForceDirectories(claves.FieldByName('destinoExpress').asString);
                       fmemory.SaveToFile(claves.FieldByName('destinoExpress').asString+fichero);
                       except
                       inc(cdadgenericos);
                       GuardarGenericos(fmemory,fichero,'ErrorEscGrupoIndependiente');
                       // error escribiendo en grupo independiente
                       end;
                       end
                   else
                       begin
                       inc(cdadgenericos);
                       GuardarGenericos(fmemory,fichero,'NoRutaDestino');
                       // grupo independiente sin Ruta Destino
                       end;
                   end
                   else
                    begin
                    ForceDirectories(carpetaDestino+inttostr(claves.FieldByName('idEquipo').asInteger));
                    if destinos[m].GuardarBDRequerimientos then
                        begin
                        InsertarTTelefonia.Connection:= ConexionDestino;
                        InsertarTTelefonia.ParamByName('idclave').AsInteger := Claves.fieldbyname('idclave').asinteger;
                        InsertarTTelefonia.ParamByName('fechatx').Asdatetime := strtodatetime(fechacim);
                        InsertarTTelefonia.ParamByName('duracion').AsString := trim(datostx.duracion);
                        InsertarTTelefonia.ParamByName('origen').AsString := Llamador ;
                        InsertarTTelefonia.ParamByName('destino').AsString := Llamado;
                        InsertarTTelefonia.ParamByName('dsa').AsString :=dsa;
                        InsertarTTelefonia.ParamByName('carpetacontenido').AsString := CarpetaDestino+inttostr(claves.FieldByName('idEquipo').asInteger)+'\';
                        InsertarTTelefonia.ParamByName('ficherocontenido').AsString := fichero ;
                        InsertarTTelefonia.ParamByName('servicio').AsInteger := IdServicio;
                        InsertarTTelefonia.ParamByName('idCategoria').AsInteger := datosTx.idcategoria;
                        InsertarTTelefonia.ExecProc;
                        end;
                    ///guardo ficherocontenido en destino
                    ///
                    if destinos[m].GuardarRequerimientos then
                    begin
                    if destinos[m].FormaTxIRI = 'carpeta' then
                       begin
                       try
                       fmemory.SaveToFile(CarpetaDestino+inttostr(claves.FieldByName('idEquipo').asInteger)+'\'+fichero);
                       except
                        inc(cdadgenericos);
                        GuardarGenericos(fmemory,fichero,'ErrorEscDestino');
                        // error escribiendo en directorio destino
                       end;
                       end
                    else
                    if destinos[m].FormaTxIRI = 'copyfiles' then
                       begin
                      (*
                       CopySrcDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                       CopySrcFile.Text := fichero;
                       CopyTarDir.Text := carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                       CopyFiles(Sender);
                      *)
                       end
                    else

                    if destinos[m].FormaTxIRI = 'ftp' then
                       begin
                      (*
                       FtpHost.Text := destinos[m].ServidorTxContenidos;
                       FtpUsername.Text := destinos[m].UsuarioTxContenidos;
                       FtpPassword.Text := destinos[m].PasswordTxContenidos;
                       Ftp1Path.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                       Ftp1SrcName.Text := fichero;
                       Ftp1LocDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                       doFtpDown1Click(Sender);
                      *)
                       end
                    else

                    if destinos[m].FormaTxIRI = 'http' then
                       begin
                     (*
                       HttpSrcDir.Text := destinos[m].ServidorTxContenidos;
                       NetLogon.Text := destinos[m].UsuarioTxContenidos;
                       NetPassword.Text := destinos[m].PasswordTxContenidos;
                       HttpSrcFile.Text := fichero;
                       HttpTarDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                       HttpDownload(Sender);
                      *)
                       end;
                    end;

                  end;
                 end
                 else
                     begin
                     generico := true;
                     GuardarGenericos(fmemory,fichero,'FueradeFecha');
                     //generico por fuera de fecha
                     end;
            Claves.Next;
            end;
         end;
         // Operaciones con masivos
         if destinos[m].guardarMasivos then
         begin
         if GuardarMasivos then
            begin
            try
            ForceDirectories(destinos[m].carpetaMasivos+inttostr(idServicio));
            fmemory.SaveToFile(destinos[m].carpetaMasivos+inttostr(idServicio)+'\'+fichero);
            except
            end;
            end;
         if GuardarBDMasivos then
            begin
              // Guardar en BD Masivo el servicio SMS
            try
            ConexionDestino.Connected:=false;
            ConexionDestino.server := destinos[m].ServidorBD;
            ConexionDestino.port := destinos[m].PuertoBD;
            ConexionDestino.database :=BDMasivos;
            ConexionDestino.username := destinos[m].UsuarioBD;
            ConexionDestino.password := destinos[m].PasswordBD;
            ConexionDestino.Connected:=true;
            insertarMasivoSMS.Connection:=ConexionDestino;
            week:=weekoftheYear(strtodatetime(fechacim),anno);
            table:= inttostr(anno)+inttostr(week);
            InsertarMasivoSMS.ParamByName('origen').AsString := Llamador ;
            InsertarMasivoSMS.ParamByName('destino').AsString := Llamado;
            InsertarMasivoSMS.ParamByName('msg').AsString :=dsa;
            InsertarMasivoSMS.ParamByName('tabla').AsString :=table;
            InsertarMasivoSMS.ParamByName('fechaini').AsString :=uno;
            InsertarMasivoSMS.ExecProc;
            except
            end;
            end;
         end;
         // Operaciones con trazas
         if destinos[m].guardarTrazas then
         begin
         if GuardarTrazas then   // definido por el servicio
            begin

            end;
         if GuardarBDTrazas then  // definido por el servicio
            begin
              // Guardar en BD Masivo el servicio
            end;
         end;
        ConexionDestino.Close;
        except
        end;
       end;
     inc(despachados);
     Synchronize(DoProgress);
     end;
  fsms.Free;
  OKF:= Deletefile(f);
  except
  fichero:='';
  OKF:= Deletefile(f);
  end;
 end;
 inc(j);
 dec(FPendientes);
end;// while
end;
end;

procedure TTarea.LoadIri;
var
   rec: Boolean;
begin
fichero:='';
Result:=(fichero<>'');
end;

procedure TTarea.LoadGnome;
var
  OKF: boolean;
  PC: pchar;
  f: string;
begin
fichero:='';
OKF:=False;

Result:=(OKF);

end;

function  TTarea.BuscaFicheros(const path: string; const mask : string; var Value : TStringList; const brec : Boolean; const max: integer): Boolean;
var
  srRes : TSearchRec;
  nRes  : TSearchRec;
  iFound : Integer;
  nfound : integer;
  count: integer;
  count1: Integer;
  pathTmp: string;
begin
 Value.BeginUpdate;
 Value.clear;
 Try
  if ( brec )  and (not terminated) then
    begin
//    if path[Length(path)] <> '\' then path := path +'\';
    iFound := FindFirst( path + '*.*', faAnyFile, srRes );
     count1:=0;
     while (iFound = 0) and (count1<max) do
      begin
      if ( srRes.Name <> '.' ) and ( srRes.Name <> '..' ) then
        begin
        if srRes.Attr and faDirectory > 0 then
              begin
              count:=0;
              pathTmp:=path + srRes.Name;
              if pathTmp[Length(pathTmp)] <> '\' then pathTmp := pathTmp +'\';

              nFound := FindFirst(pathTmp+mask, faAnyFile-faDirectory, nRes);
              while (nFound = 0) and (count<max) and (not terminated) do
                begin
                if ( nRes.Name <> '.' ) and ( nRes.Name <> '..' ) and ( nRes.Name <> '' ) then
                   begin
                   Value.Add(pathTmp+nRes.name);
                   inc(count);
                   end;
                nFound := FindNext(nRes);
                end;
                FindClose(nRes);
              end;

       end;
       iFound := FindNext(srRes);
       inc(count1);
      end;
    FindClose(srRes);
    end;

//  if path[Length(path)] <> '\' then path := path +'\';
   iFound := FindFirst(path+mask, faAnyFile-faDirectory, srRes);
   count:=0;
   while (iFound = 0) and (count<max) and (not Terminated) do
    begin
     if ( srRes.Name <> '.' ) and ( srRes.Name <> '..' ) and ( srRes.Name <> '' ) then
        begin
        Value.Add(path+srRes.Name);
        inc(count);
        end;
        iFound := FindNext(srRes);
    end;
  FindClose( srRes );
 Value.EndUpdate;
except
End;
pathTmp:='';
result:= (Value.Count > 0);
end;

function Ttarea.DevuelveIriContenido: boolean;
begin
result:=false;
if formaRxIri='carpeta' then
    begin
    RutaIri:=RutaOrigen;
    RutaContenidos:= RxRutaContenidos;
    result:=true;
    end
else
if formaRxIri='ftp' then
    begin
    //mover desde RutaOrigen a RxRutatemporalIri
    //mover desde RxRutaContenidos a RxRutatemporalContenidos


    RutaIri:=RxRutaTemporaliri;
    RutaContenidos:=RxRutatemporalContenidos;
    end
else
if formaRxIri='http' then
    begin
    //mover desde RutaOrigen a RxRutatemporalIri
    //mover desde RxRutaContenidos a RxRutatemporalContenidos


    RutaIri:=RxRutaTemporaliri;
    RutaContenidos:=RxRutatemporalContenidos;
    end
else
if formaRxIri='copyfiles' then
    begin
    //mover desde RutaOrigen a RxRutatemporalIri
    //mover desde RxRutaContenidos a RxRutatemporalContenidos


    RutaIri:=RxRutaTemporaliri;
    RutaContenidos:=RxRutatemporalContenidos;
    end
else
if formaRxIri='minitrans' then
    begin
    //mover desde RutaOrigen a RxRutatemporalIri
    //mover desde RxRutaContenidos a RxRutatemporalContenidos


    RutaIri:=RxRutaTemporaliri;
    RutaContenidos:=RxRutatemporalContenidos;
    end;

end;

procedure TTarea.Execute;

begin
  FreeOnTerminate := True;

  while not Terminated do
  begin
  try
  // Cada despachador (Tabla Despachadores) esta asociado con varios origenes
  // Cada origen, en Tabla Despachadores Origenes, dice como se accede a los ficheros .Iri y a los contenidos pre despacho
  // Cada despachador debe procesar varios servicios en cada Origen segun tabla que asocia despachadores con servicios
  // Cada par Origen-Servicio es una TAREA dentro del despachador
  // El formato del IRI esta en Tabla que asocia Despachadores y servicios y definira como se realiza el proceso
  // Cada despachador entrega las infornaciones resultantes a los destinos asociados en Tabla Despachadores Destinos
  // La forma de entregar la informacion esta en Despachadores destinos en IdFormaTxIri

    if FormatoIri='wav' then LoadFooter
  else
    if FormatoIri='xml' then LoadXml
  else
    if FormatoIri='iri' then LoadIri
  else
    if FormatoIri='ini' then LoadIni
  else
    if FormatoIri='gnome' then LoadGnome;

  except
    on e:exception do
      Synchronize(setError);
  end;
  Sleep(100);
  end;

  FButton.Caption:='-';
  FButton.Tarea := nil;
  Lista.Free;
  fmemory.Free;
end;



end.
