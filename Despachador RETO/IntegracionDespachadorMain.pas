unit IntegracionDespachadorMain;

interface

{$IFNDEF UNICODE}
    {$DEFINE USE_TNT}
{$ENDIF}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  ComCtrls, StdCtrls, IniFiles, Dialogs, IOUtils, xmldom, XMLIntf, msxmldom, XMLDoc,
  DMDespachador1,
  {$IFDEF USE_TNT} TntStdCtrls, {$ENDIF}
  DMglobal1,MagentaCopy3W, MagentaFtp3W, MagentaHttp3W, MagSubs1,
  OverbyteIcsWsocket, OverbyteIcsFtpcliW, OverbyteIcsFtpSrvWT,
  OverbyteIcsHttpProt, OverbyteIcsHttpCCodzlib, OverbyteIcsLogger, ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, cxCheckBox,
  cxDBLookupComboBox, Menus, cxButtons, cxGridLevel, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCardView, cxGridDBCardView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxContainer, cxLookupEdit, cxDBLookupEdit,
  cxDBCheckComboBox, cxMaskEdit, cxDropDownEdit, cxCheckComboBox,
  AdvSmoothPanel, AdvSmoothExpanderPanel, AdvSmoothExpanderButtonPanel,
  dxSkinsForm, cxPC, VrControls, VrThreads, NativeXml, VrSystem, Mask,
  AdvDropDown, AdvControlDropDown, DBAdvControlDropDown, cxCalendar,
  dxSkinBlueprint, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint, cxPCdxBarPopupMenu,
  cxGridCustomLayoutView;
const
  MaxGrupos    = 200;
  MaxOrigenes  = 200;
  MaxDestinos  = 200;
  MaxServicios = 200;

type
{$IFDEF USE_TNT}
    TCurrentMemo = TTntMemo;
{$ELSE}
    TCurrentMemo = TMemo;
{$ENDIF}

  TMainForm = class(TForm)
    LabelProgress: TLabel;
    BtnDespachar: TcxButton;
    dxSkinController1: TdxSkinController;
    cxPageControl1: TcxPageControl;
    Despachador: TcxTabSheet;
    TMagFileCopy: TcxTabSheet;
    TMagFtp: TcxTabSheet;
    MultiFtp: TcxTabSheet;
    DespachadorGrid: TcxGrid;

    OrigenesView: TcxGridDBTableView;
    OrigenesViewIdDespachador: TcxGridDBColumn;
    OrigenesViewDespachador: TcxGridDBColumn;
    OrigenesViewIdOrigen: TcxGridDBColumn;
    OrigenesViewDescripcion: TcxGridDBColumn;
    OrigenesViewCompactados: TcxGridDBColumn;
    OrigenesViewServidorRxIRI: TcxGridDBColumn;
    OrigenesViewUsuarioRxIRI: TcxGridDBColumn;
    OrigenesViewPasswordRxIRI: TcxGridDBColumn;
    OrigenesViewCarpetaIRI: TcxGridDBColumn;
    OrigenesViewTimeOutIRI: TcxGridDBColumn;
    OrigenesViewServidorRxContenidos: TcxGridDBColumn;
    OrigenesViewPasswordRxContenidos: TcxGridDBColumn;
    OrigenesViewUsuarioRxContenidos: TcxGridDBColumn;
    OrigenesViewCarpetaContenidos: TcxGridDBColumn;
    OrigenesViewGeneraAvisos: TcxGridDBColumn;
    OrigenesViewCantidadFicheros: TcxGridDBColumn;
    OrigenesViewCantidadFicherosAviso: TcxGridDBColumn;
    OrigenesViewCantidadFicherosLimite: TcxGridDBColumn;
    OrigenesViewFormatoCompactados: TcxGridDBColumn;
    OrigenesViewExtensionCompactados: TcxGridDBColumn;
    OrigenesViewFormaRxIRI: TcxGridDBColumn;
    OrigenesViewFormaRxContenidos: TcxGridDBColumn;
    OrigenesViewCarpetaTemporalIRI: TcxGridDBColumn;
    OrigenesViewCarpetaTemporalContenidos: TcxGridDBColumn;

    DestinosView: TcxGridDBTableView;
    DestinosViewIdDespachador: TcxGridDBColumn;
    DestinosViewDespachador: TcxGridDBColumn;
    DestinosViewidDestino: TcxGridDBColumn;
    DestinosViewDescripcion: TcxGridDBColumn;
    DestinosViewServidorBD: TcxGridDBColumn;
    DestinosViewPuertoBD: TcxGridDBColumn;
    DestinosViewUsuarioBD: TcxGridDBColumn;
    DestinosViewPasswordBD: TcxGridDBColumn;
    DestinosViewMaster: TcxGridDBColumn;
    DestinosViewServidorTxIRI: TcxGridDBColumn;
    DestinosViewPuertoTxIRI: TcxGridDBColumn;
    DestinosViewUsuarioTxIRI: TcxGridDBColumn;
    DestinosViewPasswordTxIRI: TcxGridDBColumn;
    DestinosViewCarpetaIRI: TcxGridDBColumn;
    DestinosViewServidorTxContenidos: TcxGridDBColumn;
    DestinosViewPuertoTxContenidos: TcxGridDBColumn;
    DestinosViewUsuarioTxContenidos: TcxGridDBColumn;
    DestinosViewPasswordTxContenidos: TcxGridDBColumn;
    DestinosViewCarpetaContenidos: TcxGridDBColumn;
    DestinosViewCompactados: TcxGridDBColumn;
    DestinosViewCantidadIRIenZIP: TcxGridDBColumn;
    DestinosViewFormatoCompactados: TcxGridDBColumn;
    DestinosViewExtensionCompactados: TcxGridDBColumn;
    DestinosViewAutoridad: TcxGridDBColumn;
    DestinosViewTipodeAutoridad: TcxGridDBColumn;
    DestinosViewFormaTxIRI: TcxGridDBColumn;
    DestinosViewFormaTxContenidos: TcxGridDBColumn;

    ServiciosView: TcxGridDBTableView;
    ServiciosViewIdDespachador: TcxGridDBColumn;
    ServiciosViewDespachador: TcxGridDBColumn;
    ServiciosViewIdServicio: TcxGridDBColumn;
    ServiciosViewServicio: TcxGridDBColumn;
    ServiciosViewExtension: TcxGridDBColumn;
    ServiciosViewBDMasivo: TcxGridDBColumn;
    ServiciosViewBDTrazas: TcxGridDBColumn;
    ServiciosViewIdFormatosIRI: TcxGridDBColumn;
    ServiciosViewFormatoIRI: TcxGridDBColumn;
    ServiciosViewNumeroServicio: TcxGridDBColumn;
    ServiciosViewGrupoServicio: TcxGridDBColumn;
    ServiciosViewPrefijoTablaContenidos: TcxGridDBColumn;

    OrigenesLevel: TcxGridLevel;
    DestinosLevel: TcxGridLevel;
    ServiciosLevel: TcxGridLevel;
    Button1: TButton;
    doDeleteFiles: TButton;
    doDeleteCheck: TButton;
    doCopyAbort: TButton;
    doCopyFiles: TButton;
    doCopyCheck: TButton;
    doCopyList: TButton;
    NetPassword: TEdit;
    Label20: TLabel;
    NetLogon: TEdit;
    Label19: TLabel;
    CopyTarDir: TEdit;
    Label4: TLabel;
    Label3: TLabel;
    CopySrcFile: TEdit;
    CopySrcDir: TEdit;
    Label2: TLabel;
    Label14: TLabel;
    ftpIgnoreUtf8: TCheckBox;
    FtpNoUtf8: TCheckBox;
    ftpNoHost: TCheckBox;
    FtpNoTmpFile: TCheckBox;
    FtpBandWidth: TEdit;
    Label25: TLabel;
    FtpNoMd5Crc: TCheckBox;
    FtpNoZlib: TCheckBox;
    FtpNoFeatCmd: TCheckBox;
    FtpKeepAlive: TEdit;
    Label24: TLabel;
    FtpPortSsl: TEdit;
    Label23: TLabel;
    FtpPort: TEdit;
    Label22: TLabel;
    FtpPassive: TCheckBox;
    FtpServerType: TComboBox;
    Label21: TLabel;
    FtpPassword: TEdit;
    Label11: TLabel;
    FtpUsername: TEdit;
    Label10: TLabel;
    FtpHost: TComboBox;
    Label9: TLabel;
    Button2: TButton;
    doFtpUpFiles: TButton;
    doFtpUpCheck: TButton;
    doFtpAbort: TButton;
    doFtpDownFiles: TButton;
    doFtpDownCheck: TButton;
    doFtpList: TButton;
    FtpLocDir: TEdit;
    Label12: TLabel;
    FtpSubdirs: TCheckBox;
    FtpDelOldTar: TCheckBox;
    FtpDelDone: TCheckBox;
    FtpReplace: TCheckBox;
    FtpSrcFile: TEdit;
    Label13: TLabel;
    FtpCopyAllDir: TCheckBox;
    FtpPath: TEdit;
    Label8: TLabel;
    SingleFtp: TcxTabSheet;
    doFtpAbort1: TButton;
    doFtpUp1: TButton;
    doFtpDown1: TButton;
    FtpOneDelDone: TCheckBox;
    FtpOneReplace: TCheckBox;
    Ftp1UpFile: TEdit;
    Label18: TLabel;
    Ftp1LocDir: TEdit;
    Label17: TLabel;
    Ftp1SrcName: TEdit;
    Label16: TLabel;
    Ftp1Path: TEdit;
    Label15: TLabel;
    Otros: TcxTabSheet;
    Label1: TLabel;
    LabelVersion: TLabel;
    ShowDiagsUtf8: TCheckBox;
    ShowDiagsHigh: TCheckBox;
    ShowDiagsLow: TCheckBox;
    doTest: TButton;
    ShowDiagsSSL: TCheckBox;
    Label26: TLabel;
    doExit: TButton;
    doClear: TButton;
    LabelSslState: TLabel;
    Memos: TcxTabSheet;
    LogDelim: TMemo;
    LogText: TMemo;
    TMagHttp: TcxTabSheet;
    doHttpAbort: TButton;
    doHttpDownFiles: TButton;
    doHttpDownCheck: TButton;
    HttpTarDir: TEdit;
    Label7: TLabel;
    HttpSrcFile: TComboBox;
    Label6: TLabel;
    HttpSrcDir: TComboBox;
    Label5: TLabel;
    VrTimerRecibirIRI: TVrTimer;
    VrTimerRecibirContenidos: TVrTimer;
    VrTimerEnviar: TVrTimer;
    Ftp1Host: TComboBox;
    Label27: TLabel;
    Ftp1Password: TEdit;
    Ftp1Usernam: TEdit;
    Label28: TLabel;
    Label29: TLabel;
    DBAdvControlDropDown1: TDBAdvControlDropDown;
    XMLDocument1: TXMLDocument;
    VrTimer1: TVrTimer;



    procedure doCopyListClick(Sender: TObject);
    procedure CopyFiles(Sender: TObject);
    procedure doAbortClick(Sender: TObject);
    procedure doExitClick(Sender: TObject);
    procedure DeleteFiles(Sender: TObject);
    procedure HttpDownload(Sender: TObject);
    procedure FtpDownload(Sender: TObject);
    procedure doFtpListClick(Sender: TObject);
    procedure FtpUpload(Sender: TObject);
    procedure doFtpDown1Click(Sender: TObject);
    procedure doFtpUp1Click(Sender: TObject);
    procedure doTestClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure doClearClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BtnDespacharClick(Sender: TObject);
    function  sdDateTimeFromString(const ADate: UTF8String): TDateTime;
    procedure VrTimerRecibirIRITimer(Sender: TObject);
    procedure VrTimerRecibirContenidosTimer(Sender: TObject);
    procedure VrTimerEnviarTimer(Sender: TObject);
    procedure VrTimer1Timer(Sender: TObject);
  private
    { Private declarations }
    procedure AddLogText (S: Unicodestring) ;
    procedure AddLogDelim (S: Unicodestring) ;
    procedure onCopyEventW (LogLevel: TLogLevel ; Info: UnicodeString ;
                                                  var Cancel: boolean) ;
    procedure onHttpEventW (LogLevel: TLogLevel ; Info: UnicodeString ;
                                                  var Cancel: boolean) ;
    function SetFTPGen: boolean ;
    procedure SetFtpButtons (value: boolean) ;
    procedure onFtpEventW (LogLevel: TLogLevel ; Info: UnicodeString ;
                                                  var Cancel: boolean) ;
    procedure IcsLogEvent (Sender: TObject; LogOption: TLogOption;
                              const Msg : String) ;
    procedure GetSettings ;
    procedure PutSettings ;

    procedure GuardoDatosdelOrigen(Sender: TObject; index : word);
    procedure ReciboHaciaCarpetaTemporal(Sender: TObject);
    procedure GuardoDatosdelDestino(Sender: TObject; index : word);
    procedure DespachoHaciaelDestino(Sender: TObject);
    procedure GuardoDatosdelServicio(Sender: TObject; index : word);

  public
    { Public declarations }
  end;

  RecGrupos = Record
               grupo: string[20];
               unidad: string[20];
               ttx: string[50];
               DirTx: string[250];
               dirGenericos: string[250];
               dirBuzon: string[250];
               GuardarBdTx: string[1];
               descripcion: string[50];
  end;

   RecOrigenes = Record
    IdOrigen: integer;
    Descripcion: string;
    Compactados: boolean;
    ServidorRxIRI: string;
    UsuarioRxIRI: string;
    PasswordRxIRI: string;
    CarpetaIRI: string;
    TimeOutIRI: integer;
    ServidorRxContenidos: string;
    PasswordRxContenidos: string;
    UsuarioRxContenidos: string;
    CarpetaContenidos: string;
    GeneraAvisos: Boolean;
    CantidadFicheros: longword;
    CantidadFicherosAviso: longword;
    CantidadFicherosLimite: longword;
    FormatoCompactados: string;
    ExtensionCompactados: string;
    FormaRxIRI: string;
    FormaRxContenidos: string;
    CarpetaTemporalIRI: string;
    CarpetaTemporalContenidos: string;
   End;

   RecDestinos = Record
    idDestino: integer;
    Descripcion: string;
    ServidorBD: string;
    PuertoBD: word;
    UsuarioBD: string;
    PasswordBD: string;
    Master: boolean;
    ServidorTxIRI: string;
    PuertoTxIRI: word;
    UsuarioTxIRI: string;
    PasswordTxIRI: string;
    CarpetaIRI: string;
    ServidorTxContenidos: string;
    PuertoTxContenidos: word;
    UsuarioTxContenidos: string;
    PasswordTxContenidos: string;
    CarpetaContenidos: string;
    Compactados: boolean;
    CantidadIRIenZIP: word;
    FormatoCompactados: string;
    ExtensionCompactados: string;
    Autoridad: string;
    TipodeAutoridad: string;
    FormaTxIRI: string;
    FormaTxContenidos: string;
   End;

   RecServicios = Record
    IdServicio: longword;
    Servicio: string;
    Extension: string;
    BDMasivo: string;
    BDTrazas: string;
    IdFormatosIRI: longword;
    FormatoIRI: string;
    NumeroServicio: longword;
    GrupoServicio: string;
    TablaContenidos: string;
   End;

   RecCartas = Record
     IdServicio :Word;
     Modo : string;
     Municipio : string;
     Sentido :string;
     Clasificacion : string;
     Remitente : string;
     DireccionRemitente : string;
     Destinatario : string;
     DireccionDestinatario: string;
     CarpetaContenido : string;
     FicheroContenido : string;
     CarpetaNota : string;
     Nota: string;
     Fecha : TDateTime;
     Observaciones : string;
   End;

   RecTelefonia = Record
     IdServicio :Word;
     Modo : string;
     CarpetaContenido : string;
     FicheroContenido : string;
     Fechatx : TDateTime;
     Duracion : string;
     duaraciontx : Integer;
     Llamado : string;
     Llamador : string;
     Tema : string;
     dsa  : string;
     Tipocaptura : word;
     Multiplex : word;
     Sentido :string;
     Itdestino : word;
     Idestadotx : word;
     Idtipotx : word;
     Itorigen : word;
   End;

   RecSms = Record
     IdServicio :Word;
     Modo : string;
     CarpetaContenido : string;
     FicheroContenido : string;
     FechaTx : TDateTime;
     Llamado : string;
     Llamador : string;
     Tipocaptura : word;
   End;

   RecTxCR = Record
     IdServicio :Word;
     Modo : string;
     CarpetaContenido : string;
     FicheroContenido : string;
     Fechatx : TDateTime;
     Duraciontx : integer;
     emisoracanal : string;
     programa : string;
     espacio  : string;
     Tema : string;
     Tipocaptura : word;
     Idestadotx : word;
   End;
   datos = record
       origen: boolean;

       fecha: array [1..40] of AnsiChar;
       duracion: array [1..20] of AnsiChar;
       sentido: AnsiChar;
       llamador: array [1..20] of AnsiChar;
       llamado: array[1..20] of AnsiChar;
       idcategoria: longint;
       idtipotx: longint;
       tema: array [1..50] of AnsiChar;
       dsa: array [1..50] of AnsiChar;


       tipocaptura : longint;
       itdestino: longint;
       multiplex: longint;
       itorigen: longint;
    end;
  pdatos= ^datos;
  aux   = record
          CODE:longword;
          clave: longword;
          categoria: string[50];
          tipotx: string[50];
          caso: string[20];
          aplicadopor: string[50];
          grupo: string[20];
          unidad: string[20];
          activa: integer;
          end;
  paux = ^Aux;

var
    MainForm: TMainForm;
    grupos: array[0..MaxGrupos] of RecGrupos;
    origenes: array[0..MaxOrigenes] of RecOrigenes;
    destinos: array[0..MaxDestinos] of RecDestinos;
    servicios: array[0..MaxServicios] of RecServicios;
    Cartas : RecCartas;
    Telefonia : RecTelefonia;
    Sms : RecSms;
    TxCR : RecTxCR;

    TotalOrigenes : word;
    TotalDestinos : word;
    TotalServicios : word;
    OrigenIndex1 : word;
    OrigenIndex2 : word;
    OrigenIndex3 : word;
    DestinoIndex1 : word;
    ActualServicio : word;
    MagHTTPClient: TMagHTTPW ;
    MagFTPClient: TMagFTPW ;
    MagFileCopyClient: TMagFileCopyW ;
    IcsLog: TIcsLogger ;
    AbortFlag: boolean ;
    IniFileName: string ;
    CurrentLogText: TCurrentMemo;
    CurrentLogDelim: TCurrentMemo;
    NombreDespachador: String;

    llamado: ansistring;
  llamador: ansistring;
  clave: integer;
  chequeo: string;
  multiplex: integer;
  canal: integer;
  captura: string;
  clavita, zonita : string;
  porzona: boolean;

    filein : TMemoryStream;
  cdad1:integer;
  genericos:integer;
  rutaOrigen, mascara : string;
  GR: TSearchRec;
  Buffer: PChar;
  result: boolean;
  datosaux: aux;
  datostx: datos;
   dp: pdatos;
   ap: paux;
   cdor,cdor1:longint;
   error: boolean;

implementation

{$R *.dfm}

////////////////////////////////////////////////////////////

procedure TMainForm.BtnDespacharClick(Sender: TObject);
var
  i : integer; // para ciclo de los origenes
  j : integer; // para ciclo con destinos
  k : integer; // para ciclo con servicios
begin


 if not VrTimerRecibirIRI.Enabled then
  begin

     DMDespachador.OrigenesProc.Close;
     DMDespachador.OrigenesProc.ParamByName('NombreDespachador').AsString := NombreDespachador;
     DMDespachador.OrigenesProc.ExecProc;
     DMDespachador.DestinosProc.Close;
     DMDespachador.DestinosProc.ParamByName('NombreDespachador').AsString := NombreDespachador;
     DMDespachador.DestinosProc.ExecProc;
     DMDespachador.ServiciosProc.Close;
     DMDespachador.ServiciosProc.ParamByName('NombreDespachador').AsString := NombreDespachador;
     DMDespachador.ServiciosProc.ExecProc;


     ///// Origenes
     OrigenesView.DataController.GotoFirst;
     TotalOrigenes := OrigenesView.viewdata.rowcount;
     LogText.Lines.Add ( 'Origenes ');
     for i := 0 to OrigenesView.viewdata.rowcount-1 do
     begin
       GuardoDatosdelOrigen(Sender, i);
       OrigenesView.DataController.GotoNext;
     end;
     OrigenesView.DataController.GotoFirst;

     for i := 0 to OrigenesView.viewdata.rowcount-1 do
     begin
       ReciboHaciaCarpetaTemporal(Sender);
       OrigenesView.DataController.GotoNext;
     end;
     OrigenesView.DataController.GotoFirst;

     ///// Destinos
     DestinosView.DataController.GotoFirst;
     TotalDestinos := DestinosView.viewdata.rowcount;
     LogText.Lines.Add ( 'Destinos ');
     for j := 0 to DestinosView.viewdata.rowcount-1 do
     begin
       GuardoDatosdelDestino(Sender, j);
       DestinosView.DataController.GotoNext;
     end;
     DestinosView.DataController.GotoFirst;

     for j := 0 to DestinosView.viewdata.rowcount-1 do
     begin
       DespachoHaciaelDestino(Sender);
       DestinosView.DataController.GotoNext;
     end;
     DestinosView.DataController.GotoFirst;

     ///// Servicios
     ServiciosView.DataController.GotoFirst;
     TotalServicios := ServiciosView.viewdata.rowcount;
     LogText.Lines.Add ( 'Servicios ');
     for k := 0 to ServiciosView.viewdata.rowcount-1 do
     begin
       GuardoDatosdelServicio(Sender,k);
       ServiciosView.DataController.GotoNext;
     end;
     ServiciosView.DataController.GotoFirst;

    If (TotalOrigenes > 0) and (TotalServicios > 0) then
    begin
    OrigenIndex1 := 0;
    OrigenIndex2 := 0;
    OrigenIndex3 := 0;
    VrTimerRecibirIRI.Enabled := True;
    //VrTimerRecibirContenidos.Enabled := True;
    end;
    If TotalDestinos > 0 then
    begin
    DestinoIndex1 := 0;
    VrTimerEnviar.Enabled := False;
    end;
    BtnDespachar.Caption := 'Detener';
    AbortFlag := false ;
  end else
  begin
    VrTimerRecibirIRI.Enabled := False;
    VrTimerEnviar.Enabled := False;
    BtnDespachar.Caption := 'Comenzar';
    AbortFlag := true ;
  end;

end;
////////////////////////////////////////////////////////


procedure TMainForm.GuardoDatosdelOrigen(Sender: TObject; index : word);
begin
  origenes[index].IdOrigen := OrigenesViewIdOrigen.EditValue;
  origenes[index].Descripcion :=  OrigenesViewDescripcion.EditValue;
  origenes[index].Compactados :=  OrigenesViewCompactados.EditValue;
  origenes[index].ServidorRxIRI :=  OrigenesViewServidorRxIRI.EditValue;
  origenes[index].UsuarioRxIRI :=  OrigenesViewUsuarioRxIRI.EditValue;
  origenes[index].PasswordRxIRI :=  OrigenesViewPasswordRxIRI.EditValue;
  origenes[index].CarpetaIRI :=  OrigenesViewCarpetaIRI.EditValue;
  origenes[index].TimeOutIRI :=  OrigenesViewTimeOutIRI.EditValue;
  origenes[index].ServidorRxContenidos :=  OrigenesViewServidorRxContenidos.EditValue;
  origenes[index].PasswordRxContenidos :=  OrigenesViewPasswordRxContenidos.EditValue;
  origenes[index].UsuarioRxContenidos :=  OrigenesViewUsuarioRxContenidos.EditValue;
  origenes[index].CarpetaContenidos :=  OrigenesViewCarpetaContenidos.EditValue;
  origenes[index].GeneraAvisos :=  OrigenesViewGeneraAvisos.EditValue;
  origenes[index].CantidadFicheros := OrigenesViewCantidadFicheros.EditValue;
  origenes[index].CantidadFicherosAviso :=  OrigenesViewCantidadFicherosAviso.EditValue;
  origenes[index].CantidadFicherosLimite :=  OrigenesViewCantidadFicherosLimite.EditValue;
  origenes[index].FormatoCompactados :=  OrigenesViewFormatoCompactados.EditValue;
  origenes[index].ExtensionCompactados :=  OrigenesViewExtensionCompactados.EditValue;
  origenes[index].FormaRxIRI :=  OrigenesViewFormaRxIRI.EditValue;
  origenes[index].FormaRxContenidos :=  OrigenesViewFormaRxContenidos.EditValue;
  origenes[index].CarpetaTemporalIRI := OrigenesViewCarpetaTemporalIRI.EditValue;
  origenes[index].CarpetaTemporalContenidos :=  OrigenesViewCarpetaTemporalContenidos.EditValue;
  LogText.Lines.Add ( ' '+ OrigenesViewDescripcion.EditValue);
end;

procedure TMainForm.ReciboHaciaCarpetaTemporal(Sender: TObject);
begin
  //LogText.Lines.Add (OrigenesView.DataController.dataset.FieldByName('descripcion').asstring);
end;

procedure TMainForm.GuardoDatosdelDestino(Sender: TObject; index : word);
begin
  destinos[index].idDestino := DestinosViewidDestino.EditValue;
  destinos[index].Descripcion := DestinosViewDescripcion.EditValue;
  destinos[index].ServidorBD := DestinosViewServidorBD.EditValue;
  destinos[index].PuertoBD := DestinosViewPuertoBD.EditValue;
  destinos[index].UsuarioBD := DestinosViewUsuarioBD.EditValue;
  destinos[index].PasswordBD := DestinosViewPasswordBD.EditValue;
  destinos[index].Master := DestinosViewMaster.EditValue;
  destinos[index].ServidorTxIRI:= DestinosViewServidorTxIRI.EditValue;
  destinos[index].PuertoTxIRI := DestinosViewPuertoTxIRI.EditValue;
  destinos[index].UsuarioTxIRI := DestinosViewUsuarioTxIRI.EditValue;
  destinos[index].PasswordTxIRI := DestinosViewPasswordTxIRI.EditValue;
  destinos[index].CarpetaIRI := DestinosViewCarpetaIRI.EditValue;
  destinos[index].ServidorTxContenidos := DestinosViewServidorTxContenidos.EditValue;
  destinos[index].PuertoTxContenidos := DestinosViewPuertoTxContenidos.EditValue;
  destinos[index].UsuarioTxContenidos := DestinosViewUsuarioTxContenidos.EditValue;
  destinos[index].PasswordTxContenidos := DestinosViewPasswordTxContenidos.EditValue;
  destinos[index].CarpetaContenidos := DestinosViewCarpetaContenidos.EditValue;
  destinos[index].Compactados := DestinosViewCompactados.EditValue;
  destinos[index].CantidadIRIenZIP := DestinosViewCantidadIRIenZIP.EditValue;
  destinos[index].FormatoCompactados := DestinosViewFormatoCompactados.EditValue;
  destinos[index].ExtensionCompactados := DestinosViewExtensionCompactados.EditValue;
  destinos[index].Autoridad := DestinosViewAutoridad.EditValue;
  destinos[index].TipodeAutoridad := DestinosViewTipodeAutoridad.EditValue;
  destinos[index].FormaTxIRI := DestinosViewFormaTxIRI.EditValue;
  destinos[index].FormaTxContenidos := DestinosViewFormaTxContenidos.EditValue;
  LogText.Lines.Add (' '+ DestinosViewDescripcion.EditValue);
end;

procedure TMainForm.DespachoHaciaelDestino(Sender: TObject);
begin
  //LogText.Lines.Add (DestinosView.DataController.dataset.FieldByName('descripcion').asstring);
end;

procedure TMainForm.GuardoDatosdelServicio(Sender: TObject; index : word);
begin
  servicios[index].IdServicio := ServiciosViewIdServicio.EditValue;
  servicios[index].Servicio := ServiciosViewServicio.EditValue;
  servicios[index].Extension := ServiciosViewExtension.EditValue;
  servicios[index].BDMasivo := ServiciosViewBDMasivo.EditValue;
  servicios[index].BDTrazas := ServiciosViewBDTrazas.EditValue;
  servicios[index].TablaContenidos := ServiciosViewPrefijoTablaContenidos.EditValue;
  servicios[index].IdFormatosIRI := ServiciosViewIdFormatosIRI.EditValue;
  servicios[index].FormatoIRI := ServiciosViewFormatoIRI.EditValue;
  servicios[index].NumeroServicio := ServiciosViewNumeroServicio.EditValue;
  servicios[index].GrupoServicio := ServiciosViewGrupoServicio.EditValue;
  LogText.Lines.Add (' '+ ServiciosViewExtension.EditValue);
end;


procedure TMainForm.GetSettings ;
var
    IniFile: TMemIniFile ;
    section: string ;
begin
    if NOT FileExists (IniFileName) then exit ;
    try
        IniFile := TMemIniFile.Create (IniFileName) ;
    except
        exit ;
    end ;
    try // finally
        section := 'demomain' ;
        with IniFile do
        begin
// following lines created by DelphiVar tool
  CopySrcDir.Text := ReadString (section, 'CopySrcDir_Text', '') ;
  CopySrcFile.Text := ReadString (section, 'CopySrcFile_Text', '') ;
  CopyTarDir.Text := ReadString (section, 'CopyTarDir_Text', '') ;
  Ftp1LocDir.Text := ReadString (section, 'Ftp1LocDir_Text', '') ;
  Ftp1Path.Text := ReadString (section, 'Ftp1Path_Text', '') ;
  Ftp1SrcName.Text := ReadString (section, 'Ftp1SrcName_Text', '') ;
  Ftp1UpFile.Text := ReadString (section, 'Ftp1UpFile_Text', '') ;
  FtpBandWidth.Text := ReadString (section, 'FtpBandWidth_Text', '') ;
  if ReadString (section, 'FtpCopyAllDir_Checked', 'False') = 'True' then FtpCopyAllDir.Checked := true else FtpCopyAllDir.Checked := false ;
  if ReadString (section, 'FtpDelDone_Checked', 'False') = 'True' then FtpDelDone.Checked := true else FtpDelDone.Checked := false ;
  if ReadString (section, 'FtpDelOldTar_Checked', 'False') = 'True' then FtpDelOldTar.Checked := true else FtpDelOldTar.Checked := false ;
  FtpHost.Text := ReadString (section, 'FtpHost_Text', '') ;
  FtpKeepAlive.Text := ReadString (section, 'FtpKeepAlive_Text', '') ;
  FtpLocDir.Text := ReadString (section, 'FtpLocDir_Text', '') ;
  if ReadString (section, 'FtpNoFeatCmd_Checked', 'False') = 'True' then FtpNoFeatCmd.Checked := true else FtpNoFeatCmd.Checked := false ;
  if ReadString (section, 'FtpNoMd5Crc_Checked', 'False') = 'True' then FtpNoMd5Crc.Checked := true else FtpNoMd5Crc.Checked := false ;
  if ReadString (section, 'FtpNoTmpFile_Checked', 'False') = 'True' then FtpNoTmpFile.Checked := true else FtpNoTmpFile.Checked := false ;
  if ReadString (section, 'FtpNoZlib_Checked', 'False') = 'True' then FtpNoZlib.Checked := true else FtpNoZlib.Checked := false ;
  if ReadString (section, 'FtpOneDelDone_Checked', 'False') = 'True' then FtpOneDelDone.Checked := true else FtpOneDelDone.Checked := false ;
  if ReadString (section, 'FtpOneReplace_Checked', 'False') = 'True' then FtpOneReplace.Checked := true else FtpOneReplace.Checked := false ;
  if ReadString (section, 'FtpPassive_Checked', 'False') = 'True' then FtpPassive.Checked := true else FtpPassive.Checked := false ;
  FtpPassword.Text := ReadString (section, 'FtpPassword_Text', '') ;
  FtpPath.Text := ReadString (section, 'FtpPath_Text', '') ;
  FtpPort.Text := ReadString (section, 'FtpPort_Text', '') ;
  FtpPortSsl.Text := ReadString (section, 'FtpPortSsl_Text', '') ;
  if ReadString (section, 'FtpReplace_Checked', 'False') = 'True' then FtpReplace.Checked := true else FtpReplace.Checked := false ;
  FtpServerType.ItemIndex := ReadInteger (section, 'FtpServerType_ItemIndex', 0) ;
  FtpSrcFile.Text := ReadString (section, 'FtpSrcFile_Text', '') ;
  if ReadString (section, 'FtpSubdirs_Checked', 'False') = 'True' then FtpSubdirs.Checked := true else FtpSubdirs.Checked := false ;
  FtpUsername.Text := ReadString (section, 'FtpUsername_Text', '') ;
  HttpSrcDir.Text := ReadString (section, 'HttpSrcDir_Text', '') ;
  HttpSrcFile.Text := ReadString (section, 'HttpSrcFile_Text', '') ;
  HttpTarDir.Text := ReadString (section, 'HttpTarDir_Text', '') ;
  NetLogon.Text := ReadString (section, 'NetLogon_Text', '') ;
  NetPassword.Text := ReadString (section, 'NetPassword_Text', '') ;
  if ReadString (section, 'ShowDiagsHigh_Checked', 'False') = 'True' then ShowDiagsHigh.Checked := true else ShowDiagsHigh.Checked := false ;
  if ReadString (section, 'ShowDiagsLow_Checked', 'False') = 'True' then ShowDiagsLow.Checked := true else ShowDiagsLow.Checked := false ;
  if ReadString (section, 'ShowDiagsSSL_Checked', 'False') = 'True' then ShowDiagsSSL.Checked := true else ShowDiagsSSL.Checked := false ;
  if ReadString (section, 'FtpNoUtf8_Checked', 'False') = 'True' then FtpNoUtf8.Checked := true else FtpNoUtf8.Checked := false ;
  if ReadString (section, 'ftpNoHost_Checked', 'False') = 'True' then ftpNoHost.Checked := true else ftpNoHost.Checked := false ;
  if ReadString (section, 'ftpIgnoreUtf8_Checked', 'False') = 'True' then ftpIgnoreUtf8.Checked := true else ftpIgnoreUtf8.Checked := false ;
  FtpHost.Items.CommaText := ReadString (section, 'FtpHost_Items', '') ;
  HttpSrcFile.Items.CommaText := ReadString (section, 'HttpSrcFile_Items', '') ;
    end ;
    finally
        IniFile.Free ;
    end ;

end ;

procedure TMainForm.PutSettings ;
var
    IniFile: TMemIniFile ;
    section, temp: string ;
begin
    try
        IniFile := TMemIniFile.Create (IniFileName) ;
    except
        exit ;
    end ;
    try // finally
        section := 'demomain' ;
        with IniFile do
        begin
// following lines created by DelphiVar tool
  WriteString (section, 'CopySrcDir_Text', CopySrcDir.Text) ;
  WriteString (section, 'CopySrcFile_Text', CopySrcFile.Text) ;
  WriteString (section, 'CopyTarDir_Text', CopyTarDir.Text) ;
  WriteString (section, 'Ftp1LocDir_Text', Ftp1LocDir.Text) ;
  WriteString (section, 'Ftp1Path_Text', Ftp1Path.Text) ;
  WriteString (section, 'Ftp1SrcName_Text', Ftp1SrcName.Text) ;
  WriteString (section, 'Ftp1UpFile_Text', Ftp1UpFile.Text) ;
  WriteString (section, 'FtpBandWidth_Text', FtpBandWidth.Text) ;
  if FtpCopyAllDir.Checked then temp := 'True' else temp := 'False' ; WriteString (section, 'FtpCopyAllDir_Checked', temp) ;
  if FtpDelDone.Checked then temp := 'True' else temp := 'False' ; WriteString (section, 'FtpDelDone_Checked', temp) ;
  if FtpDelOldTar.Checked then temp := 'True' else temp := 'False' ; WriteString (section, 'FtpDelOldTar_Checked', temp) ;
  WriteString (section, 'FtpHost_Text', FtpHost.Text) ;
  WriteString (section, 'FtpKeepAlive_Text', FtpKeepAlive.Text) ;
  WriteString (section, 'FtpLocDir_Text', FtpLocDir.Text) ;
  if FtpNoFeatCmd.Checked then temp := 'True' else temp := 'False' ; WriteString (section, 'FtpNoFeatCmd_Checked', temp) ;
  if FtpNoMd5Crc.Checked then temp := 'True' else temp := 'False' ; WriteString (section, 'FtpNoMd5Crc_Checked', temp) ;
  if FtpNoTmpFile.Checked then temp := 'True' else temp := 'False' ; WriteString (section, 'FtpNoTmpFile_Checked', temp) ;
  if FtpNoZlib.Checked then temp := 'True' else temp := 'False' ; WriteString (section, 'FtpNoZlib_Checked', temp) ;
  if FtpOneDelDone.Checked then temp := 'True' else temp := 'False' ; WriteString (section, 'FtpOneDelDone_Checked', temp) ;
  if FtpOneReplace.Checked then temp := 'True' else temp := 'False' ; WriteString (section, 'FtpOneReplace_Checked', temp) ;
  if FtpPassive.Checked then temp := 'True' else temp := 'False' ; WriteString (section, 'FtpPassive_Checked', temp) ;
  WriteString (section, 'FtpPassword_Text', FtpPassword.Text) ;
  WriteString (section, 'FtpPath_Text', FtpPath.Text) ;
  WriteString (section, 'FtpPort_Text', FtpPort.Text) ;
  WriteString (section, 'FtpPortSsl_Text', FtpPortSsl.Text) ;
  if FtpReplace.Checked then temp := 'True' else temp := 'False' ; WriteString (section, 'FtpReplace_Checked', temp) ;
  WriteInteger (section, 'FtpServerType_ItemIndex', FtpServerType.ItemIndex) ;
  WriteString (section, 'FtpSrcFile_Text', FtpSrcFile.Text) ;
  if FtpSubdirs.Checked then temp := 'True' else temp := 'False' ; WriteString (section, 'FtpSubdirs_Checked', temp) ;
  WriteString (section, 'FtpUsername_Text', FtpUsername.Text) ;
  WriteString (section, 'HttpSrcDir_Text', HttpSrcDir.Text) ;
  WriteString (section, 'HttpSrcFile_Text', HttpSrcFile.Text) ;
  WriteString (section, 'HttpTarDir_Text', HttpTarDir.Text) ;
  WriteString (section, 'NetLogon_Text', NetLogon.Text) ;
  WriteString (section, 'NetPassword_Text', NetPassword.Text) ;
  if ShowDiagsHigh.Checked then temp := 'True' else temp := 'False' ; WriteString (section, 'ShowDiagsHigh_Checked', temp) ;
  if ShowDiagsLow.Checked then temp := 'True' else temp := 'False' ; WriteString (section, 'ShowDiagsLow_Checked', temp) ;
  if ShowDiagsSSL.Checked then temp := 'True' else temp := 'False' ; WriteString (section, 'ShowDiagsSSL_Checked', temp) ;
  if FtpNoUtf8.Checked then temp := 'True' else temp := 'False' ; WriteString (section, 'FtpNoUtf8_Checked', temp) ;
  if ftpNoHost.Checked then temp := 'True' else temp := 'False' ; WriteString (section, 'ftpNoHost_Checked', temp) ;
  if ftpIgnoreUtf8.Checked then temp := 'True' else temp := 'False' ; WriteString (section, 'ftpIgnoreUtf8_Checked', temp) ;
  WriteString (section, 'FtpHost_Items', FtpHost.Items.CommaText) ;
  WriteString (section, 'HttpSrcFile_Items', HttpSrcFile.Items.CommaText) ;
        end ;
    finally
        IniFile.UpdateFile ;
        IniFile.Free ;
    end ;

end ;

procedure TMainForm.AddLogText (S: Unicodestring) ;
begin
    if Application.Terminated then exit ;
    S := FormatDateTime (LongTimeMask, Now) + space + S ;
    CurrentLogText.Lines.Add (S) ;   // general unformatted comments about xfers
end ;

procedure TMainForm.Button1Click(Sender: TObject);
begin
  if not VrTimerRecibirIRI.Enabled then
  begin
    VrTimerRecibirIRI.Enabled := True;
    Button1.Caption := 'Detener';
    AbortFlag := false ;
  end else
  begin
    VrTimerRecibirIRI.Enabled := False;
    Button1.Caption := 'Comenzar';
    AbortFlag := true ;
  end;

end;

procedure TMainForm.Button2Click(Sender: TObject);
begin
  if not VrTimerEnviar.Enabled then
  begin
    VrTimerEnviar.Enabled := True;
    Button2.Caption := 'Detener';
    AbortFlag := false ;
  end else
  begin
    VrTimerEnviar.Enabled := False;
    Button2.Caption := 'Comenzar';
    AbortFlag := true ;
  end;
end;

procedure TMainForm.AddLogDelim (S: Unicodestring) ;
begin
    CurrentLogDelim.Lines.Add (S) ;   // delimited formatted xfer information
end ;

procedure TMainForm.doAbortClick(Sender: TObject);
begin
    AbortFlag := true ;
end;

procedure TMainForm.doExitClick(Sender: TObject);
begin
    AbortFlag := true ;
    Close ;
end;

procedure TMainForm.FormCreate(Sender: TObject);
var
    S: string ;
    I: TFtpType ;
begin
    IcsLog := TIcsLogger.Create (self) ;
    IcsLog.OnIcsLogEvent := IcsLogEvent ;
    FtpServerType.Items.Clear ;
    for I := Low(TFtpType) to High(TFtpType) do
                 FtpServerType.Items.Add (FtpTypeStrings [I]) ;
    LabelVersion.Caption := GetOSVersion ;
    IniFileName := ExtractFilePath (ParamStr (0)) + 'xferdemo3.ini' ;
    GetSettings ;

{$IFDEF USE_SSL}
    {$IFDEF UNICODE}
    S := 'SSL Enabled, Unicode GUI' ;
    {$ELSE}
    S := 'SSL Enabled, ASCII GUI' ;
    {$ENDIF}
{$ELSE}
    {$IFDEF UNICODE}
    S := 'SSL Disabled, Unicode GUI' ;
    {$ELSE}
    S := 'SSL Disabled, ASCII GUI' ;
    {$ENDIF}
{$ENDIF}
{$IFDEF USE_TNT}
    LogText.Visible := false ;
    CurrentLogText := TTntMemo.Create(self);
    CurrentLogText.ParentFont  := LogText.ParentFont ;
    CurrentLogText.Parent      := LogText.Parent ;
    CurrentLogText.Align       := LogText.Align ;
    CurrentLogText.ScrollBars  := LogText.ScrollBars ;
    CurrentLogText.WordWrap    := LogText.WordWrap ;
    CurrentLogText.Font        := LogText.Font ;
    CurrentLogText.Left        := LogText.Left ;
    CurrentLogText.Top         := LogText.Top ;
    CurrentLogText.Width       := LogText.Width ;
    CurrentLogText.Height      := LogText.Height ;
    LogDelim.Visible := false ;
    CurrentLogDelim := TTntMemo.Create(self);
    CurrentLogDelim.ParentFont  := LogDelim.ParentFont ;
    CurrentLogDelim.Parent      := LogDelim.Parent ;
    CurrentLogDelim.Align       := LogDelim.Align ;
    CurrentLogDelim.ScrollBars  := LogDelim.ScrollBars ;
    CurrentLogDelim.WordWrap    := LogDelim.WordWrap ;
    CurrentLogDelim.Font        := LogDelim.Font ;
    CurrentLogDelim.Left        := LogDelim.Left ;
    CurrentLogDelim.Top         := LogDelim.Top ;
    CurrentLogDelim.Width       := LogDelim.Width ;
    CurrentLogDelim.Height      := LogDelim.Height ;
    S := S + CRLF + 'Unicode Display' ;
{$ELSE}
    CurrentLogText := LogText ;
    CurrentLogDelim := LogDelim ;
{$ENDIF}
    LabelSslState.Caption := S ;
    AddLogText (DateToStr (Date)) ;
   
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
    PutSettings ;
    IcsLog.Free ;
end;

procedure TMainForm.IcsLogEvent (Sender: TObject; LogOption: TLogOption;
                                       const Msg : String) ;
begin
    AddLogText (Msg) ;
end ;

procedure TMainForm.onCopyEventW (LogLevel: TLogLevel ; Info: UnicodeString ;
                                                  var Cancel: boolean) ;
begin
    if (LogLevel = LogLevelInfo) or (LogLevel = LogLevelFile) then
    begin
        AddLogText (Info) ;
        LabelProgress.Caption := Info ;
    end ;
    if (LogLevel = LogLevelProg) then
    begin
        if Info <> '' then LabelProgress.Caption := 'ProgresoRx: ' + Info + ' ';
    end ;
    if (LogLevel = LogLevelDiag) and (ShowDiagsLow.Checked or
                             ShowDiagsHigh.Checked) then AddLogText (Info) ;
    if (LogLevel = LogLevelDelimFile) then AddLogDelim (Info) ;
    if (LogLevel = LogLevelDelimTot) then AddLogDelim (Info) ;
    if AbortFlag then Cancel := true ;
end ;

procedure TMainForm.doCopyListClick(Sender: TObject);
begin
    AddLogText (DateTimeToAStr (Now)) ;
    AbortFlag := false ;
    MagFileCopyClient := TMagFileCopyW.Create (self) ;
    doCopyFiles.Enabled := false ;
    doCopyCheck.Enabled := false ;
    doCopyList.Enabled := false ;
    doCopyAbort.Enabled := true ;
    try
        MagFileCopyClient.CopyEvent := onCopyEventW ;
        AddLogText (MagFileCopyClient.DispLocFiles (CopySrcDir.Text,
                                    CopySrcFile.Text, FCTypeMaskDir, true, false)) ;
    finally
        FreeAndNil (MagFileCopyClient) ;
        LabelProgress.Caption := 'Listado Completado ' ;
        doCopyFiles.Enabled := true ;
        doCopyCheck.Enabled := true ;
        doCopyList.Enabled := true ;
        doCopyAbort.Enabled := false ;
    end ;
end;

procedure TMainForm.CopyFiles(Sender: TObject);
var
    taskres: TTaskResult ;
    checkflag: boolean ;
begin
    AddLogText (DateTimeToAStr (Now)) ;
    AbortFlag := false ;
    MagFileCopyClient := TMagFileCopyW.Create (self) ;
    doCopyFiles.Enabled := false ;
    doCopyCheck.Enabled := false ;
    doCopyList.Enabled := false ;
    doCopyAbort.Enabled := true ;
    try
        checkflag := false ;
        if Sender = doCopyCheck then checkflag := true ;
        try
            with MagFileCopyClient do
            begin
                MultiDir := false ; // true copy multiple specific directorie
           //  multi directories are passed as srcdir+tab+tardir+recsep (repeat)
           //   MultiDirList :=
           // or as a pair of TStringLists
           //   SrcDirList :=  ;
           //   TarDirList :=  ;
           // not multidirs, pass source, file and target separately
                SrcDir := CopySrcDir.Text ;
                SrcFName := CopySrcFile.Text ;
                TarDir := CopyTarDir.Text ;
            // CopyType: FCTypeSingle, FCTypeMaskDir, FCTypeArchDir, FCTypeAllDir, FCTypeDates
                CopyType := FCTypeMaskDir ;
                SubDirs := false ;   // true copy all sub directories
                DelDone := true ;  // true delete source file after copy
                DelOldTar := false ; // true delete target files not in source directories
                Mask := false ;     // true, allow date/time masked characters in SrcFName
                Prev := false ;     // true, use yesterday's date for Mask
            // Repl: FCReplNever, FCReplAlways, FCReplDiff, FCReplNewer
                Repl := FCReplNever ;
                ReplRO := true ;    // true, replace read only files
                Safe := true ;     // true, copy file with TMP extension, rename when done
                LocalHost := OverbyteIcsWSocket.LocalHostName ;
                CopyEvent := onCopyEventW ;
            { following properties only available if VCLZip available
                Zipped := false ;
                ZipDownDel := false ;
           // ZipExtFmt: ExtnAdd, ExtnReplace
           // ZipPath: PathNone, PathNew, PathOriginal, PathNewOrig, PathSpecific, PathSpecOrig
           // ZipType: TypeUnzip, TypeSrcAddX, TypeSrcReplX, TypeSrcDirs
                ZipType := TypeUnzip ;
                ZipPath := PathNone ;
                ZipDir := '' ;   }
                IgnoreFileExt := 'tmp' ;
                taskres := SelCopyFiles (checkflag) ;   // main file copy function
                AddLogText ('Resultado: ' + GetTaskResName (taskres)) ;
                AddLogText (ReqResponse) ;
            end ;
        except
            AddLogText ('Error de Copia - ' + GetExceptMess (ExceptObject)) ;
        end ;
    finally
        FreeAndNil (MagFileCopyClient) ;
        LabelProgress.Caption := 'Copia Completada ' +DateTimeToStr(now) + ' ';
        doCopyFiles.Enabled := true ;
        doCopyCheck.Enabled := true ;
        doCopyList.Enabled := true ;
        doCopyAbort.Enabled := false ;
    end ;
end;


procedure TMainForm.DeleteFiles(Sender: TObject);
var
    taskres: TTaskResult ;
    checkflag: boolean ;
begin
    AddLogText (DateTimeToAStr (Now)) ;
    AbortFlag := false ;
    MagFileCopyClient := TMagFileCopyW.Create (self) ;
    doDeleteFiles.Enabled := false ;
    doDeleteCheck.Enabled := false ;
    doCopyAbort.Enabled := true ;
    try
        checkflag := false ;
        if Sender = doDeleteCheck then checkflag := true ;
        try
            with MagFileCopyClient do
            begin
                SrcDir := CopyTarDir.Text ;
                SrcFName := CopySrcFile.Text ;
                MultiDir := false ; // true copy multiple specific directorie
                SubDirs := false ;   // true copy all sub directories
                Mask := false ;     // true, allow date/time masked characters in SrcFName
                Prev := false ;     // true, use yesterday's date for Mask
                CopyLoDT := 0 ;     // lower date range
                CopyHiDT := Now ;   // higher date range
                CopyEvent := onCopyEventW ;
                taskres := DeleteFiles (checkflag) ;   // main file delete function
                AddLogText ('Resultado: ' + GetTaskResName (taskres)) ;
                AddLogText (ReqResponse) ;
            end ;
        except
            AddLogText ('Error Copiando - ' + GetExceptMess (ExceptObject)) ;
        end ;
    finally
        FreeAndNil (MagFileCopyClient) ;
        LabelProgress.Caption := 'Borrado Completado ' ;
        doDeleteFiles.Enabled := true ;
        doDeleteCheck.Enabled := true ;
        doCopyAbort.Enabled := false ;
    end ;
end;

procedure TMainForm.onHttpEventW (LogLevel: TLogLevel ; Info: UnicodeString ;
                                                  var Cancel: boolean) ;
begin
    if (LogLevel = LogLevelInfo) or (LogLevel = LogLevelFile) then
    begin
        AddLogText (Info) ;
        LabelProgress.Caption := Info ;
    end ;
    if (LogLevel = LogLevelProg) then LabelProgress.Caption := 'ProgresoRx: ' + Info ;
    if (LogLevel = LogLevelDiag) and (ShowDiagsLow.Checked or
                             ShowDiagsHigh.Checked) then AddLogText (Info) ;
    if (LogLevel = LogLevelDelimFile) then AddLogDelim (Info) ;
    if (LogLevel = LogLevelDelimTot) then AddLogDelim (Info) ;
    if AbortFlag then Cancel := true ;
end ;

procedure TMainForm.HttpDownload(Sender: TObject);
var
    taskres: TTaskResult ;
    checkflag: boolean ;
const
    ReplaceList: array[0..2] of TFileCopyRepl = (FCReplNever, FCReplAlways, FCReplNewer) ;
begin
    AddLogText (DateTimeToAStr (Now)) ;
    AbortFlag := false ;
    doHttpDownCheck.Enabled := false ;
    doHttpDownFiles.Enabled := false ;
    doHttpAbort.Enabled := true ;
    if HttpSrcDir.Items.IndexOf (HttpSrcDir.Text) < 0 then
    begin
        if HttpSrcDir.Items.Count > 50 then
                HttpSrcDir.Items.Delete (HttpSrcDir.Items.Count - 1) ;
        HttpSrcDir.Items.Insert (0, HttpSrcDir.Text) ;
    end ;
    MagHTTPClient := TMagHTTPW.Create (self) ;
    try
        try
            checkflag := false ;
            if Sender = doHttpDownCheck then checkflag := true ;
            with MagHTTPClient do
            begin
                URLList := HttpSrcDir.Text ;  // one or more source URLs separated by CRLF
                SrcMask := HttpSrcFile.Text ; // optional source file mask to restrict downloads
                DownDir := HttpTarDir.Text ;  // directory for downloaded files
                KeepPath := false ;           // if true, use HTTP path for subdirs
                KeepHost := false ;           // if true, use HTTP host for subdir
                ParseHTML := true ;           // if true, parse HTML page for links to files
                Repl := ReplaceList [2] ;     // replace options
                ReplRO := true ;              // replace read only files
  //              Timeout := 60 ;               // command timeout
                LogFiles := true ;            // log each file downloaded
                LogProt := ShowDiagsHigh.Checked ;// log HTTP protocol
                LogLDir := false ;            // log destination directory
                LogRDir := true ;             // log created HTTP directory
                Options := Options + [httpoEnableContentCoding] ;  // 27 Nov 2005
{$IFNDEF NO_DEBUG_LOG}
                IcsLogger := IcsLog ;
                IcsLog.LogOptions := [] ;
                if ShowDiagsLow.Checked then
                    IcsLog.LogOptions := [loDestEvent, loAddStamp] + LogAllOptInfo ; // 3 Jan 2006
{$IFDEF USE_SSL}
                if ShowDiagsSSL.Checked then
                    IcsLog.LogOptions := IcsLog.LogOptions + [loSslDump] ;
{$ENDIF}
{$ENDIF}
{$IFDEF USE_SSL}
                SslSessCache := true ;  // 27 Nov 2005
{$ENDIF}
                CopyEvent := onHttpEventW ;
           //   ProxyPort :=  ;
           //   Proxy :=  ;
             { following properties only available if VCLZip available
                Zipped := false ;
                ZipDownDel := false ;
           // ZipExtFmt: ExtnAdd, ExtnReplace
           // ZipPath: PathNone, PathNew, PathOriginal, PathNewOrig, PathSpecific, PathSpecOrig
           // ZipType: TypeUnzip, TypeSrcAddX, TypeSrcReplX, TypeSrcDirs
                ZipPath := PathNone ;
                ZipDir := '' ;   }
                taskres := Download (checkflag) ;  // main download function
                AddLogText ('Resultado: ' + GetTaskResName (taskres)) ;
                AddLogText (ReqResponse) ;
            end ;
        except
            AddLogText ('Download Error - ' + GetExceptMess (ExceptObject)) ;
        end ;
    finally
        FreeAndNil (MagHTTPClient) ;
        LabelProgress.Caption := 'HTTP Completado ' ;
        doHttpDownCheck.Enabled := true ;
        doHttpDownFiles.Enabled := true ;
        doHttpAbort.Enabled := false ;
    end ;
end;

procedure TMainForm.onFtpEventW (LogLevel: TLogLevel ; Info: UnicodeString ;
                                                  var Cancel: boolean) ;
begin
    if (LogLevel = LogLevelInfo) or (LogLevel = LogLevelFile) then
    begin
        AddLogText (Info) ;
        LabelProgress.Caption := Info ;
    end ;
    if (LogLevel = LogLevelProg) then
    begin
        LabelProgress.Caption := 'ProgresoRx: ' + Info ;
//        AddLogText (Info) ; // TEMP !!!!
    end ;
    if (LogLevel = LogLevelDiag) and (ShowDiagsLow.Checked or
                             ShowDiagsHigh.Checked) then AddLogText (Info) ;
    if (LogLevel = LogLevelDelimFile) then AddLogDelim (Info) ;
    if (LogLevel = LogLevelDelimTot) then AddLogDelim (Info) ;
    if AbortFlag then Cancel := true ;
end ;

function TMainForm.SetFTPGen: boolean ;
var
    bandwidth: integer ;
begin
    AddLogText (DateTimeToAStr (Now)) ;
    AbortFlag := false ;
    result := false ;
    if FtpHost.Items.IndexOf (FtpHost.Text) < 0 then
    begin
        if FtpHost.Items.Count > 50 then
                FtpHost.Items.Delete (FtpHost.Items.Count - 1) ;
        FtpHost.Items.Insert (0, FtpHost.Text) ;
    end ;
    try
        with MagFTPClient do
        begin
            Utf8DiagFlag := ShowDiagsUtf8.Checked ;  // 13 Nov 2008   
            LocalHost := OverbyteIcsWSocket.LocalHostName ;
            HostName1 := FtpHost.Text ;
            HostName2 := '' ;
            UserName := FtpUsername.Text ;
            PassWord := FtpPassword.Text ;
            FtpType := TFtpType (FtpServerType.ItemIndex) ;
            Port := FtpPort.Text ;
            AttemptDelay := 5 ;
            MaxAttempts := 2 ;  // logon attempts
            FailRepeat := 3 ;   // retries for failed xfers
            KeepAliveSecs := AscToInt (FtpKeepAlive.Text) ;  // 10 July 2006
       // ConnectionType: ftpDirect, ftpProxy, ftpSocks4, ftpSocks4A, ftpSocks5
            ConnectionType := ftpDirect ;
       //     ConnectionType := ftpSocks4 ;
            SocksPort := '' ;
            SocksServer := '' ;
            ProxyPort := '' ;
            ProxyServer := '' ;
            SocksUsercode := '' ;
            SocksPassword := '' ;
            if ConnectionType = ftpProxy then
            begin
                ProxyPort := FtpPort.Text ;
                ProxyServer := '' ;
            end
            else if ConnectionType >= ftpSocks4 then
            begin
                SocksPort := '1080' ;
                SocksServer := '192.168.1.66' ;
                if ConnectionType = ftpSocks5 then
                begin
                    SocksUsercode := '' ;
                    SocksPassword := '' ;
                end ;
            end ;
            PassiveX := FtpPassive.Checked ;  // must be after connection type
       // HostType: FTPTYPE_NONE, FTPTYPE_UNIX, FTPTYPE_DOS, FTPTYPE_MVS, FTPTYPE_AS400, FTPTYPE_MLSD
            HostType := FTPTYPE_NONE ;
       // TXferMode: XferModeBinary, XferModeAscii
            XferMode := XferModeBinary ;
       // TCaseFile: FileLowerCase, FileMixedCase
            CaseFile := FileLowerCase ;
            DiffStampMins := 62 ;
            Timeout := 600 ;    // 18 Sept 2006, 60 secs was too slow for MD5Sum
            DispLog := true ;
            DispFiles := true ;
            DispRDir:= true ;
            DispLDir:= false ;
            MinResSize := 65535 ;   // also used for resume overlap
//            MinResSize := 0 ;       // test no resume overlap
            CopyEvent := onFtpEventW ;
            UpArchDir := '' ;
            UpArchive := false ;
            ResFailed := true ;
            UseCompression := true ;  // 3 Dec 2005
            if FtpNoFeatCmd.Checked then // 7 Nov 2007
                MagFtpOpts := MagFtpOpts + [magftpNoFeat]
            else
                MagFtpOpts := MagFtpOpts - [magftpNoFeat] ;
            if FtpNoMd5Crc.Checked then // 5 Jan 2008
                MagFtpOpts := MagFtpOpts + [magftpNoMd5Crc]
            else
                MagFtpOpts := MagFtpOpts - [magftpNoMd5Crc] ;
            if FtpNoZlib.Checked then // 5 Jan 2008
                MagFtpOpts := MagFtpOpts + [magftpNoZlib]
            else
                MagFtpOpts := MagFtpOpts - [magftpNoZlib] ;
            if FtpNoTmpFile.Checked then // 5 Jan 2008
                MagFtpOpts := MagFtpOpts + [magftpNoTmpFile]
            else
                MagFtpOpts := MagFtpOpts - [magftpNoTmpFile] ;
            if FtpNoUtf8.Checked then   // 20 Sept 2008
                MagFtpOpts := MagFtpOpts + [magftpNoUtf8]
            else
                MagFtpOpts := MagFtpOpts - [magftpNoUtf8] ;
            if ftpNoHost.Checked then   // 20 Sept 2008
                MagFtpOpts := MagFtpOpts + [magftpNoHost]
            else
                MagFtpOpts := MagFtpOpts - [magftpNoHost] ;
            if ftpIgnoreUtf8.Checked then   // 20 Sept 2008
                MagFtpOpts := MagFtpOpts + [magftpIgnoreUtf8]
            else
                MagFtpOpts := MagFtpOpts - [magftpIgnoreUtf8] ;
       // 16 Apr 2009 disable MD5 or CRC separately for testing
        //  MagFtpOpts := MagFtpOpts + [magftpNoCrc] ;
            MagFtpOpts := MagFtpOpts + [magftpNoMd5] ;

            ZlibNoCompExt := '.zip;.rar;.7z;.cab;.lzh;.gz;.avi;.wmv;.mpg;.mp3;.jpg;.png;'; // 2 Dec 2007
            ZlibMaxSize := 500000000 ;   // 9 Dec 2007 500 megs
            MaxResumeAttempts := 10 ;    // 31 Dec 2007
            bandwidth := AscToInt (FtpBandWidth.Text) ;  // 31 Dec 2007
            if bandwidth > 0 then
            begin
                BandwidthLimit := bandwidth * KBYTE ;
                Options := Options + [ftpBandwidthControl] ;
            end
            else
                Options := Options - [ftpBandwidthControl] ;
{$IFNDEF NO_DEBUG_LOG}
            IcsLogger := IcsLog ;
            IcsLog.LogOptions := [] ;
            if ShowDiagsLow.Checked then
                IcsLog.LogOptions := [loDestEvent, loAddStamp] +
                                                 LogAllOptInfo ; // 7 Jan 2006
{$IFDEF USE_SSL}
            if ShowDiagsSSL.Checked then
                    IcsLog.LogOptions := IcsLog.LogOptions + [loSslDump] ;
{$ENDIF}
{$ENDIF}
{$IFDEF USE_SSL}
            FtpSslPort := FtpPortSsl.Text ;
            SslSessCache := true ;  // 27 Nov 2005
{$ENDIF}
        { following properties only available if VCLZip available
            Zipped := false ;
            ZipDownDel := false ;
        // ZipExtFmt: ExtnAdd, ExtnReplace
        // ZipPath: PathNone, PathNew, PathOriginal, PathNewOrig, PathSpecific, PathSpecOrig
        // ZipType: TypeUnzip, TypeSrcAddX, TypeSrcReplX, TypeSrcDirs
            ZipExtFmt := ExtnAdd ;
            ZipPath := PathNone ;
            ZipDir := '' ;   }
            DispRemList := true ;
        end ;
    except
        AddLogText ('Error FTP- ' + GetExceptMess (ExceptObject)) ;
        result := true ;
    end ;
end;

function TMainForm.sdDateTimeFromString(const ADate: UTF8String): TDateTime;
// Convert the string ADate to a TDateTime according to the W3C date/time specification
// as found here: http://www.w3.org/TR/NOTE-datetime
var
  AYear, AMonth, ADay, AHour, AMin, ASec, AMSec: word;
begin
  AYear  := StrToInt(string(copy(ADate, 1, 4)));
  AMonth := StrToInt(string(copy(ADate, 6, 2)));
  ADay   := StrToInt(string(copy(ADate, 9, 2)));
  if Length(ADate) > 16 then
  begin
    AHour := StrToInt(string(copy(ADate, 12, 2)));
    AMin  := StrToInt(string(copy(ADate, 15, 2)));
    ASec  := StrToIntDef(string(copy(ADate, 18, 2)), 0); // They might be omitted, so default to 0
    AMSec := StrToIntDef(string(copy(ADate, 21, 3)), 0); // They might be omitted, so default to 0
  end else
  begin
    AHour := 0;
    AMin  := 0;
    ASec  := 0;
    AMSec := 0;
  end;
  Result :=
    EncodeDate(AYear, AMonth, ADay) +
    EncodeTime(AHour, AMin, ASec, AMSec);
end;


procedure TMainForm.VrTimerRecibirIRITimer(Sender: TObject);
var
  l: word;
  FXml: TNativeXml;
  i,j,k, m,n,p,q: word;
  RootName, Hijos: TXmlNode;
  sr: TSearchRec;
  mascara, fichero,carpeta,carpetadestino : string;
  generico : boolean;
  identificador, comodin : IXMLNode;
  nodelist : IXMLNodeList;
begin
  if  origenes[OrigenIndex1].Compactados then
  begin
     if origenes[OrigenIndex1].FormaRxIRI = 'carpeta' then
     begin
      for l  := 0 to TotalServicios - 1 do
      begin
        CopySrcDir.Text := origenes[OrigenIndex1].CarpetaIRI ;
        CopySrcFile.Text := '*'+ servicios[l].Extension+origenes[OrigenIndex1].ExtensionCompactados;
        CopyTarDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI;
        CopyFiles(Sender);
        ///////Descompactar cada IRI y Contenido a su carpeta temporal y borrar .zip
      end;
     end;

     if origenes[OrigenIndex1].FormaRxIRI = 'ftp' then
     begin
      for l  := 0 to TotalServicios - 1 do
      begin
        FtpHost.Text := origenes[OrigenIndex1].ServidorRxIRI;
        FtpUsername.Text := origenes[OrigenIndex1].UsuarioRxIRI;
        FtpPassword.Text := origenes[OrigenIndex1].PasswordRxIRI;
        FtpPath.Text := origenes[OrigenIndex1].CarpetaIRI;

        FtpSrcFile.Text := '*'+ servicios[l].Extension+origenes[OrigenIndex1].ExtensionCompactados;
        FtpLocDir.Text :=  origenes[OrigenIndex1].CarpetaTemporalIRI;
        FtpDownload(Sender);
        ///////Descompactar cada IRI y Contenido a su carpeta temporal y borrar .zip
      end;
     end;

     if origenes[OrigenIndex1].FormaRxIRI = 'http' then
     begin
      for l  := 0 to TotalServicios - 1 do
      begin
        HttpSrcDir.Text := origenes[OrigenIndex1].ServidorRxIRI;
        NetLogon.Text := origenes[OrigenIndex1].UsuarioRxIRI;
        NetPassword.Text := origenes[OrigenIndex1].PasswordRxIRI;

        HttpSrcFile.Text := '*'+ servicios[l].Extension+origenes[OrigenIndex1].ExtensionCompactados;
        HttpTarDir.Text :=  origenes[OrigenIndex1].CarpetaTemporalIRI;
        HttpDownload(Sender);
        ///////Descompactar cada IRI y Contenido a su carpeta temporal y borrar .zip
      end;
     end;
  end
  else
  begin
     if origenes[OrigenIndex1].FormaRxIRI = 'carpeta' then
     begin
      for l  := 0 to TotalServicios - 1 do
      begin
        CopySrcDir.Text := origenes[OrigenIndex1].CarpetaIRI ;
        CopySrcFile.Text := '*'+ servicios[l].Extension;
        CopyTarDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI;
        CopyFiles(Sender);
      end;
     end;

     if origenes[OrigenIndex1].FormaRxIRI = 'ftp' then
     begin
      for l  := 0 to TotalServicios - 1 do
      begin
        FtpHost.Text := origenes[OrigenIndex1].ServidorRxIRI;
        FtpUsername.Text := origenes[OrigenIndex1].UsuarioRxIRI;
        FtpPassword.Text := origenes[OrigenIndex1].PasswordRxIRI;
        FtpPath.Text := origenes[OrigenIndex1].CarpetaIRI;

        FtpSrcFile.Text := '*'+ servicios[l].Extension;
        FtpLocDir.Text :=  origenes[OrigenIndex1].CarpetaTemporalIRI;
        FtpDownload(Sender);
      end;
     end;

     if origenes[OrigenIndex1].FormaRxIRI = 'http' then
     begin
      for l  := 0 to TotalServicios - 1 do
      begin
        HttpSrcDir.Text := origenes[OrigenIndex1].ServidorRxIRI;
        NetLogon.Text := origenes[OrigenIndex1].UsuarioRxIRI;
        NetPassword.Text := origenes[OrigenIndex1].PasswordRxIRI;

        HttpSrcFile.Text := '*'+ servicios[l].Extension;
        HttpTarDir.Text :=  origenes[OrigenIndex1].CarpetaTemporalIRI;
        HttpDownload(Sender);
      end;
     end;


     ///Comienzo a traer los contenidos a CarpetaContenidos
     for i  := 0 to TotalServicios - 1 do
      begin
        mascara := origenes[OrigenIndex1].CarpetaTemporalIRI +'*'+ servicios[i].Extension;
        if SysUtils.FindFirst(mascara, faArchive, sr) = 0 then
        begin
          repeat

            //XMLDocument1 := TXMLDocument.Create(nil);
            XMLDocument1.FileName :=(origenes[OrigenIndex1].CarpetaTemporalIRI+sr.Name);
            //Comctrls.CoInitialize;
            XMLDocument1.Active:=True;
            //identificador:=  XMLDocument1.DocumentElement;
            //if identificador.nodeName='RECOPLA' then
            //begin
              //.First.ChildNodes.FindNode('item');


              //////////////////////////////////////////////////////////
              ///  aqui se traen los contenidos descritos en el IRI xml a la carpeta temporal de
              //contenidos


              nodelist := XMLDocument1.DocumentElement.ChildNodes;
              for n := 0 to nodelist.Count - 1 do
              begin
                case servicios[i].NumeroServicio of
                 15 : begin
                       with Cartas  do
                       begin
                         CarpetaContenido :=nodelist[n].ChildNodes['CarpetaFichero'].Text;
                         FicheroContenido:=nodelist[n].ChildNodes['Fichero'].Text;
                       end;

                       fichero:=Cartas.FicheroContenido;
                       carpeta:=origenes[OrigenIndex1].CarpetaTemporalContenidos;

                       if origenes[OrigenIndex1].FormaRxContenidos = 'carpeta' then
                       begin
                          CopySrcDir.Text := origenes[OrigenIndex1].CarpetaIRI+carpeta ;
                          //CopySrcDir.Text := origenes[OrigenIndex1].CarpetaIRI;
                          CopySrcFile.Text := nodelist[n].ChildNodes['Nota'].Text;
                          CopyTarDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                          CopyFiles(Sender);
                       end;

                       if origenes[OrigenIndex1].FormaRxContenidos = 'ftp' then
                       begin
                          FtpHost.Text := origenes[OrigenIndex1].ServidorRxContenidos;
                          FtpUsername.Text := origenes[OrigenIndex1].UsuarioRxContenidos;
                          FtpPassword.Text := origenes[OrigenIndex1].PasswordRxContenidos;
                          Ftp1Path.Text := origenes[OrigenIndex1].CarpetaIRI+carpeta;

                          Ftp1SrcName.Text := nodelist[n].ChildNodes['Nota'].Text;
                          Ftp1LocDir.Text :=  origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                          doFtpDown1Click(Sender);
                       end;

                       if origenes[OrigenIndex1].FormaRxContenidos = 'http' then
                       begin
                          HttpSrcDir.Text := origenes[OrigenIndex1].ServidorRxContenidos;
                          NetLogon.Text := origenes[OrigenIndex1].UsuarioRxContenidos;
                          NetPassword.Text := origenes[OrigenIndex1].PasswordRxContenidos;

                          HttpSrcFile.Text := nodelist[n].ChildNodes['Nota'].Text;
                          HttpTarDir.Text :=  origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                          HttpDownload(Sender);
                       end;

                 end;
                 10 : begin
                       with Sms  do
                       begin
                         CarpetaContenido :=nodelist[n].ChildNodes['CarpetaContenido'].Text;
                         FicheroContenido:=nodelist[n].ChildNodes['FicheroContenido'].Text;
                       end;

                       fichero:=Sms.CarpetaContenido;
                       carpeta:=Sms.CarpetaContenido;


                 end;
                 3  : begin
                       with Telefonia  do
                       begin
                         CarpetaContenido :=nodelist[n].ChildNodes['CarpetaContenido'].Text;
                         FicheroContenido:=nodelist[n].ChildNodes['FicheroContenido'].Text;
                       end;

                       fichero:=Telefonia.FicheroContenido;
                       carpeta:=Telefonia.CarpetaContenido;
                 end;
                 23 : begin
                       with TxCR  do
                       begin
                         CarpetaContenido :=nodelist[n].ChildNodes['CarpetaContenido'].Text;
                         FicheroContenido:=nodelist[n].ChildNodes['FicheroContenido'].Text;
                       end;

                       fichero:=TxCr.FicheroContenido;
                       carpeta:=origenes[OrigenIndex1].CarpetaTemporalContenidos;
                 end;

                end;

                if origenes[OrigenIndex1].FormaRxContenidos = 'carpeta' then
                 begin
                    CopySrcDir.Text := origenes[OrigenIndex1].CarpetaIRI+carpeta ;
                    //CopySrcDir.Text := origenes[OrigenIndex1].CarpetaIRI;
                    CopySrcFile.Text := fichero;
                    CopyTarDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                    CopyFiles(Sender);
                 end;

                 if origenes[OrigenIndex1].FormaRxContenidos = 'ftp' then
                 begin
                    FtpHost.Text := origenes[OrigenIndex1].ServidorRxContenidos;
                    FtpUsername.Text := origenes[OrigenIndex1].UsuarioRxContenidos;
                    FtpPassword.Text := origenes[OrigenIndex1].PasswordRxContenidos;
                    Ftp1Path.Text := origenes[OrigenIndex1].CarpetaIRI+carpeta;

                    Ftp1SrcName.Text := fichero;
                    Ftp1LocDir.Text :=  origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                    doFtpDown1Click(Sender);
                 end;

                 if origenes[OrigenIndex1].FormaRxContenidos = 'http' then
                 begin
                    HttpSrcDir.Text := origenes[OrigenIndex1].ServidorRxContenidos;
                    NetLogon.Text := origenes[OrigenIndex1].UsuarioRxContenidos;
                    NetPassword.Text := origenes[OrigenIndex1].PasswordRxContenidos;

                    HttpSrcFile.Text := fichero;
                    HttpTarDir.Text :=  origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                    HttpDownload(Sender);
                 end;

              end;//for nodelist


              /////////////////////////////////////////////////

              //aqui se envia fichero iri y de contenido a los destinos o a
              //genericos


              for n := 0 to nodelist.Count - 1 do
              begin
                case servicios[i].NumeroServicio of
                 15 :begin
                       with Cartas  do
                       begin
                         IdServicio:=servicios[i].IdServicio;
                         Modo:=nodelist[n].ChildNodes['Modo'].Text;
                         Municipio:=nodelist[n].ChildNodes['Municipio'].Text;
                         Sentido :=nodelist[n].ChildNodes['Sentido'].Text;
                         Clasificacion:=nodelist[n].ChildNodes['Clasificacion'].Text;
                         Remitente :=nodelist[n].ChildNodes['Remitente'].Text;
                         DireccionRemitente:=nodelist[n].ChildNodes['DireccionRemitente'].Text;
                         Destinatario:=nodelist[n].ChildNodes['Destinatario'].Text;
                         DireccionDestinatario:=nodelist[n].ChildNodes['DireccionDestinatario'].Text;
                         CarpetaContenido :=nodelist[n].ChildNodes['CarpetaFichero'].Text;
                         FicheroContenido:=nodelist[n].ChildNodes['Fichero'].Text;
                         CarpetaNota:=nodelist[n].ChildNodes['CarpetaNota'].Text;
                         Nota:=nodelist[n].ChildNodes['Nota'].Text;
                         Fecha:=sdDateTimeFromString(nodelist[n].ChildNodes['fecha'].Text);
                         Observaciones :=nodelist[n].ChildNodes['Observaciones'].Text;
                       end;

                       fichero:=Cartas.FicheroContenido;
                       carpeta:=Cartas.CarpetaContenido;

                       ///////////////////////////////////////////////////////
                       generico := false;
                       for m  := 0 to TotalDestinos - 1 do
                       begin
                          DMDespachador.ConexionDestino.Close;
                          DMDespachador.ConexionDestino.server := destinos[m].ServidorBD;
                          DMDespachador.ConexionDestino.port := destinos[m].PuertoBD;
                          DMDespachador.ConexionDestino.database :=destinos[m].Autoridad;
                          DMDespachador.ConexionDestino.username := destinos[m].UsuarioBD;
                          DMDespachador.ConexionDestino.password := destinos[m].PasswordBD;
                          DMDespachador.ConexionDestino.Open;
                          DMDespachador.Claves.ParamByName(
                            'chequeo').AsString := Cartas.Remitente;
                          DMDespachador.Claves.ParamByName(
                            'chequeo1').AsString := Cartas.Destinatario;
                          DMDespachador.Claves.ParamByName(
                            'LIID').AsInteger := 0;
                          DMDespachador.Claves.ExecProc;
                          if DMDespachador.Claves.RecordCount > 0 then
                           begin
                             DMDespachador.Claves.First;
                             for p := 0 to (DMDespachador.Claves.RecordCount-1) do
                             begin
                               if (DMDespachador.Claves.fieldbyname('fechafin').asdatetime >= now) and
                               (DMDespachador.Claves.fieldbyname('fechainicio').asdatetime <= now) then
                               begin
                                 if DMDespachador.Claves.fieldbyname('activo').asboolean then
                                 begin
                                   if DMDespachador.Claves.fieldbyname('guardarBdTx').asboolean then
                                   begin
                                     DMDespachador.InsertarTCorrespondencia.ParamByName(
                                        'idclave').AsInteger := DMDespachador.Claves.fieldbyname('idclave').asinteger;
                                     DMDespachador.InsertarTCorrespondencia.ParamByName(
                                        'fechatx').AsDateTime :=
                                          Cartas.Fecha;
                                     DMDespachador.InsertarTCorrespondencia.ParamByName(
                                        'remite').AsString :=
                                          Cartas.Remitente;
                                     DMDespachador.InsertarTCorrespondencia.ParamByName(
                                        'destino').AsString :=
                                          Cartas.Destinatario;
                                     DMDespachador.InsertarTCorrespondencia.ParamByName(
                                        'dirremite').AsString :=
                                          Cartas.DireccionRemitente;
                                     DMDespachador.InsertarTCorrespondencia.ParamByName(
                                        'dirdestino').AsString :=
                                          Cartas.DireccionDestinatario;
                                     DMDespachador.InsertarTCorrespondencia.ParamByName(
                                        'idmunicipio').AsInteger:=
                                          1;
                                     DMDespachador.InsertarTCorrespondencia.ParamByName(
                                        'idestado').AsInteger:=
                                          1;
                                     DMDespachador.InsertarTCorrespondencia.ParamByName(
                                        'idnivelprioridad').AsInteger:=
                                          1;
                                     DMDespachador.InsertarTCorrespondencia.ParamByName(
                                        'carpetaprocesado').AsString :=
                                          DMDespachador.Claves.fieldbyname('carpetatx').asstring+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                     DMDespachador.InsertarTCorrespondencia.ParamByName(
                                        'ficheroprocesado').AsString :=
                                          Cartas.Nota ;
                                     DMDespachador.InsertarTCorrespondencia.ParamByName(
                                        'carpetacontenido').AsString :=
                                          DMDespachador.Claves.fieldbyname('carpetatx').asstring+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                     DMDespachador.InsertarTCorrespondencia.ParamByName(
                                        'ficherocontenido').AsString :=
                                          Cartas.FicheroContenido ;
                                     DMDespachador.InsertarTCorrespondencia.ParamByName(
                                        'Nota').AsString :=
                                          Cartas.Observaciones ;
                                     DMDespachador.InsertarTCorrespondencia.ParamByName(
                                        'idservicio').AsInteger :=
                                          Cartas.IdServicio;
                                     DMDespachador.InsertarTCorrespondencia.ExecProc;

                                   end;


                                   ///guardo ficherocontenido en destino
                                   ///
                                   carpetadestino :=
                                     DMDespachador.Claves.fieldbyname(
                                       'carpetatx').asstring;

                                   if destinos[m].FormaTxIRI = 'carpeta' then
                                   begin
                                      CopySrcDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                      CopySrcFile.Text := fichero;
                                      CopyTarDir.Text := carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                      CopyFiles(Sender);
                                   end;

                                   if destinos[m].FormaTxIRI = 'ftp' then
                                   begin
                                      FtpHost.Text := destinos[m].ServidorTxContenidos;
                                      FtpUsername.Text := destinos[m].UsuarioTxContenidos;
                                      FtpPassword.Text := destinos[m].PasswordTxContenidos;
                                      Ftp1Path.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;

                                      Ftp1SrcName.Text := fichero;
                                      Ftp1LocDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                                      doFtpDown1Click(Sender);
                                   end;

                                   if destinos[m].FormaTxIRI = 'http' then
                                   begin
                                      HttpSrcDir.Text := destinos[m].ServidorTxContenidos;
                                      NetLogon.Text := destinos[m].UsuarioTxContenidos;
                                      NetPassword.Text := destinos[m].PasswordTxContenidos;

                                      HttpSrcFile.Text := fichero;
                                      HttpTarDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                                      HttpDownload(Sender);
                                   end;

                                   if destinos[m].FormaTxIRI = 'carpeta' then
                                   begin
                                      CopySrcDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                      CopySrcFile.Text := Cartas.Nota;
                                      CopyTarDir.Text := carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                      CopyFiles(Sender);
                                   end;

                                   if destinos[m].FormaTxIRI = 'ftp' then
                                   begin
                                      FtpHost.Text := destinos[m].ServidorTxContenidos;
                                      FtpUsername.Text := destinos[m].UsuarioTxContenidos;
                                      FtpPassword.Text := destinos[m].PasswordTxContenidos;
                                      Ftp1Path.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;

                                      Ftp1SrcName.Text := Cartas.Nota;
                                      Ftp1LocDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                                      doFtpDown1Click(Sender);
                                   end;

                                   if destinos[m].FormaTxIRI = 'http' then
                                   begin
                                      HttpSrcDir.Text := destinos[m].ServidorTxContenidos;
                                      NetLogon.Text := destinos[m].UsuarioTxContenidos;
                                      NetPassword.Text := destinos[m].PasswordTxContenidos;

                                      HttpSrcFile.Text := Cartas.Nota;
                                      HttpTarDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                                      HttpDownload(Sender);
                                   end;


                                   ///IRI
                                   ///

                                   if destinos[m].FormaTxIRI = 'carpeta' then
                                   begin
                                      CopySrcDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI;
                                      CopySrcFile.Text := ExtractFileName(XMLDocument1.FileName);
                                      CopyTarDir.Text := carpetadestino;
                                      CopyFiles(Sender);
                                   end;

                                   if destinos[m].FormaTxIRI = 'ftp' then
                                   begin
                                      FtpHost.Text := destinos[m].ServidorTxContenidos;
                                      FtpUsername.Text := destinos[m].UsuarioTxContenidos;
                                      FtpPassword.Text := destinos[m].PasswordTxContenidos;
                                      Ftp1Path.Text := origenes[OrigenIndex1].CarpetaTemporalIRI;

                                      Ftp1SrcName.Text := ExtractFileName(XMLDocument1.FileName);
                                      Ftp1LocDir.Text :=  carpetadestino;
                                      doFtpDown1Click(Sender);
                                   end;

                                   if destinos[m].FormaTxIRI = 'http' then
                                   begin
                                      HttpSrcDir.Text := destinos[m].ServidorTxContenidos;
                                      NetLogon.Text := destinos[m].UsuarioTxContenidos;
                                      NetPassword.Text := destinos[m].PasswordTxContenidos;

                                      HttpSrcFile.Text := ExtractFileName(XMLDocument1.FileName);
                                      HttpTarDir.Text :=  carpetadestino;
                                      HttpDownload(Sender);
                                   end;


                                   /////guardo fichero iri en destino
                                 end;


                                 DMDespachador.Claves.Next;
                               end else
                               begin
                                 generico := true;
                                 //generico por fuera de fecha
                               end;
                           end
                           end
                           else   //recordcount<0
                           begin
                             if LowerCase(Cartas.Modo) = 'descubrimiento' then
                             begin
                                //nueva clave de tipo descubrimiento
                                DMDespachador.GruposDescubre.Close;
                                DMDespachador.GruposDescubre.ParamByName(
                                    'numservicio').AsInteger := servicios[i].NumeroServicio;
                                DMDespachador.GruposDescubre.ExecProc;
                                if DMDespachador.GruposDescubre.RecordCount > 0 then
                                begin
                                 DMDespachador.GruposDescubre.First;
                                 for q := 0 to (DMDespachador.GruposDescubre.RecordCount-1) do
                                 begin

                                   DMDespachador.NuevoChequeo.ParamByName(
                                    'chequeo').AsString := Cartas.Remitente;
                                   DMDespachador.NuevoChequeo.ParamByName(
                                    'idservicio').AsInteger := servicios[i].IdServicio;
                                   DMDespachador.NuevoChequeo.ExecProc;

                                   DMDespachador.Chequeo.ParamByName(
                                    'chequeo').AsString := Cartas.Remitente;
                                   DMDespachador.Chequeo.ExecProc;

                                   DMDespachador.NuevaClave.ParamByName(
                                    'clave').AsInteger := DMDespachador.GruposDescubre.fieldbyname('claveultima').asInteger+1;
                                   //actualizar clave ultima
                                   DMDespachador.NuevaClave.ParamByName(
                                    'idchequeo').AsInteger := DMDespachador.Chequeo.fieldbyname('idchequeo').asInteger;
                                   DMDespachador.NuevaClave.ParamByName(
                                    'fechainicio').AsDateTime := now;
                                   DMDespachador.NuevaClave.ParamByName(
                                    'fechafin').AsDateTime := now+15;
                                   DMDespachador.NuevaClave.ParamByName(
                                    'idestadoactual').AsInteger := 3;
                                   DMDespachador.NuevaClave.ParamByName(
                                    'idnivel1').AsInteger := DMDespachador.GruposDescubre.fieldbyname('idnivel1').asInteger;
                                   DMDespachador.NuevaClave.ParamByName(
                                    'idtipoclave').AsInteger := 2;
                                   DMDespachador.NuevaClave.ExecProc;

                                   DMDespachador.Claves.ParamByName(
                                    'chequeo').AsString := Cartas.Remitente;
                                  DMDespachador.Claves.ParamByName(
                                    'chequeo1').AsString := Cartas.Destinatario;
                                  DMDespachador.Claves.ParamByName(
                                    'LIID').AsInteger := 0;
                                  DMDespachador.Claves.ExecProc;
                                  if DMDespachador.Claves.RecordCount > 0 then
                                  begin
                                     DMDespachador.Claves.First;

                                   if (DMDespachador.Claves.fieldbyname('fechafin').asdatetime >= now) and
                                   (DMDespachador.Claves.fieldbyname('fechainicio').asdatetime <= now) then
                                   begin
                                     if DMDespachador.Claves.fieldbyname('activo').asboolean then
                                     begin
                                       if DMDespachador.Claves.fieldbyname('guardarBdTx').asboolean then
                                       begin
                                          DMDespachador.InsertarTCorrespondencia.ParamByName(
                                        'idclave').AsInteger := DMDespachador.Claves.fieldbyname('idclave').asinteger;
                                         DMDespachador.InsertarTCorrespondencia.ParamByName(
                                            'fechatx').AsDateTime :=
                                              Cartas.Fecha;
                                         DMDespachador.InsertarTCorrespondencia.ParamByName(
                                            'remite').AsString :=
                                              Cartas.Remitente;
                                         DMDespachador.InsertarTCorrespondencia.ParamByName(
                                            'destino').AsString :=
                                              Cartas.Destinatario;
                                         DMDespachador.InsertarTCorrespondencia.ParamByName(
                                            'dirremite').AsString :=
                                              Cartas.DireccionRemitente;
                                         DMDespachador.InsertarTCorrespondencia.ParamByName(
                                            'dirdestino').AsString :=
                                              Cartas.DireccionDestinatario;
                                         DMDespachador.InsertarTCorrespondencia.ParamByName(
                                            'idmunicipio').AsInteger:=
                                              1;
                                         DMDespachador.InsertarTCorrespondencia.ParamByName(
                                            'idestado').AsInteger:=
                                              1;
                                         DMDespachador.InsertarTCorrespondencia.ParamByName(
                                            'idnivelprioridad').AsInteger:=
                                              1;
                                         DMDespachador.InsertarTCorrespondencia.ParamByName(
                                        'carpetaprocesado').AsString :=
                                          DMDespachador.Claves.fieldbyname('carpetatx').asstring+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                         DMDespachador.InsertarTCorrespondencia.ParamByName(
                                            'ficheroprocesado').AsString :=
                                              Cartas.Nota ;
                                         DMDespachador.InsertarTCorrespondencia.ParamByName(
                                            'carpetacontenido').AsString :=
                                              DMDespachador.Claves.fieldbyname('carpetatx').asstring+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                         DMDespachador.InsertarTCorrespondencia.ParamByName(
                                            'ficherocontenido').AsString :=
                                          Cartas.FicheroContenido ;
                                                              DMDespachador.InsertarTCorrespondencia.ParamByName(
                                            'Nota').AsString :=
                                              Cartas.Observaciones ;
                                         DMDespachador.InsertarTCorrespondencia.ParamByName(
                                            'idservicio').AsInteger :=
                                              Cartas.IdServicio;
                                         DMDespachador.InsertarTCorrespondencia.ExecProc;


                                       end;


                                       ///guardo ficherocontenido en destino
                                       ///
                                       carpetadestino :=
                                         DMDespachador.Claves.fieldbyname(
                                           'carpetatx').asstring;

                                       if destinos[m].FormaTxIRI = 'carpeta' then
                                       begin
                                          CopySrcDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                          CopySrcFile.Text := fichero;
                                          CopyTarDir.Text := carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                          CopyFiles(Sender);
                                       end;

                                       if destinos[m].FormaTxIRI = 'ftp' then
                                       begin
                                          FtpHost.Text := destinos[m].ServidorTxContenidos;
                                          FtpUsername.Text := destinos[m].UsuarioTxContenidos;
                                          FtpPassword.Text := destinos[m].PasswordTxContenidos;
                                          Ftp1Path.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;

                                          Ftp1SrcName.Text := fichero;
                                          Ftp1LocDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                                          doFtpDown1Click(Sender);
                                       end;

                                       if destinos[m].FormaTxIRI = 'http' then
                                       begin
                                          HttpSrcDir.Text := destinos[m].ServidorTxContenidos;
                                          NetLogon.Text := destinos[m].UsuarioTxContenidos;
                                          NetPassword.Text := destinos[m].PasswordTxContenidos;

                                          HttpSrcFile.Text := fichero;
                                          HttpTarDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                                          HttpDownload(Sender);
                                       end;

                                       if destinos[m].FormaTxIRI = 'carpeta' then
                                         begin
                                            CopySrcDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                            CopySrcFile.Text := Cartas.Nota;
                                            CopyTarDir.Text := carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                            CopyFiles(Sender);
                                         end;

                                         if destinos[m].FormaTxIRI = 'ftp' then
                                         begin
                                            FtpHost.Text := destinos[m].ServidorTxContenidos;
                                            FtpUsername.Text := destinos[m].UsuarioTxContenidos;
                                            FtpPassword.Text := destinos[m].PasswordTxContenidos;
                                            Ftp1Path.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;

                                            Ftp1SrcName.Text := Cartas.Nota;
                                            Ftp1LocDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                                            doFtpDown1Click(Sender);
                                         end;

                                         if destinos[m].FormaTxIRI = 'http' then
                                         begin
                                            HttpSrcDir.Text := destinos[m].ServidorTxContenidos;
                                            NetLogon.Text := destinos[m].UsuarioTxContenidos;
                                            NetPassword.Text := destinos[m].PasswordTxContenidos;

                                            HttpSrcFile.Text := Cartas.Nota;
                                            HttpTarDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                                            HttpDownload(Sender);
                                         end;


                                       ///IRI
                                       ///

                                       if destinos[m].FormaTxIRI = 'carpeta' then
                                       begin
                                          CopySrcDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI;
                                          CopySrcFile.Text := ExtractFileName(XMLDocument1.FileName);
                                          CopyTarDir.Text := carpetadestino;
                                          CopyFiles(Sender);
                                       end;

                                       if destinos[m].FormaTxIRI = 'ftp' then
                                       begin
                                          FtpHost.Text := destinos[m].ServidorTxContenidos;
                                          FtpUsername.Text := destinos[m].UsuarioTxContenidos;
                                          FtpPassword.Text := destinos[m].PasswordTxContenidos;
                                          Ftp1Path.Text := origenes[OrigenIndex1].CarpetaTemporalIRI;

                                          Ftp1SrcName.Text := ExtractFileName(XMLDocument1.FileName);
                                          Ftp1LocDir.Text :=  carpetadestino;
                                          doFtpDown1Click(Sender);
                                       end;

                                       if destinos[m].FormaTxIRI = 'http' then
                                       begin
                                          HttpSrcDir.Text := destinos[m].ServidorTxContenidos;
                                          NetLogon.Text := destinos[m].UsuarioTxContenidos;
                                          NetPassword.Text := destinos[m].PasswordTxContenidos;

                                          HttpSrcFile.Text := ExtractFileName(XMLDocument1.FileName);
                                          HttpTarDir.Text :=  carpetadestino;
                                          HttpDownload(Sender);
                                       end;


                                       /////guardo fichero iri en destino
                                     end;


                                   end;

                                  end;

                                   DMDespachador.GruposDescubre.Next;
                                 end;

                                end;
                             end
                             else
                             begin
                                if LowerCase(Cartas.Modo) = 'sospecha' then
                                begin
                                  //nueva clave de tipo sospecha
                                  DMDespachador.GruposDescubre.Close;
                                  DMDespachador.GruposDescubre.ParamByName(
                                      'numservicio').AsInteger := servicios[i].NumeroServicio;
                                  DMDespachador.GruposDescubre.ExecProc;
                                  if DMDespachador.GruposDescubre.RecordCount > 0 then
                                  begin
                                   DMDespachador.GruposDescubre.First;
                                   for q := 0 to (DMDespachador.GruposDescubre.RecordCount-1) do
                                   begin

                                     DMDespachador.NuevoChequeo.ParamByName(
                                      'chequeo').AsString := Cartas.Remitente;
                                     DMDespachador.NuevoChequeo.ParamByName(
                                      'idservicio').AsInteger := servicios[i].IdServicio;
                                     DMDespachador.NuevoChequeo.ExecProc;

                                     DMDespachador.Chequeo.ParamByName(
                                      'chequeo').AsString := Cartas.Remitente;
                                     DMDespachador.Chequeo.ExecProc;

                                     DMDespachador.NuevaClave.ParamByName(
                                      'clave').AsInteger := DMDespachador.GruposDescubre.fieldbyname('claveultima').asInteger+1;
                                     DMDespachador.NuevaClave.ParamByName(
                                      'idchequeo').AsInteger := DMDespachador.Chequeo.fieldbyname('idchequeo').asInteger;
                                     DMDespachador.NuevaClave.ParamByName(
                                      'fechainicio').AsDateTime := now;
                                     DMDespachador.NuevaClave.ParamByName(
                                      'fechafin').AsDateTime := now+15;
                                     DMDespachador.NuevaClave.ParamByName(
                                      'idestadoactual').AsInteger := 3;
                                     DMDespachador.NuevaClave.ParamByName(
                                      'idnivel1').AsInteger := DMDespachador.GruposDescubre.fieldbyname('idnivel1').asInteger;
                                     DMDespachador.NuevaClave.ParamByName(
                                      'idtipoclave').AsInteger := 3;
                                     DMDespachador.NuevaClave.ExecProc;

                                     DMDespachador.Claves.ParamByName(
                                       'chequeo').AsString := Cartas.Remitente;
                                  DMDespachador.Claves.ParamByName(
                                    'chequeo1').AsString := Cartas.Destinatario;
                                    DMDespachador.Claves.ParamByName(
                                      'LIID').AsInteger := 0;
                                    DMDespachador.Claves.ExecProc;
                                    if DMDespachador.Claves.RecordCount > 0 then
                                    begin
                                       DMDespachador.Claves.First;

                                     if (DMDespachador.Claves.fieldbyname('fechafin').asdatetime >= now) and
                                     (DMDespachador.Claves.fieldbyname('fechainicio').asdatetime <= now) then
                                     begin
                                       if DMDespachador.Claves.fieldbyname('activo').asboolean then
                                       begin
                                         if DMDespachador.Claves.fieldbyname('guardarBdTx').asboolean then
                                         begin
                                           DMDespachador.InsertarTCorrespondencia.ParamByName(
                                        'idclave').AsInteger := DMDespachador.Claves.fieldbyname('idclave').asinteger;
                                           DMDespachador.InsertarTCorrespondencia.ParamByName(
                                              'fechatx').AsDateTime :=
                                                Cartas.Fecha;
                                           DMDespachador.InsertarTCorrespondencia.ParamByName(
                                              'remite').AsString :=
                                                Cartas.Remitente;
                                           DMDespachador.InsertarTCorrespondencia.ParamByName(
                                              'destino').AsString :=
                                                Cartas.Destinatario;
                                           DMDespachador.InsertarTCorrespondencia.ParamByName(
                                              'dirremite').AsString :=
                                                Cartas.DireccionRemitente;
                                           DMDespachador.InsertarTCorrespondencia.ParamByName(
                                              'dirdestino').AsString :=
                                                Cartas.DireccionDestinatario;
                                           DMDespachador.InsertarTCorrespondencia.ParamByName(
                                              'idmunicipio').AsInteger:=
                                                1;
                                           DMDespachador.InsertarTCorrespondencia.ParamByName(
                                              'idestado').AsInteger:=
                                                1;
                                           DMDespachador.InsertarTCorrespondencia.ParamByName(
                                              'idnivelprioridad').AsInteger:=
                                                1;
                                           DMDespachador.InsertarTCorrespondencia.ParamByName(
                                        'carpetaprocesado').AsString :=
                                          DMDespachador.Claves.fieldbyname('carpetatx').asstring+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                           DMDespachador.InsertarTCorrespondencia.ParamByName(
                                              'ficheroprocesado').AsString :=
                                                Cartas.Nota ;
                                           DMDespachador.InsertarTCorrespondencia.ParamByName(
                                              'carpetacontenido').AsString :=
                                                DMDespachador.Claves.fieldbyname('carpetatx').asstring+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                           DMDespachador.InsertarTCorrespondencia.ParamByName(
                                              'ficherocontenido').AsString :=
                                          Cartas.FicheroContenido ;
                                                                DMDespachador.InsertarTCorrespondencia.ParamByName(
                                              'Nota').AsString :=
                                                Cartas.Observaciones ;
                                           DMDespachador.InsertarTCorrespondencia.ParamByName(
                                              'idservicio').AsInteger :=
                                                Cartas.IdServicio;
                                           DMDespachador.InsertarTCorrespondencia.ExecProc;


                                         end;


                                         ///guardo ficherocontenido en destino
                                         ///
                                         carpetadestino :=
                                           DMDespachador.Claves.fieldbyname(
                                             'carpetatx').asstring;

                                         if destinos[m].FormaTxIRI = 'carpeta' then
                                         begin
                                            CopySrcDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                            CopySrcFile.Text := fichero;
                                            CopyTarDir.Text := carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                            CopyFiles(Sender);
                                         end;

                                         if destinos[m].FormaTxIRI = 'ftp' then
                                         begin
                                            FtpHost.Text := destinos[m].ServidorTxContenidos;
                                            FtpUsername.Text := destinos[m].UsuarioTxContenidos;
                                            FtpPassword.Text := destinos[m].PasswordTxContenidos;
                                            Ftp1Path.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;

                                            Ftp1SrcName.Text := fichero;
                                            Ftp1LocDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                                            doFtpDown1Click(Sender);
                                         end;

                                         if destinos[m].FormaTxIRI = 'http' then
                                         begin
                                            HttpSrcDir.Text := destinos[m].ServidorTxContenidos;
                                            NetLogon.Text := destinos[m].UsuarioTxContenidos;
                                            NetPassword.Text := destinos[m].PasswordTxContenidos;

                                            HttpSrcFile.Text := fichero;
                                            HttpTarDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                                            HttpDownload(Sender);
                                         end;

                                         if destinos[m].FormaTxIRI = 'carpeta' then
                                         begin
                                            CopySrcDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                            CopySrcFile.Text := Cartas.Nota;
                                            CopyTarDir.Text := carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                            CopyFiles(Sender);
                                         end;

                                         if destinos[m].FormaTxIRI = 'ftp' then
                                         begin
                                            FtpHost.Text := destinos[m].ServidorTxContenidos;
                                            FtpUsername.Text := destinos[m].UsuarioTxContenidos;
                                            FtpPassword.Text := destinos[m].PasswordTxContenidos;
                                            Ftp1Path.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;

                                            Ftp1SrcName.Text := Cartas.Nota;
                                            Ftp1LocDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                                            doFtpDown1Click(Sender);
                                         end;

                                         if destinos[m].FormaTxIRI = 'http' then
                                         begin
                                            HttpSrcDir.Text := destinos[m].ServidorTxContenidos;
                                            NetLogon.Text := destinos[m].UsuarioTxContenidos;
                                            NetPassword.Text := destinos[m].PasswordTxContenidos;

                                            HttpSrcFile.Text := Cartas.Nota;
                                            HttpTarDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                                            HttpDownload(Sender);
                                         end;


                                         ///IRI
                                         ///

                                         if destinos[m].FormaTxIRI = 'carpeta' then
                                         begin
                                            CopySrcDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI;
                                            CopySrcFile.Text := ExtractFileName(XMLDocument1.FileName);
                                            CopyTarDir.Text := carpetadestino;
                                            CopyFiles(Sender);
                                         end;

                                         if destinos[m].FormaTxIRI = 'ftp' then
                                         begin
                                            FtpHost.Text := destinos[m].ServidorTxContenidos;
                                            FtpUsername.Text := destinos[m].UsuarioTxContenidos;
                                            FtpPassword.Text := destinos[m].PasswordTxContenidos;
                                            Ftp1Path.Text := origenes[OrigenIndex1].CarpetaTemporalIRI;

                                            Ftp1SrcName.Text := ExtractFileName(XMLDocument1.FileName);
                                            Ftp1LocDir.Text :=  carpetadestino;
                                            doFtpDown1Click(Sender);
                                         end;

                                         if destinos[m].FormaTxIRI = 'http' then
                                         begin
                                            HttpSrcDir.Text := destinos[m].ServidorTxContenidos;
                                            NetLogon.Text := destinos[m].UsuarioTxContenidos;
                                            NetPassword.Text := destinos[m].PasswordTxContenidos;

                                            HttpSrcFile.Text := ExtractFileName(XMLDocument1.FileName);
                                            HttpTarDir.Text :=  carpetadestino;
                                            HttpDownload(Sender);
                                         end;


                                         /////guardo fichero iri en destino
                                       end;


                                     end;

                                    end;

                                     DMDespachador.GruposDescubre.Next;
                                   end;

                                end
                                else
                                begin
                                  generico := true;
                                 //generico por no aplicada
                                end;
                             end;

                           end;


                       end;
                   end;

                       //////////////////////////////////////////////////////

                 end;
                 10 :begin
                       with Sms  do
                       begin
                         IdServicio:=servicios[i].IdServicio;
                         Modo:=nodelist[n].ChildNodes['Modo'].Text;
                         Llamado:=nodelist[n].ChildNodes['Origen'].Text;
                         Llamador:=nodelist[n].ChildNodes['Destino'].Text;
                         TipoCaptura:=StrToInt(nodelist[n].ChildNodes['TipoCaptura'].Text);
                         CarpetaContenido :=nodelist[n].ChildNodes['CarpetaContenido'].Text;
                         FicheroContenido:=nodelist[n].ChildNodes['FicheroContenido'].Text;
                         Fechatx:=sdDateTimeFromString(nodelist[n].ChildNodes['Fecha'].Text);
                       end;

                       fichero:=Cartas.FicheroContenido;
                       carpeta:=Cartas.CarpetaContenido;


                       generico := false;
                       for m  := 0 to TotalDestinos - 1 do
                       begin
                          DMDespachador.ConexionDestino.Close;
                          DMDespachador.ConexionDestino.server := destinos[m].ServidorBD;
                          DMDespachador.ConexionDestino.port := destinos[m].PuertoBD;
                          DMDespachador.ConexionDestino.database :=destinos[m].Autoridad;
                          DMDespachador.ConexionDestino.username := destinos[m].UsuarioBD;
                          DMDespachador.ConexionDestino.password := destinos[m].PasswordBD;
                          DMDespachador.ConexionDestino.Open;
                          DMDespachador.Claves.ParamByName(
                            'chequeo').AsString := Sms.Llamado;
                          DMDespachador.Claves.ParamByName(
                            'chequeo1').AsString := Sms.Llamador;
                          DMDespachador.Claves.ParamByName(
                            'LIID').AsInteger := 0;
                          DMDespachador.Claves.ExecProc;
                          if DMDespachador.Claves.RecordCount > 0 then
                           begin
                             DMDespachador.Claves.First;
                             for p := 0 to (DMDespachador.Claves.RecordCount-1) do
                             begin
                               if (DMDespachador.Claves.fieldbyname('fechafin').asdatetime >= now) and
                               (DMDespachador.Claves.fieldbyname('fechainicio').asdatetime <= now) then
                               begin
                                 if DMDespachador.Claves.fieldbyname('activo').asboolean then
                                 begin
                                   if DMDespachador.Claves.fieldbyname('guardarBdTx').asboolean then
                                   begin
                                     DMDespachador.InsertarTTelefonia.ParamByName(
                                        'idclave').AsInteger := DMDespachador.Claves.fieldbyname('idclave').asinteger;
                                     DMDespachador.InsertarTTelefonia.ParamByName(
                                        'fechatx').AsDateTime :=
                                          Sms.Fechatx;
                                     DMDespachador.InsertarTTelefonia.ParamByName(
                                        'origen').AsString :=
                                          Sms.Llamado ;
                                     DMDespachador.InsertarTTelefonia.ParamByName(
                                        'destino').AsString :=
                                          Sms.Llamador;
                                     DMDespachador.InsertarTTelefonia.ParamByName(
                                        'idestadotx').AsInteger:=
                                          1;
                                     DMDespachador.InsertarTTelefonia.ParamByName(
                                        'carpetacontenido').AsString :=
                                          DMDespachador.Claves.fieldbyname('carpetatx').asstring;
                                     DMDespachador.InsertarTTelefonia.ParamByName(
                                        'ficherocontenido').AsString :=
                                          Sms.FicheroContenido ;
                                     DMDespachador.InsertarTTelefonia.ParamByName(
                                        'idservicio').AsInteger :=
                                          Sms.IdServicio;
                                     DMDespachador.InsertarTTelefonia.ExecProc;

                                   end;


                                   ///guardo ficherocontenido en destino
                                   ///
                                   carpetadestino :=
                                     DMDespachador.Claves.fieldbyname(
                                       'carpetatx').asstring;

                                   if destinos[m].FormaTxIRI = 'carpeta' then
                                   begin
                                      CopySrcDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                      CopySrcFile.Text := fichero;
                                      CopyTarDir.Text := carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                      CopyFiles(Sender);
                                   end;

                                   if destinos[m].FormaTxIRI = 'ftp' then
                                   begin
                                      FtpHost.Text := destinos[m].ServidorTxContenidos;
                                      FtpUsername.Text := destinos[m].UsuarioTxContenidos;
                                      FtpPassword.Text := destinos[m].PasswordTxContenidos;
                                      Ftp1Path.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;

                                      Ftp1SrcName.Text := fichero;
                                      Ftp1LocDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                                      doFtpDown1Click(Sender);
                                   end;

                                   if destinos[m].FormaTxIRI = 'http' then
                                   begin
                                      HttpSrcDir.Text := destinos[m].ServidorTxContenidos;
                                      NetLogon.Text := destinos[m].UsuarioTxContenidos;
                                      NetPassword.Text := destinos[m].PasswordTxContenidos;

                                      HttpSrcFile.Text := fichero;
                                      HttpTarDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                                      HttpDownload(Sender);
                                   end;

                                   ///IRI
                                   ///

                                   if destinos[m].FormaTxIRI = 'carpeta' then
                                   begin
                                      CopySrcDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI;
                                      CopySrcFile.Text := ExtractFileName(XMLDocument1.FileName);
                                      CopyTarDir.Text := carpetadestino;
                                      CopyFiles(Sender);
                                   end;

                                   if destinos[m].FormaTxIRI = 'ftp' then
                                   begin
                                      FtpHost.Text := destinos[m].ServidorTxContenidos;
                                      FtpUsername.Text := destinos[m].UsuarioTxContenidos;
                                      FtpPassword.Text := destinos[m].PasswordTxContenidos;
                                      Ftp1Path.Text := origenes[OrigenIndex1].CarpetaTemporalIRI;

                                      Ftp1SrcName.Text := ExtractFileName(XMLDocument1.FileName);
                                      Ftp1LocDir.Text :=  carpetadestino;
                                      doFtpDown1Click(Sender);
                                   end;

                                   if destinos[m].FormaTxIRI = 'http' then
                                   begin
                                      HttpSrcDir.Text := destinos[m].ServidorTxContenidos;
                                      NetLogon.Text := destinos[m].UsuarioTxContenidos;
                                      NetPassword.Text := destinos[m].PasswordTxContenidos;

                                      HttpSrcFile.Text := ExtractFileName(XMLDocument1.FileName);
                                      HttpTarDir.Text :=  carpetadestino;
                                      HttpDownload(Sender);
                                   end;


                                   /////guardo fichero iri en destino
                                 end;


                                 DMDespachador.Claves.Next;
                               end else
                               begin
                                 generico := true;
                                 //generico por fuera de fecha
                               end;
                           end
                           end
                           else   //recordcount<0
                           begin
                             if LowerCase(Sms.Modo) = 'descubrimiento' then
                             begin
                                //nueva clave de tipo descubrimiento
                                DMDespachador.GruposDescubre.Close;
                                DMDespachador.GruposDescubre.ParamByName(
                                    'numservicio').AsInteger := servicios[i].NumeroServicio;
                                DMDespachador.GruposDescubre.ExecProc;
                                if DMDespachador.GruposDescubre.RecordCount > 0 then
                                begin
                                 DMDespachador.GruposDescubre.First;
                                 for q := 0 to (DMDespachador.GruposDescubre.RecordCount-1) do
                                 begin

                                   DMDespachador.NuevoChequeo.ParamByName(
                                    'chequeo').AsString := Sms.Llamado;
                                   DMDespachador.NuevoChequeo.ParamByName(
                                    'idservicio').AsInteger := servicios[i].IdServicio;
                                   DMDespachador.NuevoChequeo.ExecProc;

                                   DMDespachador.Chequeo.ParamByName(
                                    'chequeo').AsString := Sms.Llamado;
                                   DMDespachador.Chequeo.ExecProc;

                                   DMDespachador.NuevaClave.ParamByName(
                                    'clave').AsInteger := DMDespachador.GruposDescubre.fieldbyname('claveultima').asInteger+1;
                                   //actualizar clave ultima
                                   DMDespachador.NuevaClave.ParamByName(
                                    'idchequeo').AsInteger := DMDespachador.Chequeo.fieldbyname('idchequeo').asInteger;
                                   DMDespachador.NuevaClave.ParamByName(
                                    'fechainicio').AsDateTime := now;
                                   DMDespachador.NuevaClave.ParamByName(
                                    'fechafin').AsDateTime := now+15;
                                   DMDespachador.NuevaClave.ParamByName(
                                    'idestadoactual').AsInteger := 3;
                                   DMDespachador.NuevaClave.ParamByName(
                                    'idnivel1').AsInteger := DMDespachador.GruposDescubre.fieldbyname('idnivel1').asInteger;
                                   DMDespachador.NuevaClave.ParamByName(
                                    'idtipoclave').AsInteger := 2;
                                   DMDespachador.NuevaClave.ExecProc;

                                   DMDespachador.Claves.ParamByName(
                                    'chequeo').AsString := Sms.Llamado;
                                  DMDespachador.Claves.ParamByName(
                                    'chequeo1').AsString := Sms.Llamado;
                                  DMDespachador.Claves.ParamByName(
                                    'LIID').AsInteger := 0;
                                  DMDespachador.Claves.ExecProc;
                                  if DMDespachador.Claves.RecordCount > 0 then
                                  begin
                                     DMDespachador.Claves.First;

                                   if (DMDespachador.Claves.fieldbyname('fechafin').asdatetime >= now) and
                                   (DMDespachador.Claves.fieldbyname('fechainicio').asdatetime <= now) then
                                   begin
                                     if DMDespachador.Claves.fieldbyname('activo').asboolean then
                                     begin
                                       if DMDespachador.Claves.fieldbyname('guardarBdTx').asboolean then
                                       begin
                                          DMDespachador.InsertarTTelefonia.ParamByName(
                                        'idclave').AsInteger := DMDespachador.Claves.fieldbyname('idclave').asinteger;
                                         DMDespachador.InsertarTTelefonia.ParamByName(
                                            'fechatx').AsDateTime :=
                                              Sms.Fechatx;
                                         DMDespachador.InsertarTTelefonia.ParamByName(
                                            'origen').AsString :=
                                              Sms.Llamado ;
                                         DMDespachador.InsertarTTelefonia.ParamByName(
                                            'destino').AsString :=
                                              Sms.Llamador;
                                         DMDespachador.InsertarTTelefonia.ParamByName(
                                            'idestadotx').AsInteger:=
                                              1;
                                         DMDespachador.InsertarTTelefonia.ParamByName(
                                            'carpetacontenido').AsString :=
                                              DMDespachador.Claves.fieldbyname('carpetatx').asstring;
                                         DMDespachador.InsertarTTelefonia.ParamByName(
                                            'ficherocontenido').AsString :=
                                              Sms.FicheroContenido ;
                                         DMDespachador.InsertarTTelefonia.ParamByName(
                                            'idservicio').AsInteger :=
                                              Sms.IdServicio;
                                         DMDespachador.InsertarTTelefonia.ExecProc;

                                       end;


                                       ///guardo ficherocontenido en destino
                                       ///
                                       carpetadestino :=
                                         DMDespachador.Claves.fieldbyname(
                                           'carpetatx').asstring;

                                       if destinos[m].FormaTxIRI = 'carpeta' then
                                       begin
                                          CopySrcDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                          CopySrcFile.Text := fichero;
                                          CopyTarDir.Text := carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                          CopyFiles(Sender);
                                       end;

                                       if destinos[m].FormaTxIRI = 'ftp' then
                                       begin
                                          FtpHost.Text := destinos[m].ServidorTxContenidos;
                                          FtpUsername.Text := destinos[m].UsuarioTxContenidos;
                                          FtpPassword.Text := destinos[m].PasswordTxContenidos;
                                          Ftp1Path.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;

                                          Ftp1SrcName.Text := fichero;
                                          Ftp1LocDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                                          doFtpDown1Click(Sender);
                                       end;

                                       if destinos[m].FormaTxIRI = 'http' then
                                       begin
                                          HttpSrcDir.Text := destinos[m].ServidorTxContenidos;
                                          NetLogon.Text := destinos[m].UsuarioTxContenidos;
                                          NetPassword.Text := destinos[m].PasswordTxContenidos;

                                          HttpSrcFile.Text := fichero;
                                          HttpTarDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                                          HttpDownload(Sender);
                                       end;

                                       ///IRI
                                       ///

                                       if destinos[m].FormaTxIRI = 'carpeta' then
                                       begin
                                          CopySrcDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI;
                                          CopySrcFile.Text := ExtractFileName(XMLDocument1.FileName);
                                          CopyTarDir.Text := carpetadestino;
                                          CopyFiles(Sender);
                                       end;

                                       if destinos[m].FormaTxIRI = 'ftp' then
                                       begin
                                          FtpHost.Text := destinos[m].ServidorTxContenidos;
                                          FtpUsername.Text := destinos[m].UsuarioTxContenidos;
                                          FtpPassword.Text := destinos[m].PasswordTxContenidos;
                                          Ftp1Path.Text := origenes[OrigenIndex1].CarpetaTemporalIRI;

                                          Ftp1SrcName.Text := ExtractFileName(XMLDocument1.FileName);
                                          Ftp1LocDir.Text :=  carpetadestino;
                                          doFtpDown1Click(Sender);
                                       end;

                                       if destinos[m].FormaTxIRI = 'http' then
                                       begin
                                          HttpSrcDir.Text := destinos[m].ServidorTxContenidos;
                                          NetLogon.Text := destinos[m].UsuarioTxContenidos;
                                          NetPassword.Text := destinos[m].PasswordTxContenidos;

                                          HttpSrcFile.Text := ExtractFileName(XMLDocument1.FileName);
                                          HttpTarDir.Text :=  carpetadestino;
                                          HttpDownload(Sender);
                                       end;


                                       /////guardo fichero iri en destino
                                     end;


                                   end;

                                  end;

                                   DMDespachador.GruposDescubre.Next;
                                 end;

                                end;
                             end
                             else
                             begin
                                if LowerCase(Sms.Modo) = 'sospecha' then
                                begin
                                  //nueva clave de tipo sospecha
                                  DMDespachador.GruposDescubre.Close;
                                  DMDespachador.GruposDescubre.ParamByName(
                                      'numservicio').AsInteger := servicios[i].NumeroServicio;
                                  DMDespachador.GruposDescubre.ExecProc;
                                  if DMDespachador.GruposDescubre.RecordCount > 0 then
                                  begin
                                   DMDespachador.GruposDescubre.First;
                                   for q := 0 to (DMDespachador.GruposDescubre.RecordCount-1) do
                                   begin

                                     DMDespachador.NuevoChequeo.ParamByName(
                                      'chequeo').AsString := Sms.Llamado;
                                     DMDespachador.NuevoChequeo.ParamByName(
                                      'idservicio').AsInteger := servicios[i].IdServicio;
                                     DMDespachador.NuevoChequeo.ExecProc;

                                     DMDespachador.Chequeo.ParamByName(
                                      'chequeo').AsString := Sms.Llamado;
                                     DMDespachador.Chequeo.ExecProc;

                                     DMDespachador.NuevaClave.ParamByName(
                                      'clave').AsInteger := DMDespachador.GruposDescubre.fieldbyname('claveultima').asInteger+1;
                                     DMDespachador.NuevaClave.ParamByName(
                                      'idchequeo').AsInteger := DMDespachador.Chequeo.fieldbyname('idchequeo').asInteger;
                                     DMDespachador.NuevaClave.ParamByName(
                                      'fechainicio').AsDateTime := now;
                                     DMDespachador.NuevaClave.ParamByName(
                                      'fechafin').AsDateTime := now+15;
                                     DMDespachador.NuevaClave.ParamByName(
                                      'idestadoactual').AsInteger := 3;
                                     DMDespachador.NuevaClave.ParamByName(
                                      'idnivel1').AsInteger := DMDespachador.GruposDescubre.fieldbyname('idnivel1').asInteger;
                                     DMDespachador.NuevaClave.ParamByName(
                                      'idtipoclave').AsInteger := 3;
                                     DMDespachador.NuevaClave.ExecProc;

                                     DMDespachador.Claves.ParamByName(
                                      'chequeo').AsString := Sms.Llamado;
                                    DMDespachador.Claves.ParamByName(
                                      'chequeo1').AsString := Sms.Llamado;
                                    DMDespachador.Claves.ParamByName(
                                      'LIID').AsInteger := 0;
                                    DMDespachador.Claves.ExecProc;
                                    if DMDespachador.Claves.RecordCount > 0 then
                                    begin
                                       DMDespachador.Claves.First;

                                     if (DMDespachador.Claves.fieldbyname('fechafin').asdatetime >= now) and
                                     (DMDespachador.Claves.fieldbyname('fechainicio').asdatetime <= now) then
                                     begin
                                       if DMDespachador.Claves.fieldbyname('activo').asboolean then
                                       begin
                                         if DMDespachador.Claves.fieldbyname('guardarBdTx').asboolean then
                                         begin
                                            DMDespachador.InsertarTTelefonia.ParamByName(
                                          'idclave').AsInteger := DMDespachador.Claves.fieldbyname('idclave').asinteger;
                                           DMDespachador.InsertarTTelefonia.ParamByName(
                                              'fechatx').AsDateTime :=
                                                Sms.Fechatx;
                                           DMDespachador.InsertarTTelefonia.ParamByName(
                                              'origen').AsString :=
                                                Sms.Llamado ;
                                           DMDespachador.InsertarTTelefonia.ParamByName(
                                              'destino').AsString :=
                                                Sms.Llamador;
                                           DMDespachador.InsertarTTelefonia.ParamByName(
                                              'idestadotx').AsInteger:=
                                                1;
                                           DMDespachador.InsertarTTelefonia.ParamByName(
                                              'carpetacontenido').AsString :=
                                                DMDespachador.Claves.fieldbyname('carpetatx').asstring;
                                           DMDespachador.InsertarTTelefonia.ParamByName(
                                              'ficherocontenido').AsString :=
                                                Sms.FicheroContenido ;
                                           DMDespachador.InsertarTTelefonia.ParamByName(
                                              'idservicio').AsInteger :=
                                                Sms.IdServicio;
                                           DMDespachador.InsertarTTelefonia.ExecProc;

                                         end;


                                         ///guardo ficherocontenido en destino
                                         ///
                                         carpetadestino :=
                                           DMDespachador.Claves.fieldbyname(
                                             'carpetatx').asstring;

                                         if destinos[m].FormaTxIRI = 'carpeta' then
                                         begin
                                            CopySrcDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                            CopySrcFile.Text := fichero;
                                            CopyTarDir.Text := carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                            CopyFiles(Sender);
                                         end;

                                         if destinos[m].FormaTxIRI = 'ftp' then
                                         begin
                                            FtpHost.Text := destinos[m].ServidorTxContenidos;
                                            FtpUsername.Text := destinos[m].UsuarioTxContenidos;
                                            FtpPassword.Text := destinos[m].PasswordTxContenidos;
                                            Ftp1Path.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;

                                            Ftp1SrcName.Text := fichero;
                                            Ftp1LocDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                                            doFtpDown1Click(Sender);
                                         end;

                                         if destinos[m].FormaTxIRI = 'http' then
                                         begin
                                            HttpSrcDir.Text := destinos[m].ServidorTxContenidos;
                                            NetLogon.Text := destinos[m].UsuarioTxContenidos;
                                            NetPassword.Text := destinos[m].PasswordTxContenidos;

                                            HttpSrcFile.Text := fichero;
                                            HttpTarDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                                            HttpDownload(Sender);
                                         end;

                                         ///IRI
                                         ///

                                         if destinos[m].FormaTxIRI = 'carpeta' then
                                         begin
                                            CopySrcDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI;
                                            CopySrcFile.Text := ExtractFileName(XMLDocument1.FileName);
                                            CopyTarDir.Text := carpetadestino;
                                            CopyFiles(Sender);
                                         end;

                                         if destinos[m].FormaTxIRI = 'ftp' then
                                         begin
                                            FtpHost.Text := destinos[m].ServidorTxContenidos;
                                            FtpUsername.Text := destinos[m].UsuarioTxContenidos;
                                            FtpPassword.Text := destinos[m].PasswordTxContenidos;
                                            Ftp1Path.Text := origenes[OrigenIndex1].CarpetaTemporalIRI;

                                            Ftp1SrcName.Text := ExtractFileName(XMLDocument1.FileName);
                                            Ftp1LocDir.Text :=  carpetadestino;
                                            doFtpDown1Click(Sender);
                                         end;

                                         if destinos[m].FormaTxIRI = 'http' then
                                         begin
                                            HttpSrcDir.Text := destinos[m].ServidorTxContenidos;
                                            NetLogon.Text := destinos[m].UsuarioTxContenidos;
                                            NetPassword.Text := destinos[m].PasswordTxContenidos;

                                            HttpSrcFile.Text := ExtractFileName(XMLDocument1.FileName);
                                            HttpTarDir.Text :=  carpetadestino;
                                            HttpDownload(Sender);
                                         end;


                                         /////guardo fichero iri en destino
                                       end;


                                     end;

                                    end;

                                     DMDespachador.GruposDescubre.Next;
                                   end;

                                end
                                else
                                begin
                                  generico := true;
                                 //generico por no aplicada
                                end;
                             end;

                           end;


                       end;
                   end;

                 end;
                 3  :begin
                       with Telefonia  do
                       begin
                         IdServicio:=servicios[i].IdServicio;
                         Modo:=nodelist[n].ChildNodes['Modo'].Text;
                         Duracion:=nodelist[n].ChildNodes['Duracion'].Text;
                         Llamado:=nodelist[n].ChildNodes['Origen'].Text;
                         Llamador:=nodelist[n].ChildNodes['Destino'].Text;
                         Sentido :=nodelist[n].ChildNodes['Sentido'].Text;
                         Tema:=nodelist[n].ChildNodes['Tema'].Text;
                         Dsa :=nodelist[n].ChildNodes['DSA'].Text;
                         TipoCaptura:=StrToInt(nodelist[n].ChildNodes['TipoCaptura'].Text);
                         Multiplex:=StrToInt(nodelist[n].ChildNodes['Multiplex'].Text);
                         Itdestino:=StrToInt(nodelist[n].ChildNodes['ItDestino'].Text);
                         CarpetaContenido :=nodelist[n].ChildNodes['CarpetaContenido'].Text;
                         FicheroContenido:=nodelist[n].ChildNodes['FicheroContenido'].Text;
                         Idestadotx:=StrToInt(nodelist[n].ChildNodes['IdCategoria'].Text);
                         Idtipotx:=StrToInt(nodelist[n].ChildNodes['IdTipotx'].Text);
                         Fechatx:=sdDateTimeFromString(nodelist[n].ChildNodes['Fecha'].Text);
                         Itorigen :=StrToInt(nodelist[n].ChildNodes['ItOrigen'].Text);
                       end;
                       fichero:=Telefonia.FicheroContenido;
                       carpeta:=Telefonia.CarpetaContenido;
                       generico := false;
                       for m  := 0 to TotalDestinos - 1 do
                       begin
                          DMDespachador.ConexionDestino.Close;
                          DMDespachador.ConexionDestino.server := destinos[m].ServidorBD;
                          DMDespachador.ConexionDestino.port := destinos[m].PuertoBD;
                          DMDespachador.ConexionDestino.database :=destinos[m].Autoridad;
                          DMDespachador.ConexionDestino.username := destinos[m].UsuarioBD;
                          DMDespachador.ConexionDestino.password := destinos[m].PasswordBD;
                          DMDespachador.ConexionDestino.Open;
                          DMDespachador.Claves.ParamByName(
                            'chequeo').AsString := Telefonia.Llamado;
                          DMDespachador.Claves.ParamByName(
                            'chequeo1').AsString := Telefonia.Llamador;
                          DMDespachador.Claves.ParamByName(
                            'LIID').AsInteger := 0;
                          DMDespachador.Claves.ExecProc;
                          if DMDespachador.Claves.RecordCount > 0 then
                           begin
                             DMDespachador.Claves.First;
                             for p := 0 to (DMDespachador.Claves.RecordCount-1) do
                             begin
                               if (DMDespachador.Claves.fieldbyname('fechafin').asdatetime >= now) and
                               (DMDespachador.Claves.fieldbyname('fechainicio').asdatetime <= now) then
                               begin
                                 if DMDespachador.Claves.fieldbyname('activo').asboolean then
                                 begin
                                   if DMDespachador.Claves.fieldbyname('guardarBdTx').asboolean then
                                   begin
                                     DMDespachador.InsertarTTelefonia.ParamByName(
                                        'idclave').AsInteger := DMDespachador.Claves.fieldbyname('idclave').asinteger;
                                     DMDespachador.InsertarTTelefonia.ParamByName(
                                        'fechatx').AsDateTime :=
                                          Telefonia.Fechatx;
                                     DMDespachador.InsertarTTelefonia.ParamByName(
                                        'duracion').AsString :=
                                          Telefonia.Duracion;
                                     DMDespachador.InsertarTTelefonia.ParamByName(
                                        'duraciontx').AsInteger := 0;
                                     DMDespachador.InsertarTTelefonia.ParamByName(
                                        'origen').AsString :=
                                          Telefonia.Llamado ;
                                     DMDespachador.InsertarTTelefonia.ParamByName(
                                        'destino').AsString :=
                                          Telefonia.Llamador;
                                     DMDespachador.InsertarTTelefonia.ParamByName(
                                        'idestadotx').AsInteger:=
                                          Telefonia.Idestadotx;
                                     DMDespachador.InsertarTTelefonia.ParamByName(
                                        'dsa').AsString :=
                                          Telefonia.dsa;
                                     DMDespachador.InsertarTTelefonia.ParamByName(
                                        'carpetacontenido').AsString :=  destinos[m].carpetacontenidos;
//                                          DMDespachador.Claves.fieldbyname('carpetatx').asstring;
                                     DMDespachador.InsertarTTelefonia.ParamByName(
                                        'ficherocontenido').AsString :=
                                          Telefonia.FicheroContenido ;
                                     DMDespachador.InsertarTTelefonia.ParamByName(
                                        'idservicio').AsInteger :=
                                          Telefonia.IdServicio;
                                     DMDespachador.InsertarTTelefonia.ExecProc;

                                   end;


                                   ///guardo ficherocontenido en destino
                                   ///
                                   carpetadestino := destinos[m].carpetacontenidos;
//                                     DMDespachador.Claves.fieldbyname(
//                                       'carpetatx').asstring;

                                   if destinos[m].FormaTxIRI = 'carpeta' then
                                   begin
                                      CopySrcDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                      CopySrcFile.Text := fichero;
                                      CopyTarDir.Text := carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                      CopyFiles(Sender);
                                   end;

                                   if destinos[m].FormaTxIRI = 'ftp' then
                                   begin
                                      FtpHost.Text := destinos[m].ServidorTxContenidos;
                                      FtpUsername.Text := destinos[m].UsuarioTxContenidos;
                                      FtpPassword.Text := destinos[m].PasswordTxContenidos;
                                      Ftp1Path.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;

                                      Ftp1SrcName.Text := fichero;
                                      Ftp1LocDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                                      doFtpDown1Click(Sender);
                                   end;

                                   if destinos[m].FormaTxIRI = 'http' then
                                   begin
                                      HttpSrcDir.Text := destinos[m].ServidorTxContenidos;
                                      NetLogon.Text := destinos[m].UsuarioTxContenidos;
                                      NetPassword.Text := destinos[m].PasswordTxContenidos;

                                      HttpSrcFile.Text := fichero;
                                      HttpTarDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                                      HttpDownload(Sender);
                                   end;

                                   ///IRI
                                   ///

                                   if destinos[m].FormaTxIRI = 'carpeta' then
                                   begin
                                      CopySrcDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI;
                                      CopySrcFile.Text := ExtractFileName(XMLDocument1.FileName);
                                      CopyTarDir.Text := carpetadestino;
                                      CopyFiles(Sender);
                                   end;

                                   if destinos[m].FormaTxIRI = 'ftp' then
                                   begin
                                      FtpHost.Text := destinos[m].ServidorTxContenidos;
                                      FtpUsername.Text := destinos[m].UsuarioTxContenidos;
                                      FtpPassword.Text := destinos[m].PasswordTxContenidos;
                                      Ftp1Path.Text := origenes[OrigenIndex1].CarpetaTemporalIRI;

                                      Ftp1SrcName.Text := ExtractFileName(XMLDocument1.FileName);
                                      Ftp1LocDir.Text :=  carpetadestino;
                                      doFtpDown1Click(Sender);
                                   end;

                                   if destinos[m].FormaTxIRI = 'http' then
                                   begin
                                      HttpSrcDir.Text := destinos[m].ServidorTxContenidos;
                                      NetLogon.Text := destinos[m].UsuarioTxContenidos;
                                      NetPassword.Text := destinos[m].PasswordTxContenidos;

                                      HttpSrcFile.Text := ExtractFileName(XMLDocument1.FileName);
                                      HttpTarDir.Text :=  carpetadestino;
                                      HttpDownload(Sender);
                                   end;


                                   /////guardo fichero iri en destino
                                 end;


                                 DMDespachador.Claves.Next;
                               end else
                               begin
                                 generico := true;
                                 //generico por fuera de fecha
                               end;
                           end
                           end
                           else   //recordcount<0
                           begin
                             if LowerCase(Telefonia.Modo) = 'descubrimiento' then
                             begin
                                //nueva clave de tipo descubrimiento
                                DMDespachador.GruposDescubre.Close;
                                DMDespachador.GruposDescubre.ParamByName(
                                    'numservicio').AsInteger := servicios[i].NumeroServicio;
                                DMDespachador.GruposDescubre.ExecProc;
                                if DMDespachador.GruposDescubre.RecordCount > 0 then
                                begin
                                 DMDespachador.GruposDescubre.First;
                                 for q := 0 to (DMDespachador.GruposDescubre.RecordCount-1) do
                                 begin

                                   DMDespachador.NuevoChequeo.ParamByName(
                                    'chequeo').AsString := Telefonia.Llamado;
                                   DMDespachador.NuevoChequeo.ParamByName(
                                    'idservicio').AsInteger := servicios[i].IdServicio;
                                   DMDespachador.NuevoChequeo.ExecProc;

                                   DMDespachador.Chequeo.ParamByName(
                                    'chequeo').AsString := Telefonia.Llamado;
                                   DMDespachador.Chequeo.ExecProc;

                                   DMDespachador.NuevaClave.ParamByName(
                                    'clave').AsInteger := DMDespachador.GruposDescubre.fieldbyname('claveultima').asInteger+1;
                                   //actualizar clave ultima
                                   DMDespachador.NuevaClave.ParamByName(
                                    'idchequeo').AsInteger := DMDespachador.Chequeo.fieldbyname('idchequeo').asInteger;
                                   DMDespachador.NuevaClave.ParamByName(
                                    'fechainicio').AsDateTime := now;
                                   DMDespachador.NuevaClave.ParamByName(
                                    'fechafin').AsDateTime := now+15;
                                   DMDespachador.NuevaClave.ParamByName(
                                    'idestadoactual').AsInteger := 3;
                                   DMDespachador.NuevaClave.ParamByName(
                                    'idfase').AsString := Telefonia.Tema;
                                   DMDespachador.NuevaClave.ParamByName(
                                    'idnivel1').AsInteger := DMDespachador.GruposDescubre.fieldbyname('idnivel1').asInteger;
                                   DMDespachador.NuevaClave.ParamByName(
                                    'idtipoclave').AsInteger := 2;
                                   DMDespachador.NuevaClave.ExecProc;

                                   DMDespachador.Claves.ParamByName(
                                    'chequeo').AsString := Telefonia.Llamado;
                                  DMDespachador.Claves.ParamByName(
                                    'chequeo1').AsString := Telefonia.Llamado;
                                  DMDespachador.Claves.ParamByName(
                                    'LIID').AsInteger := 0;
                                  DMDespachador.Claves.ExecProc;
                                  if DMDespachador.Claves.RecordCount > 0 then
                                  begin
                                     DMDespachador.Claves.First;

                                   if (DMDespachador.Claves.fieldbyname('fechafin').asdatetime >= now) and
                                   (DMDespachador.Claves.fieldbyname('fechainicio').asdatetime <= now) then
                                   begin
                                     if DMDespachador.Claves.fieldbyname('activo').asboolean then
                                     begin
                                       if DMDespachador.Claves.fieldbyname('guardarBdTx').asboolean then
                                       begin
                                         DMDespachador.InsertarTTelefonia.ParamByName(
                                            'idclave').AsInteger := DMDespachador.Claves.fieldbyname('idclave').asinteger;
                                         DMDespachador.InsertarTTelefonia.ParamByName(
                                            'fechatx').AsDateTime :=
                                              Telefonia.Fechatx;
                                         DMDespachador.InsertarTTelefonia.ParamByName(
                                            'duracion').AsString :=
                                              Telefonia.Duracion;
                                         DMDespachador.InsertarTTelefonia.ParamByName(
                                            'duraciontx').AsInteger := 0;
                                         DMDespachador.InsertarTTelefonia.ParamByName(
                                            'origen').AsString :=
                                              Telefonia.Llamado ;
                                         DMDespachador.InsertarTTelefonia.ParamByName(
                                            'destino').AsString :=
                                              Telefonia.Llamador;
                                         DMDespachador.InsertarTTelefonia.ParamByName(
                                            'idestadotx').AsInteger:=
                                              Telefonia.Idestadotx;
                                         DMDespachador.InsertarTTelefonia.ParamByName(
                                            'dsa').AsString :=
                                              Telefonia.dsa;
                                         DMDespachador.InsertarTTelefonia.ParamByName(
                                            'carpetacontenido').AsString :=
                                              Telefonia.CarpetaContenido;
                                         DMDespachador.InsertarTTelefonia.ParamByName(
                                            'ficherocontenido').AsString :=
                                              Telefonia.FicheroContenido ;
                                         DMDespachador.InsertarTTelefonia.ParamByName(
                                            'idservicio').AsInteger :=
                                              Telefonia.IdServicio;
                                         DMDespachador.InsertarTTelefonia.ExecProc;

                                       end;


                                       ///guardo ficherocontenido en destino
                                       ///
                                       carpetadestino :=
                                         DMDespachador.Claves.fieldbyname(
                                           'carpetatx').asstring;

                                       if destinos[m].FormaTxIRI = 'carpeta' then
                                       begin
                                          CopySrcDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                          CopySrcFile.Text := fichero;
                                          CopyTarDir.Text := carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                          CopyFiles(Sender);
                                       end;

                                       if destinos[m].FormaTxIRI = 'ftp' then
                                       begin
                                          FtpHost.Text := destinos[m].ServidorTxContenidos;
                                          FtpUsername.Text := destinos[m].UsuarioTxContenidos;
                                          FtpPassword.Text := destinos[m].PasswordTxContenidos;
                                          Ftp1Path.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;

                                          Ftp1SrcName.Text := fichero;
                                          Ftp1LocDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                                          doFtpDown1Click(Sender);
                                       end;

                                       if destinos[m].FormaTxIRI = 'http' then
                                       begin
                                          HttpSrcDir.Text := destinos[m].ServidorTxContenidos;
                                          NetLogon.Text := destinos[m].UsuarioTxContenidos;
                                          NetPassword.Text := destinos[m].PasswordTxContenidos;

                                          HttpSrcFile.Text := fichero;
                                          HttpTarDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                                          HttpDownload(Sender);
                                       end;

                                       ///IRI
                                       ///

                                       if destinos[m].FormaTxIRI = 'carpeta' then
                                       begin
                                          CopySrcDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI;
                                          CopySrcFile.Text := ExtractFileName(XMLDocument1.FileName);
                                          CopyTarDir.Text := carpetadestino;
                                          CopyFiles(Sender);
                                       end;

                                       if destinos[m].FormaTxIRI = 'ftp' then
                                       begin
                                          FtpHost.Text := destinos[m].ServidorTxContenidos;
                                          FtpUsername.Text := destinos[m].UsuarioTxContenidos;
                                          FtpPassword.Text := destinos[m].PasswordTxContenidos;
                                          Ftp1Path.Text := origenes[OrigenIndex1].CarpetaTemporalIRI;

                                          Ftp1SrcName.Text := ExtractFileName(XMLDocument1.FileName);
                                          Ftp1LocDir.Text :=  carpetadestino;
                                          doFtpDown1Click(Sender);
                                       end;

                                       if destinos[m].FormaTxIRI = 'http' then
                                       begin
                                          HttpSrcDir.Text := destinos[m].ServidorTxContenidos;
                                          NetLogon.Text := destinos[m].UsuarioTxContenidos;
                                          NetPassword.Text := destinos[m].PasswordTxContenidos;

                                          HttpSrcFile.Text := ExtractFileName(XMLDocument1.FileName);
                                          HttpTarDir.Text :=  carpetadestino;
                                          HttpDownload(Sender);
                                       end;


                                       /////guardo fichero iri en destino
                                     end;


                                   end;

                                  end;

                                   DMDespachador.GruposDescubre.Next;
                                 end;

                                end;
                             end
                             else
                             begin
                                if LowerCase(Telefonia.Modo) = 'sospecha' then
                                begin
                                  //nueva clave de tipo sospecha
                                  DMDespachador.GruposDescubre.Close;
                                  DMDespachador.GruposDescubre.ParamByName(
                                      'numservicio').AsInteger := servicios[i].NumeroServicio;
                                  DMDespachador.GruposDescubre.ExecProc;
                                  if DMDespachador.GruposDescubre.RecordCount > 0 then
                                  begin
                                   DMDespachador.GruposDescubre.First;
                                   for q := 0 to (DMDespachador.GruposDescubre.RecordCount-1) do
                                   begin

                                     DMDespachador.NuevoChequeo.ParamByName(
                                      'chequeo').AsString := Telefonia.Llamado;
                                     DMDespachador.NuevoChequeo.ParamByName(
                                      'idservicio').AsInteger := servicios[i].IdServicio;
                                     DMDespachador.NuevoChequeo.ExecProc;

                                     DMDespachador.Chequeo.ParamByName(
                                      'chequeo').AsString := Telefonia.Llamado;
                                     DMDespachador.Chequeo.ExecProc;

                                     DMDespachador.NuevaClave.ParamByName(
                                      'clave').AsInteger := DMDespachador.GruposDescubre.fieldbyname('claveultima').asInteger+1;
                                     DMDespachador.NuevaClave.ParamByName(
                                      'idchequeo').AsInteger := DMDespachador.Chequeo.fieldbyname('idchequeo').asInteger;
                                     DMDespachador.NuevaClave.ParamByName(
                                      'fechainicio').AsDateTime := now;
                                     DMDespachador.NuevaClave.ParamByName(
                                      'fechafin').AsDateTime := now+15;
                                     DMDespachador.NuevaClave.ParamByName(
                                      'idestadoactual').AsInteger := 3;
                                     DMDespachador.NuevaClave.ParamByName(
                                      'idfase').AsString := Telefonia.Tema;
                                     DMDespachador.NuevaClave.ParamByName(
                                      'idnivel1').AsInteger := DMDespachador.GruposDescubre.fieldbyname('idnivel1').asInteger;
                                     DMDespachador.NuevaClave.ParamByName(
                                      'idtipoclave').AsInteger := 3;
                                     DMDespachador.NuevaClave.ExecProc;

                                     DMDespachador.Claves.ParamByName(
                                      'chequeo').AsString := Telefonia.Llamado;
                                    DMDespachador.Claves.ParamByName(
                                      'chequeo1').AsString := Telefonia.Llamado;
                                    DMDespachador.Claves.ParamByName(
                                      'LIID').AsInteger := 0;
                                    DMDespachador.Claves.ExecProc;
                                    if DMDespachador.Claves.RecordCount > 0 then
                                    begin
                                       DMDespachador.Claves.First;

                                     if (DMDespachador.Claves.fieldbyname('fechafin').asdatetime >= now) and
                                     (DMDespachador.Claves.fieldbyname('fechainicio').asdatetime <= now) then
                                     begin
                                       if DMDespachador.Claves.fieldbyname('activo').asboolean then
                                       begin
                                         if DMDespachador.Claves.fieldbyname('guardarBdTx').asboolean then
                                         begin
                                           DMDespachador.InsertarTTelefonia.ParamByName(
                                              'idclave').AsInteger := DMDespachador.Claves.fieldbyname('idclave').asinteger;
                                           DMDespachador.InsertarTTelefonia.ParamByName(
                                              'fechatx').AsDateTime :=
                                                Telefonia.Fechatx;
                                           DMDespachador.InsertarTTelefonia.ParamByName(
                                              'duracion').AsString :=
                                                Telefonia.Duracion;
                                           DMDespachador.InsertarTTelefonia.ParamByName(
                                              'duraciontx').AsInteger := 0;
                                           DMDespachador.InsertarTTelefonia.ParamByName(
                                              'origen').AsString :=
                                                Telefonia.Llamado ;
                                           DMDespachador.InsertarTTelefonia.ParamByName(
                                              'destino').AsString :=
                                                Telefonia.Llamador;
                                           DMDespachador.InsertarTTelefonia.ParamByName(
                                              'idestadotx').AsInteger:=
                                                Telefonia.Idestadotx;
                                           DMDespachador.InsertarTTelefonia.ParamByName(
                                              'dsa').AsString :=
                                                Telefonia.dsa;
                                           DMDespachador.InsertarTTelefonia.ParamByName(
                                              'carpetacontenido').AsString :=
                                                Telefonia.CarpetaContenido;
                                           DMDespachador.InsertarTTelefonia.ParamByName(
                                              'ficherocontenido').AsString :=
                                                Telefonia.FicheroContenido ;
                                           DMDespachador.InsertarTTelefonia.ParamByName(
                                              'idservicio').AsInteger :=
                                                Telefonia.IdServicio;
                                           DMDespachador.InsertarTTelefonia.ExecProc;

                                         end;


                                         ///guardo ficherocontenido en destino
                                         ///
                                         carpetadestino :=
                                           DMDespachador.Claves.fieldbyname(
                                             'carpetatx').asstring;

                                         if destinos[m].FormaTxIRI = 'carpeta' then
                                         begin
                                            CopySrcDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                            CopySrcFile.Text := fichero;
                                            CopyTarDir.Text := carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                            CopyFiles(Sender);
                                         end;

                                         if destinos[m].FormaTxIRI = 'ftp' then
                                         begin
                                            FtpHost.Text := destinos[m].ServidorTxContenidos;
                                            FtpUsername.Text := destinos[m].UsuarioTxContenidos;
                                            FtpPassword.Text := destinos[m].PasswordTxContenidos;
                                            Ftp1Path.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;

                                            Ftp1SrcName.Text := fichero;
                                            Ftp1LocDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                                            doFtpDown1Click(Sender);
                                         end;

                                         if destinos[m].FormaTxIRI = 'http' then
                                         begin
                                            HttpSrcDir.Text := destinos[m].ServidorTxContenidos;
                                            NetLogon.Text := destinos[m].UsuarioTxContenidos;
                                            NetPassword.Text := destinos[m].PasswordTxContenidos;

                                            HttpSrcFile.Text := fichero;
                                            HttpTarDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                                            HttpDownload(Sender);
                                         end;

                                         ///IRI
                                         ///

                                         if destinos[m].FormaTxIRI = 'carpeta' then
                                         begin
                                            CopySrcDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI;
                                            CopySrcFile.Text := ExtractFileName(XMLDocument1.FileName);
                                            CopyTarDir.Text := carpetadestino;
                                            CopyFiles(Sender);
                                         end;

                                         if destinos[m].FormaTxIRI = 'ftp' then
                                         begin
                                            FtpHost.Text := destinos[m].ServidorTxContenidos;
                                            FtpUsername.Text := destinos[m].UsuarioTxContenidos;
                                            FtpPassword.Text := destinos[m].PasswordTxContenidos;
                                            Ftp1Path.Text := origenes[OrigenIndex1].CarpetaTemporalIRI;

                                            Ftp1SrcName.Text := XMLDocument1.FileName;
                                            Ftp1LocDir.Text :=  carpetadestino;
                                            doFtpDown1Click(Sender);
                                         end;

                                         if destinos[m].FormaTxIRI = 'http' then
                                         begin
                                            HttpSrcDir.Text := destinos[m].ServidorTxContenidos;
                                            NetLogon.Text := destinos[m].UsuarioTxContenidos;
                                            NetPassword.Text := destinos[m].PasswordTxContenidos;

                                            HttpSrcFile.Text := XMLDocument1.FileName;
                                            HttpTarDir.Text :=  carpetadestino;
                                            HttpDownload(Sender);
                                         end;


                                         /////guardo fichero iri en destino
                                       end;


                                     end;

                                    end;

                                     DMDespachador.GruposDescubre.Next;
                                   end;

                                end
                                else
                                begin
                                  generico := true;
                                 //generico por no aplicada
                                end;
                             end;

                           end;


                       end;
                   end;
                 end;
                 23  :begin
                       with TxCR  do
                       begin
                         IdServicio:=servicios[i].IdServicio;
                         Modo:=nodelist[n].ChildNodes['Modo'].Text;
                         Duraciontx:=StrToInt(nodelist[n].ChildNodes['Duracion'].Text);
                         emisoracanal:=nodelist[n].ChildNodes['EmisoraCanal'].Text;
                         programa:=nodelist[n].ChildNodes['Programa'].Text;
                         Tema:=nodelist[n].ChildNodes['Tema'].Text;
                         espacio :=nodelist[n].ChildNodes['Espacio'].Text;
                         TipoCaptura:=1;
                         CarpetaContenido :=nodelist[n].ChildNodes['CarpetaContenido'].Text;
                         FicheroContenido:=nodelist[n].ChildNodes['FicheroContenido'].Text;
                         Idestadotx:=StrToInt(nodelist[n].ChildNodes['IdEstadotx'].Text);
                         Fechatx:=sdDateTimeFromString(nodelist[n].ChildNodes['Fecha'].Text);
                       end;

                       fichero:=TxCr.FicheroContenido;
                       carpeta:=TxCr.CarpetaContenido;

                       generico := false;
                       for m  := 0 to TotalDestinos - 1 do
                       begin
                          DMDespachador.ConexionDestino.Close;
                          DMDespachador.ConexionDestino.server := destinos[m].ServidorBD;
                          DMDespachador.ConexionDestino.port := destinos[m].PuertoBD;
                          DMDespachador.ConexionDestino.database :=destinos[m].Autoridad;
                          DMDespachador.ConexionDestino.username := destinos[m].UsuarioBD;
                          DMDespachador.ConexionDestino.password := destinos[m].PasswordBD;
                          DMDespachador.ConexionDestino.Open;
                          DMDespachador.Claves.ParamByName(
                            'chequeo').AsString := TxCR.emisoracanal;
                          DMDespachador.Claves.ParamByName(
                            'chequeo1').AsString := TxCR.emisoracanal;
                          DMDespachador.Claves.ParamByName(
                            'LIID').AsInteger := 0;
                          DMDespachador.Claves.ExecProc;
                          if DMDespachador.Claves.RecordCount > 0 then
                           begin
                             DMDespachador.Claves.First;
                             for p := 0 to (DMDespachador.Claves.RecordCount-1) do
                             begin
                               if (DMDespachador.Claves.fieldbyname('fechafin').asdatetime >= now) and
                               (DMDespachador.Claves.fieldbyname('fechainicio').asdatetime <= now) then
                               begin
                                 if DMDespachador.Claves.fieldbyname('activo').asboolean then
                                 begin
                                   if DMDespachador.Claves.fieldbyname('guardarBdTx').asboolean then
                                   begin
                                     DMDespachador.InsertarTTxCR.ParamByName(
                                        'idclave').AsInteger := DMDespachador.Claves.fieldbyname('idclave').asinteger;
                                     DMDespachador.InsertarTTxCR.ParamByName(
                                        'fechatx').AsDateTime :=
                                          TxCR.Fechatx;
                                     DMDespachador.InsertarTTxCR.ParamByName(
                                        'duraciontx').AsInteger := 0;
                                     DMDespachador.InsertarTTxCR.ParamByName(
                                        'emisoracanal').AsString :=
                                          TxCR.emisoracanal ;
                                     DMDespachador.InsertarTTxCR.ParamByName(
                                        'programa').AsString :=
                                          TxCR.programa;
                                     DMDespachador.InsertarTTxCR.ParamByName(
                                        'idestado').AsInteger:=
                                          TxCR.Idestadotx;
                                     DMDespachador.InsertarTTxCR.ParamByName(
                                        'espacio').AsString :=
                                          TxCR.espacio;
                                     DMDespachador.InsertarTTxCR.ParamByName(
                                        'carpetacontenido').AsString :=
                                          DMDespachador.Claves.fieldbyname('carpetatx').asstring+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                     DMDespachador.InsertarTTxCR.ParamByName(
                                        'ficherocontenido').AsString :=
                                          TxCR.FicheroContenido;
                                     DMDespachador.InsertarTTxCR.ParamByName(
                                        'idservicio').AsInteger :=
                                          TxCr.IdServicio;
                                     DMDespachador.InsertarTTxCR.ExecProc;

                                   end;


                                   ///guardo ficherocontenido en destino
                                   ///
                                   carpetadestino :=
                                     DMDespachador.Claves.fieldbyname(
                                       'carpetatx').asstring;

                                   if destinos[m].FormaTxIRI = 'carpeta' then
                                   begin
                                      CopySrcDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                      CopySrcFile.Text := fichero;
                                      CopyTarDir.Text := carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                      CopyFiles(Sender);
                                   end;

                                   if destinos[m].FormaTxIRI = 'ftp' then
                                   begin
                                      FtpHost.Text := destinos[m].ServidorTxContenidos;
                                      FtpUsername.Text := destinos[m].UsuarioTxContenidos;
                                      FtpPassword.Text := destinos[m].PasswordTxContenidos;
                                      Ftp1Path.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;

                                      Ftp1SrcName.Text := fichero;
                                      Ftp1LocDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                                      doFtpDown1Click(Sender);
                                   end;

                                   if destinos[m].FormaTxIRI = 'http' then
                                   begin
                                      HttpSrcDir.Text := destinos[m].ServidorTxContenidos;
                                      NetLogon.Text := destinos[m].UsuarioTxContenidos;
                                      NetPassword.Text := destinos[m].PasswordTxContenidos;

                                      HttpSrcFile.Text := fichero;
                                      HttpTarDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                                      HttpDownload(Sender);
                                   end;

                                   ///IRI
                                   ///

                                   if destinos[m].FormaTxIRI = 'carpeta' then
                                   begin
                                      CopySrcDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI;
                                      CopySrcFile.Text := ExtractFileName(XMLDocument1.FileName);
                                      CopyTarDir.Text := carpetadestino;
                                      CopyFiles(Sender);
                                   end;

                                   if destinos[m].FormaTxIRI = 'ftp' then
                                   begin
                                      FtpHost.Text := destinos[m].ServidorTxContenidos;
                                      FtpUsername.Text := destinos[m].UsuarioTxContenidos;
                                      FtpPassword.Text := destinos[m].PasswordTxContenidos;
                                      Ftp1Path.Text := origenes[OrigenIndex1].CarpetaTemporalIRI;

                                      Ftp1SrcName.Text := ExtractFileName(XMLDocument1.FileName);
                                      Ftp1LocDir.Text :=  carpetadestino;
                                      doFtpDown1Click(Sender);
                                   end;

                                   if destinos[m].FormaTxIRI = 'http' then
                                   begin
                                      HttpSrcDir.Text := destinos[m].ServidorTxContenidos;
                                      NetLogon.Text := destinos[m].UsuarioTxContenidos;
                                      NetPassword.Text := destinos[m].PasswordTxContenidos;

                                      HttpSrcFile.Text := ExtractFileName(XMLDocument1.FileName);
                                      HttpTarDir.Text :=  carpetadestino;
                                      HttpDownload(Sender);
                                   end;


                                   /////guardo fichero iri en destino
                                 end;


                                 DMDespachador.Claves.Next;
                               end else
                               begin
                                 generico := true;
                                 //generico por fuera de fecha
                               end;
                           end
                           end
                           else   //recordcount<0
                           begin
                             if LowerCase(TxCR.Modo) = 'descubrimiento' then
                             begin
                                //nueva clave de tipo descubrimiento
                                DMDespachador.GruposDescubre.Close;
                                DMDespachador.GruposDescubre.ParamByName(
                                    'numservicio').AsInteger := servicios[i].NumeroServicio;
                                DMDespachador.GruposDescubre.ExecProc;
                                if DMDespachador.GruposDescubre.RecordCount > 0 then
                                begin
                                 DMDespachador.GruposDescubre.First;
                                 for q := 0 to (DMDespachador.GruposDescubre.RecordCount-1) do
                                 begin

                                   DMDespachador.NuevoChequeo.ParamByName(
                                    'chequeo').AsString := TxCR.emisoracanal;
                                   DMDespachador.NuevoChequeo.ParamByName(
                                    'idservicio').AsInteger := servicios[i].IdServicio;
                                   DMDespachador.NuevoChequeo.ExecProc;

                                   DMDespachador.Chequeo.ParamByName(
                                    'chequeo').AsString := TxCR.emisoracanal;
                                   DMDespachador.Chequeo.ExecProc;

                                   DMDespachador.NuevaClave.ParamByName(
                                    'clave').AsInteger := DMDespachador.GruposDescubre.fieldbyname('claveultima').asInteger+1;
                                   //actualizar clave ultima
                                   DMDespachador.NuevaClave.ParamByName(
                                    'idchequeo').AsInteger := DMDespachador.Chequeo.fieldbyname('idchequeo').asInteger;
                                   DMDespachador.NuevaClave.ParamByName(
                                    'fechainicio').AsDateTime := now;
                                   DMDespachador.NuevaClave.ParamByName(
                                    'fechafin').AsDateTime := now+15;
                                   DMDespachador.NuevaClave.ParamByName(
                                    'idestadoactual').AsInteger := 3;
                                   DMDespachador.NuevaClave.ParamByName(
                                    'idfase').AsString := TxCR.Tema;
                                   DMDespachador.NuevaClave.ParamByName(
                                    'idnivel1').AsInteger := DMDespachador.GruposDescubre.fieldbyname('idnivel1').asInteger;
                                   DMDespachador.NuevaClave.ParamByName(
                                    'idtipoclave').AsInteger := 2;
                                   DMDespachador.NuevaClave.ExecProc;

                                   DMDespachador.Claves.ParamByName(
                                    'chequeo').AsString := TxCR.emisoracanal;
                                  DMDespachador.Claves.ParamByName(
                                    'chequeo1').AsString := TxCR.emisoracanal;
                                  DMDespachador.Claves.ParamByName(
                                    'LIID').AsInteger := 0;
                                  DMDespachador.Claves.ExecProc;
                                  if DMDespachador.Claves.RecordCount > 0 then
                                  begin
                                     DMDespachador.Claves.First;

                                   if (DMDespachador.Claves.fieldbyname('fechafin').asdatetime >= now) and
                                   (DMDespachador.Claves.fieldbyname('fechainicio').asdatetime <= now) then
                                   begin
                                     if DMDespachador.Claves.fieldbyname('activo').asboolean then
                                     begin
                                       if DMDespachador.Claves.fieldbyname('guardarBdTx').asboolean then
                                       begin
                                         DMDespachador.InsertarTTelefonia.ParamByName(
                                            'idclave').AsInteger := DMDespachador.Claves.fieldbyname('idclave').asinteger;
                                         DMDespachador.InsertarTTelefonia.ParamByName(
                                            'fechatx').AsDateTime :=
                                              Telefonia.Fechatx;
                                         DMDespachador.InsertarTTelefonia.ParamByName(
                                            'duracion').AsString :=
                                              Telefonia.Duracion;
                                         DMDespachador.InsertarTTelefonia.ParamByName(
                                            'duraciontx').AsInteger := 0;
                                         DMDespachador.InsertarTTelefonia.ParamByName(
                                            'origen').AsString :=
                                              Telefonia.Llamado ;
                                         DMDespachador.InsertarTTelefonia.ParamByName(
                                            'destino').AsString :=
                                              Telefonia.Llamador;
                                         DMDespachador.InsertarTTelefonia.ParamByName(
                                            'idestadotx').AsInteger:=
                                              Telefonia.Idestadotx;
                                         DMDespachador.InsertarTTelefonia.ParamByName(
                                            'dsa').AsString :=
                                              Telefonia.dsa;
                                         DMDespachador.InsertarTTelefonia.ParamByName(
                                            'carpetacontenido').AsString :=
                                              Telefonia.CarpetaContenido;
                                         DMDespachador.InsertarTTelefonia.ParamByName(
                                            'ficherocontenido').AsString :=
                                              Telefonia.FicheroContenido ;
                                         DMDespachador.InsertarTTelefonia.ParamByName(
                                            'idservicio').AsInteger :=
                                              Telefonia.IdServicio;
                                         DMDespachador.InsertarTTelefonia.ExecProc;

                                       end;


                                       ///guardo ficherocontenido en destino
                                       ///
                                       carpetadestino :=
                                         DMDespachador.Claves.fieldbyname(
                                           'carpetatx').asstring;

                                       if destinos[m].FormaTxIRI = 'carpeta' then
                                       begin
                                          CopySrcDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                          CopySrcFile.Text := fichero;
                                          CopyTarDir.Text := carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                          CopyFiles(Sender);
                                       end;

                                       if destinos[m].FormaTxIRI = 'ftp' then
                                       begin
                                          FtpHost.Text := destinos[m].ServidorTxContenidos;
                                          FtpUsername.Text := destinos[m].UsuarioTxContenidos;
                                          FtpPassword.Text := destinos[m].PasswordTxContenidos;
                                          Ftp1Path.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;

                                          Ftp1SrcName.Text := fichero;
                                          Ftp1LocDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                                          doFtpDown1Click(Sender);
                                       end;

                                       if destinos[m].FormaTxIRI = 'http' then
                                       begin
                                          HttpSrcDir.Text := destinos[m].ServidorTxContenidos;
                                          NetLogon.Text := destinos[m].UsuarioTxContenidos;
                                          NetPassword.Text := destinos[m].PasswordTxContenidos;

                                          HttpSrcFile.Text := fichero;
                                          HttpTarDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                                          HttpDownload(Sender);
                                       end;

                                       ///IRI
                                       ///

                                       if destinos[m].FormaTxIRI = 'carpeta' then
                                       begin
                                          CopySrcDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI;
                                          CopySrcFile.Text := ExtractFileName(XMLDocument1.FileName);
                                          CopyTarDir.Text := carpetadestino;
                                          CopyFiles(Sender);
                                       end;

                                       if destinos[m].FormaTxIRI = 'ftp' then
                                       begin
                                          FtpHost.Text := destinos[m].ServidorTxContenidos;
                                          FtpUsername.Text := destinos[m].UsuarioTxContenidos;
                                          FtpPassword.Text := destinos[m].PasswordTxContenidos;
                                          Ftp1Path.Text := origenes[OrigenIndex1].CarpetaTemporalIRI;

                                          Ftp1SrcName.Text := ExtractFileName(XMLDocument1.FileName);
                                          Ftp1LocDir.Text :=  carpetadestino;
                                          doFtpDown1Click(Sender);
                                       end;

                                       if destinos[m].FormaTxIRI = 'http' then
                                       begin
                                          HttpSrcDir.Text := destinos[m].ServidorTxContenidos;
                                          NetLogon.Text := destinos[m].UsuarioTxContenidos;
                                          NetPassword.Text := destinos[m].PasswordTxContenidos;

                                          HttpSrcFile.Text := ExtractFileName(XMLDocument1.FileName);
                                          HttpTarDir.Text :=  carpetadestino;
                                          HttpDownload(Sender);
                                       end;


                                       /////guardo fichero iri en destino
                                     end;


                                   end;

                                  end;

                                   DMDespachador.GruposDescubre.Next;
                                 end;

                                end;
                             end
                             else
                             begin
                                if LowerCase(TxCR.Modo) = 'sospecha' then
                                begin
                                  //nueva clave de tipo sospecha
                                  DMDespachador.GruposDescubre.Close;
                                  DMDespachador.GruposDescubre.ParamByName(
                                      'numservicio').AsInteger := servicios[i].NumeroServicio;
                                  DMDespachador.GruposDescubre.ExecProc;
                                  if DMDespachador.GruposDescubre.RecordCount > 0 then
                                  begin
                                   DMDespachador.GruposDescubre.First;
                                   for q := 0 to (DMDespachador.GruposDescubre.RecordCount-1) do
                                   begin

                                     DMDespachador.NuevoChequeo.ParamByName(
                                      'chequeo').AsString := TxCR.emisoracanal;
                                     DMDespachador.NuevoChequeo.ParamByName(
                                      'idservicio').AsInteger := servicios[i].IdServicio;
                                     DMDespachador.NuevoChequeo.ExecProc;

                                     DMDespachador.Chequeo.ParamByName(
                                      'chequeo').AsString := TxCR.emisoracanal;
                                     DMDespachador.Chequeo.ExecProc;

                                     DMDespachador.NuevaClave.ParamByName(
                                      'clave').AsInteger := DMDespachador.GruposDescubre.fieldbyname('claveultima').asInteger+1;
                                     DMDespachador.NuevaClave.ParamByName(
                                      'idchequeo').AsInteger := DMDespachador.Chequeo.fieldbyname('idchequeo').asInteger;
                                     DMDespachador.NuevaClave.ParamByName(
                                      'fechainicio').AsDateTime := now;
                                     DMDespachador.NuevaClave.ParamByName(
                                      'fechafin').AsDateTime := now+15;
                                     DMDespachador.NuevaClave.ParamByName(
                                      'idestadoactual').AsInteger := 3;
                                     DMDespachador.NuevaClave.ParamByName(
                                      'idfase').AsString := TxCR.Tema;
                                     DMDespachador.NuevaClave.ParamByName(
                                      'idnivel1').AsInteger := DMDespachador.GruposDescubre.fieldbyname('idnivel1').asInteger;
                                     DMDespachador.NuevaClave.ParamByName(
                                      'idtipoclave').AsInteger := 3;
                                     DMDespachador.NuevaClave.ExecProc;

                                     DMDespachador.Claves.ParamByName(
                                    'chequeo').AsString := TxCR.emisoracanal;
                                  DMDespachador.Claves.ParamByName(
                                    'chequeo1').AsString := TxCR.emisoracanal;
                                    DMDespachador.Claves.ParamByName(
                                      'LIID').AsInteger := 0;
                                    DMDespachador.Claves.ExecProc;
                                    if DMDespachador.Claves.RecordCount > 0 then
                                    begin
                                       DMDespachador.Claves.First;

                                     if (DMDespachador.Claves.fieldbyname('fechafin').asdatetime >= now) and
                                     (DMDespachador.Claves.fieldbyname('fechainicio').asdatetime <= now) then
                                     begin
                                       if DMDespachador.Claves.fieldbyname('activo').asboolean then
                                       begin
                                         if DMDespachador.Claves.fieldbyname('guardarBdTx').asboolean then
                                         begin
                                           DMDespachador.InsertarTTelefonia.ParamByName(
                                              'idclave').AsInteger := DMDespachador.Claves.fieldbyname('idclave').asinteger;
                                           DMDespachador.InsertarTTelefonia.ParamByName(
                                              'fechatx').AsDateTime :=
                                                Telefonia.Fechatx;
                                           DMDespachador.InsertarTTelefonia.ParamByName(
                                              'duracion').AsString :=
                                                Telefonia.Duracion;
                                           DMDespachador.InsertarTTelefonia.ParamByName(
                                              'duraciontx').AsInteger := 0;
                                           DMDespachador.InsertarTTelefonia.ParamByName(
                                              'origen').AsString :=
                                                Telefonia.Llamado ;
                                           DMDespachador.InsertarTTelefonia.ParamByName(
                                              'destino').AsString :=
                                                Telefonia.Llamador;
                                           DMDespachador.InsertarTTelefonia.ParamByName(
                                              'idestadotx').AsInteger:=
                                                Telefonia.Idestadotx;
                                           DMDespachador.InsertarTTelefonia.ParamByName(
                                              'dsa').AsString :=
                                                Telefonia.dsa;
                                           DMDespachador.InsertarTTelefonia.ParamByName(
                                              'carpetacontenido').AsString :=
                                                Telefonia.CarpetaContenido;
                                           DMDespachador.InsertarTTelefonia.ParamByName(
                                              'ficherocontenido').AsString :=
                                                Telefonia.FicheroContenido ;
                                           DMDespachador.InsertarTTelefonia.ParamByName(
                                              'idservicio').AsInteger :=
                                                Telefonia.IdServicio;
                                           DMDespachador.InsertarTTelefonia.ExecProc;

                                         end;


                                         ///guardo ficherocontenido en destino
                                         ///
                                         carpetadestino :=
                                           DMDespachador.Claves.fieldbyname(
                                             'carpetatx').asstring;

                                         if destinos[m].FormaTxIRI = 'carpeta' then
                                         begin
                                            CopySrcDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                            CopySrcFile.Text := fichero;
                                            CopyTarDir.Text := carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                            CopyFiles(Sender);
                                         end;

                                         if destinos[m].FormaTxIRI = 'ftp' then
                                         begin
                                            FtpHost.Text := destinos[m].ServidorTxContenidos;
                                            FtpUsername.Text := destinos[m].UsuarioTxContenidos;
                                            FtpPassword.Text := destinos[m].PasswordTxContenidos;
                                            Ftp1Path.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;

                                            Ftp1SrcName.Text := fichero;
                                            Ftp1LocDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                                            doFtpDown1Click(Sender);
                                         end;

                                         if destinos[m].FormaTxIRI = 'http' then
                                         begin
                                            HttpSrcDir.Text := destinos[m].ServidorTxContenidos;
                                            NetLogon.Text := destinos[m].UsuarioTxContenidos;
                                            NetPassword.Text := destinos[m].PasswordTxContenidos;

                                            HttpSrcFile.Text := fichero;
                                            HttpTarDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                                            HttpDownload(Sender);
                                         end;

                                         ///IRI
                                         ///

                                         if destinos[m].FormaTxIRI = 'carpeta' then
                                         begin
                                            CopySrcDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI;
                                            CopySrcFile.Text := ExtractFileName(XMLDocument1.FileName);
                                            CopyTarDir.Text := carpetadestino;
                                            CopyFiles(Sender);
                                         end;

                                         if destinos[m].FormaTxIRI = 'ftp' then
                                         begin
                                            FtpHost.Text := destinos[m].ServidorTxContenidos;
                                            FtpUsername.Text := destinos[m].UsuarioTxContenidos;
                                            FtpPassword.Text := destinos[m].PasswordTxContenidos;
                                            Ftp1Path.Text := origenes[OrigenIndex1].CarpetaTemporalIRI;

                                            Ftp1SrcName.Text := XMLDocument1.FileName;
                                            Ftp1LocDir.Text :=  carpetadestino;
                                            doFtpDown1Click(Sender);
                                         end;

                                         if destinos[m].FormaTxIRI = 'http' then
                                         begin
                                            HttpSrcDir.Text := destinos[m].ServidorTxContenidos;
                                            NetLogon.Text := destinos[m].UsuarioTxContenidos;
                                            NetPassword.Text := destinos[m].PasswordTxContenidos;

                                            HttpSrcFile.Text := XMLDocument1.FileName;
                                            HttpTarDir.Text :=  carpetadestino;
                                            HttpDownload(Sender);
                                         end;


                                         /////guardo fichero iri en destino
                                       end;


                                     end;

                                    end;

                                     DMDespachador.GruposDescubre.Next;
                                   end;

                                end
                                else
                                begin
                                  generico := true;
                                 //generico por no aplicada
                                end;
                             end;

                           end;


                       end;
                   end;
                 end;

                  13 :begin
                       with TxCR  do
                       begin
                         IdServicio:=servicios[i].IdServicio;
                         Modo:=nodelist[n].ChildNodes['Modo'].Text;
                         Duraciontx:=StrToInt(nodelist[n].ChildNodes['Duracion'].Text);
                         emisoracanal:=nodelist[n].ChildNodes['EmisoraCanal'].Text;
                         programa:=nodelist[n].ChildNodes['Programa'].Text;
                         Tema:=nodelist[n].ChildNodes['Tema'].Text;
                         espacio :=nodelist[n].ChildNodes['Espacio'].Text;
                         TipoCaptura:=StrToInt(nodelist[n].ChildNodes['TipoCaptura'].Text);
                         CarpetaContenido :=nodelist[n].ChildNodes['CarpetaContenido'].Text;
                         FicheroContenido:=nodelist[n].ChildNodes['FicheroContenido'].Text;
                         Idestadotx:=StrToInt(nodelist[n].ChildNodes['IdEstadotx'].Text);
                         Fechatx:=sdDateTimeFromString(nodelist[n].ChildNodes['Fecha'].Text);
                       end;

                       fichero:=TxCr.FicheroContenido;
                       carpeta:=TxCr.CarpetaContenido;

                 end;



                end;

                if  generico then
                begin
                  carpetadestino := DMDespachador.configuracion.FieldByName (
                                        'carpetagenericos').AsString;
                end;

              end;

              ///se guarda en carpeta genericos
               ///
               ///
              if generico then

              begin
                carpetadestino := DMDespachador.configuracion.FieldByName (
                                      'carpetagenericos').AsString;

                if DMDespachador.configuracion.FieldByName (
                                      'IdFormaTxGenericos').AsInteger = 1 then
                 begin
                    CopySrcDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI;
                    CopySrcFile.Text := XMLDocument1.FileName;
                    CopyTarDir.Text := carpetadestino;
                    CopyFiles(Sender);

                    CopySrcDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                    CopySrcFile.Text := fichero;
                    CopyTarDir.Text := carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                    CopyFiles(Sender);
                 end;

                 if DMDespachador.configuracion.FieldByName (
                                      'IdFormaTxGenericos').AsInteger = 2 then
                 begin
                    FtpHost.Text := DMDespachador.configuracion.FieldByName (
                                      'ServidorTxGenericos').AsString;
                    FtpUsername.Text := DMDespachador.configuracion.FieldByName (
                                      'UsuarioTxGenericos').AsString;
                    FtpPassword.Text := DMDespachador.configuracion.FieldByName (
                                      'PasswordTxGenericos').AsString;
                    Ftp1Path.Text := origenes[OrigenIndex1].CarpetaTemporalIRI;

                    Ftp1SrcName.Text := XMLDocument1.FileName;
                    Ftp1LocDir.Text :=  carpetadestino;
                    doFtpDown1Click(Sender);

                    Ftp1Path.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;

                    Ftp1SrcName.Text := fichero;
                    Ftp1LocDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                    doFtpDown1Click(Sender);
                 end;

                 if DMDespachador.configuracion.FieldByName (
                                      'IdFormaTxGenericos').AsInteger = 3 then
                 begin
                    HttpSrcDir.Text := DMDespachador.configuracion.FieldByName (
                                      'ServidorTxGenericos').AsString;
                    NetLogon.Text := DMDespachador.configuracion.FieldByName (
                                      'UsuarioTxGenericos').AsString;
                    NetPassword.Text := DMDespachador.configuracion.FieldByName (
                                      'PasswordTxGenericos').AsString;

                    HttpSrcFile.Text := XMLDocument1.FileName;
                    HttpTarDir.Text :=  carpetadestino;
                    HttpDownload(Sender);

                    HttpSrcFile.Text := fichero;
                    HttpTarDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                    HttpDownload(Sender);
                 end;

              end;



              XMLDocument1.Active:=False;
            //end; //if recopla
          until SysUtils.FindNext(sr) <> 0; //repeat until findnext
          SysUtils.FindClose(sr);
        end; // if findfirst
      end;//totalservicios

      //fin de traer los contenidos



  end;  //if compactados

   if OrigenIndex1 = (TotalOrigenes-1) then
    begin
      OrigenIndex1 := 0;
    end
    else
    begin
      OrigenIndex1 := OrigenIndex1 + 1;
    end;
end;

procedure TMainForm.VrTimerRecibirContenidosTimer(Sender: TObject);
var
  FXml: TNativeXml;
  i,j,k: integer;
  RootName, Hijos: TXmlNode;
  sr: TSearchRec;
  mascara, fichero,carpeta : string;
begin
  if  not origenes[OrigenIndex2].Compactados then
    begin
      for i  := 0 to TotalServicios - 1 do
      begin
        mascara := origenes[OrigenIndex2].CarpetaTemporalIRI +'*'+ servicios[i].Extension;
        if SysUtils.FindFirst(mascara, faArchive, sr) = 0 then
        begin
          repeat
            //leyendo del datos del xml
            FXml := TNativeXml.Create;
            FXml.Clear;
            // Load the XML file
            FXml.LoadFromFile(origenes[OrigenIndex2].CarpetaTemporalIRI+sr.Name);
             //The Root property contains the root node, we use it as a base
            if assigned(FXml.Root) then
            begin
              // Iterate through all the child nodes of Root (level 1)
              for j := 0 to FXml.Root.NodeCount - 1 do
              begin
                RootName := FXml.Root.Nodes[j];
                // Also iterate through the grandchilds (level 2)
                for k := 0 to RootName.NodeCount - 1 do
                begin
                  Hijos := RootName.Nodes[k];
                  if Hijos.Name = 'fichero' then
                  begin
                   fichero:=Hijos.ValueAsString;
                  end; //if Hijos.Name = 'Fichero'
                  if Hijos.Name = 'carpeta' then
                  begin
                   carpeta:=Hijos.ValueAsString;
                  end; //if Hijos.Name = 'Fichero'
                end;//level2
              end;//level1
            end; //if assigned(FXml.Root)  }
            if origenes[OrigenIndex2].FormaRxContenidos = 'carpeta' then
             begin
                CopySrcDir.Text := carpeta ;
                CopySrcFile.Text := fichero;
                CopyTarDir.Text := origenes[OrigenIndex2].CarpetaTemporalContenidos+servicios[i].Servicio +'\';
                CopyFiles(Sender);
             end;

             if origenes[OrigenIndex2].FormaRxContenidos = 'ftp' then
             begin
                FtpHost.Text := origenes[OrigenIndex2].ServidorRxContenidos;
                FtpUsername.Text := origenes[OrigenIndex2].UsuarioRxContenidos;
                FtpPassword.Text := origenes[OrigenIndex2].PasswordRxContenidos;
                Ftp1Path.Text := origenes[OrigenIndex2].CarpetaContenidos;

                Ftp1SrcName.Text := fichero;
                Ftp1LocDir.Text :=  origenes[OrigenIndex2].CarpetaTemporalContenidos;
                doFtpDown1Click(Sender);
             end;

             if origenes[OrigenIndex2].FormaRxContenidos = 'http' then
             begin
                HttpSrcDir.Text := origenes[OrigenIndex2].ServidorRxContenidos;
                NetLogon.Text := origenes[OrigenIndex2].UsuarioRxContenidos;
                NetPassword.Text := origenes[OrigenIndex2].PasswordRxContenidos;

                HttpSrcFile.Text := fichero;
                HttpTarDir.Text :=  origenes[OrigenIndex2].CarpetaTemporalContenidos;
                HttpDownload(Sender);
             end;
          until SysUtils.FindNext(sr) <> 0; //repeat until findnext
          SysUtils.FindClose(sr);
        end; // if findfirst
      end;//totalservicios


  end;// if not origen con compactados

  if OrigenIndex2 = (TotalOrigenes-1) then
  begin
    OrigenIndex2 := 0;
  end
  else
  begin
    OrigenIndex2 := OrigenIndex2 + 1;
  end;

end;

procedure TMainForm.VrTimer1Timer(Sender: TObject);
var
temita,dsa1, fechacim,unouno,nombretabla : Ansistring;
dsa : string[160];
tamano : integer;
long, fechacimlongitud, i: integer;
entrada: boolean;
clav: longint;
fechahora : TDateTime;
aplicadopor: string;
ok: boolean;
guardar: boolean;
 fec,uno : TDateTime;
 week, anno : Word;
 Doc: TNativeXml;
  dato, valuenode,numeronode : TXmlNode;
  nodecount:Integer;
  numeros : string;
  format : string;

begin
  cdad1:=0;
  genericos:=0;
//  ff:=0;
  format:='ddmmyyyyhhnnsszzz';
  filein:=TMemoryStream.Create;

   result:=setcurrentDir(rutaOrigen);
    if findfirst(mascara, faArchive, GR)= 0 then
    begin
      repeat
//         if fileexists(GR.Name) then
        if LowerCase(Mascara) = '*.wav' then
        begin
          try
          filein.LoadFromFile(GR.Name);
          if deletefile(GR.Name) then
             begin //pudo borrar
             buffer:=filein.Memory;
               // Obtener Footer y preparar la estadística
                if filein.Size>=(sizeof(datos)+sizeof(aux)) then
                begin  // tamano OK
                dp := ptr(longword(buffer)+filein.Size-sizeof(datos));
                ap := ptr(longword(buffer)+filein.Size-sizeof(datos)-sizeof(aux));
                move(dp^,datostx,sizeof(datos));
                move(ap^,datosaux,sizeof(aux));

                // Rellenar Footer Auxiliar
                datosaux.CODE:=$55AA4466;
                error:= false;
                llamado:= '';
                llamador:= '';
                clave:=0;
                multiplex:=0;
                canal:=0;
                captura:='Desconocida';
                //OK:=false;
                guardar:=false;

                // Determinacion del tipo de Captura y obtencion de las claves asociadas
                // Devuelve Error = True si hay problemas, para actualizar e indicar los genericos
                // Devuelve ACommand con las claves seleccionadas y el cdor la cantidad

                case datostx.tipocaptura of
                 1:begin
                   //Internacional
                   // filter := '(telefono = ' + QuotedStr(Trim(llamadostr)) + ') OR ';
                   // filter := filter + '(telefono = ' + QuotedStr(Trim(llamadorstr)) + ')';
                   //OK:=true;
                   // filter := filter + '(telefono = ' + QuotedStr(Trim(llamadorstr)) + ')';
//                   DM.T1Captura1.Active:=false;
//                   DM.T1SourceCaptura.DataSet:=DM.T1Captura1;
//                   main.cxTableView1.DataController.DataSource:=DM.T1SourceCaptura;
                   llamado:= trim(datostx.llamado);
                   llamador:= trim(datostx.llamador);
                   captura:='internacional';
//                        with DM.T1Captura1 do
//                        begin
//                         Params.ParamByName('llamado').Value := llamado;
//                         Params.ParamByName('llamador').Value := llamador;
//                         open;
//                        end;
//                        cdor:=main.cxTableView1.DataController.DataSetRecordCount;
                        if cdor = 0 then
                        begin
                        error:=true;
                        datosaux.aplicadopor:='NoAplicado';
                        guardar:=true;
                        end;
                   end;

                 2:begin
                   //Multiplex-Canal
                   // filter := '(multiplex = ' + IntToStr(datostx.multiplex) + ') AND ';
                   // filter := filter + '(canal = ' + IntToStr(datostx.itorigen) + ')';
                   //OK:=true;
                   if (datostx.multiplex = 0) then  datostx.multiplex := 987;
                   fechacim := StringReplace(trim(datostx.fecha), '.', ':',[rfReplaceAll]);
                   fechacimlongitud:=length(fechacim);
                   if fechacimlongitud>40 then fechacimlongitud:=40;
                   for i:=1 to 40 do datostx.fecha[i]:=#0;
                    //datostx.fecha:=fechacim;
                   for i:=1 to fechacimlongitud do datostx.fecha[i]:=fechacim[i];
//                   DM.T1Captura2.Active:=false;
//                   DM.T1SourceCaptura.DataSet:=DM.T1Captura2;
//                   main.cxTableView1.DataController.DataSource:=DM.T1SourceCaptura;

                   multiplex:=datostx.multiplex;
                   canal:=datostx.itorigen;
                   captura:='multiplex';
//                   with DM.T1Captura2 do
//                     begin
//                     Params.ParamByName('multiplex').Value := datostx.multiplex;
//                     Params.ParamByName('canal').Value := datostx.itorigen;
//                     open;
//                     end;
//                   cdor:=main.cxTableView1.DataController.DataSetRecordCount;
                   if cdor = 0 then
                        begin
                        error:=true;
                        datosaux.aplicadopor:='NoAplicado';
                        guardar:=true;
                        end;
                   end;

                 3:begin
                   // Ericcson/Alcatel
                   // filter := '(telefono = ' + QuotedStr(Trim(llamadostr)) +  ') OR ';
                   // filter := filter + '(telefono = ' + QuotedStr(Trim(llamadorstr))  + ') OR ';
                   // filter := filter + '(telefono = ' + QuotedStr(Trim(dsastr))  + ') OR ';
                   // if Trim(temastr) = '' then
                   //   filter := filter + '(clave = 0)'
                   // else
                   //   filter := filter + '(clave = ' + Trim(temastr) + ')';
                   //OK:=true;
                   // select * from `claves` where (activa = 1) AND (estado = 'aplicada') AND (clave = :clave)  order by clave
//                   DM.T1Captura3.Active:=false;
//                   DM.T1SourceCaptura.DataSet:=DM.T1Captura3;
//                   main.cxTableView1.DataController.DataSource:=DM.T1SourceCaptura;

                   llamado:= trim(datostx.llamado);
                   llamador:= trim(datostx.llamador);
                   if llamador='' then llamador:= trim(datostx.dsa);
                   if llamado='' then llamado:= trim(datostx.dsa);

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
                   if clave=0 then
                     begin
                     captura:='ericsson';
                     if (llamado='') or (llamador='') then
                     begin
                     error:=true;
                     datosaux.aplicadopor:='SinIRI';
                     guardar:=false;
                     end
                     else
                     begin
//                     DM.T1Captura3.SQL.Clear;
//                     DM.T1Captura3.SQL.Add('select * from `claves` where (estado = :estado) AND ((chequeo = :llamado) OR (chequeo = :llamador)) AND ((aplicadopor = :aplicadopor) OR (aplicadopor = :aplicadopor1)) order by clave');
//                     with DM.T1Captura3 do
//                     begin
//                     Params.ParamByName('llamado').Value := llamado;
//                     Params.ParamByName('llamador').Value := llamador;
//                     Params.ParamByName('estado').Value := 'aplicada';
//                     Params.ParamByName('aplicadopor').Value := 'ericcson';
//                     Params.ParamByName('aplicadopor1').Value := 'ericsson';
//                     open;
//                     end;
//
//                     cdor:=main.cxTableView1.DataController.DataSetRecordCount;
                     if cdor = 0 then
                        begin
                        error:=true;
                        datosaux.aplicadopor:='NoAplicado';
                        guardar:=true;
                        end;
                     end;
                     end
                   else
                     begin
                     captura:='alcatel';
//                     DM.T1Captura3.SQL.Clear;
//                     DM.T1Captura3.SQL.Add('select * from `claves` where (estado = :estado) AND (clave = :clave) AND ((aplicadopor = :aplicadopor) OR (aplicadopor = :aplicadopor1) OR (aplicadopor = :aplicadopor2))  order by clave');
//                     with DM.T1Captura3 do
//                     begin
//                     Params.ParamByName('clave').Value := clave;
//                     Params.ParamByName('estado').Value := 'aplicada';
//                     Params.ParamByName('aplicadopor2').Value := 'huawei ngn';
//                     Params.ParamByName('aplicadopor').Value := 'alcatel';
//                     Params.ParamByName('aplicadopor1').Value := 'huawei';
//                     open;
//                     end;
//
//                     cdor:=main.cxTableView1.DataController.DataSetRecordCount;
                     if cdor = 0 then
                        begin
                        error:=true;
                        datosaux.aplicadopor:='ClaveNoAplicada';
                        guardar:=true;
                        end
                     else
                       if cdor>1 then
                        begin
                        error:=true;
                        datosaux.aplicadopor:='ClaveRepetida';
                        guardar:=true;
                        end
                     else
                      begin
//                      chequeo:=main.cxTableView1.DataController.DataSet.fieldbyname('chequeo').AsString;
//                      if (llamado='') or (llamador='') then actualizaErrorEstadisticas('SinIRI',inttostr(datostx.tipocaptura),'');
//                        DM.T1Captura3.Active:=false;
//                        DM.T1Captura3.SQL.Clear;
//                        DM.T1Captura3.SQL.Add('select * from `claves` where (estado = :estado) AND (chequeo = :chequeo) AND ((aplicadopor = :aplicadopor) OR (aplicadopor = :aplicadopor1) OR (aplicadopor = :aplicadopor2))  order by clave');
//                        with DM.T1Captura3 do
//                        begin
//                        Params.ParamByName('chequeo').Value := chequeo;
//                        Params.ParamByName('estado').Value := 'aplicada';
//                        Params.ParamByName('aplicadopor2').Value := 'huawei ngn';
//                        Params.ParamByName('aplicadopor').Value := 'alcatel';
//                        Params.ParamByName('aplicadopor1').Value := 'huawei';
//                        open;
//                        end;
//
//                        cdor:=main.cxTableView1.DataController.DataSetRecordCount;
                        if cdor = 0 then
                        begin
                        error:=true;
                        datosaux.aplicadopor:='NoAplicado';
                        guardar:=true;
                        end;

                      end;
                     end;

                   end;

                 4:begin
                   // Analogico/SGV
                   //filter := '(multiplex = 500) AND ';
                   // filter := filter + '(canal = ' + IntToStr(datostx.itdestino) + ')';
                   //OK:=true;
//                   DM.T1Captura4.Active:=false;
//                   DM.T1SourceCaptura.DataSet:=DM.T1Captura4;
//                   main.cxTableView1.DataController.DataSource:=DM.T1SourceCaptura;
//                   canal:=datostx.itdestino;
//                   multiplex:=500;
//                   captura:='sgv';
//                   with DM.T1Captura4 do
//                     begin
//                     Params.ParamByName('multiplex').Value := multiplex;
//                     Params.ParamByName('canal').Value := canal;
//                     open;
//                     end;
//                   cdor:=main.cxTableView1.DataController.DataSetRecordCount;
                   if cdor = 0 then
                        begin
                        error:=true;
                        datosaux.aplicadopor:='NoAplicado';
                        guardar:=true;
                        end;
                   end;

                 5:begin
                   // Celular
                   //filter := '(telefono = ' + QuotedStr(Trim(llamadostr)) +  ') OR ';
                   // filter := filter + '(telefono = ' + QuotedStr(Trim(llamadorstr))  + ') OR ';
                   // if Trim(temastr) = '' then
                   //   filter := filter + '(clave = 0)'
                   // else
                   //   filter := filter + '(clave = ' + Trim(temastr) + ')';
                   //OK:=true;
//                   DM.T1Captura5.Active:=false;
//                   DM.T1SourceCaptura.DataSet:=DM.T1Captura5;
//                   main.cxTableView1.DataController.DataSource:=DM.T1SourceCaptura;
//
//                   llamado:= trim(datostx.llamado);
//                   llamador:= trim(datostx.llamador);
//                   captura:='celular';
//                   with DM.T1Captura5 do
//                     begin
//                     Params.ParamByName('llamado').Value := llamado;
//                     Params.ParamByName('llamador').Value := llamador;
//                     Params.ParamByName('aplicadopor').Value := 'celular';
//                     open;
//                     end;
//
//                     cdor:=main.cxTableView1.DataController.DataSetRecordCount;
                     if cdor = 0 then
                       begin
                        error:=true;
                        datosaux.aplicadopor:='NoAplicado';
                        guardar:=true;
                       end;
                   end;

                   12:begin

//                   DM.T1Captura5.Active:=false;
//                   DM.T1SourceCaptura.DataSet:=DM.T1Captura5;
//                   main.cxTableView1.DataController.DataSource:=DM.T1SourceCaptura;

                   llamado:= trim(datostx.llamado);
                   llamador:= trim(datostx.llamador);
                   captura:='Halcon';
//                   with DM.T1Captura5 do
//                     begin
//                     Params.ParamByName('llamado').Value := llamado;
//                     Params.ParamByName('llamador').Value := llamador;
//                     Params.ParamByName('aplicadopor').Value := 'halcon';
//                     open;
//                     end;
//
//                     cdor:=main.cxTableView1.DataController.DataSetRecordCount;
                     if cdor = 0 then
                       begin
                        error:=true;
                        datosaux.aplicadopor:='NoAplicado';
                        guardar:=true;
                       end;
                   end;


                 6:begin
                   // Alcatel Internacional
                   // filter := '(telefono = ' + QuotedStr(Trim(llamadostr)) +  ') OR ';
                   // filter := filter + '(telefono = ' + QuotedStr(Trim(llamadorstr))  + ') OR ';
                   // filter := filter + '(telefono = ' + QuotedStr(Trim(dsastr))  + ') OR ';
                   // if Trim(temastr) = '' then
                   //   filter := filter + '(clave = 0)'
                   // else
                   //   filter := filter + '(clave = ' + Trim(temastr) + ')';
                   //OK:=true;
//                   DM.T1Captura6.Active:=false;
//                   DM.T1Captura6.sql.Clear;
//                   DM.T1Captura6.sql.Add('select * from `claves` where (estado = :estado) AND (aplicadopor = :aplicadopor) AND ((chequeo = :llamado) OR (chequeo = :llamador) ');
                   captura:='alcatelinternacional';
                   llamado:= trim(datostx.llamado);
                   llamador:= trim(datostx.llamador);
                   if llamador='' then llamador:= trim(datostx.dsa);
                   if llamado='' then llamado:= trim(datostx.dsa);
                   ///
//                   DM.T1Captura7.close;
//                   DM.T1SourceCaptura.DataSet:=DM.T1Captura7;
//                   main.cxTableView1.DataController.DataSource:=DM.T1SourceCaptura;
//                   DM.T1Captura7.Active:=True;
//                   cdor:=main.cxTableView1.DataController.DataSetRecordCount;
                   if cdor>0 then
                   begin
//                     main.cxTableView1.DataController.GotoFirst;
                     while (cdor<>0) do
                     begin
//                     zonita := main.cxTableView1.DataController.Dataset.FieldbyName('zona').asstring;
                     if (Pos(zonita,llamado)= 1)  then
                     begin
//                       clavita := main.cxTableView1.DataController.Dataset.FieldbyName('clave').asstring;
//                       DM.T1Captura6.sql.Add('OR (clave = ' + clavita + ') ');
                     end;
//                     main.cxTableView1.DataController.GotoNext;
                     dec(cdor);
                     end;

                   end;
                   ////
//                   DM.T1Captura6.sql.Add(') order by clave');
//                   DM.T1SourceCaptura.DataSet:=DM.T1Captura6;
//                   main.cxTableView1.DataController.DataSource:=DM.T1SourceCaptura;
//
//                   with DM.T1Captura6 do
//                     begin
//                     Params.ParamByName('llamado').Value := llamado;
//                     Params.ParamByName('llamador').Value := llamador;
//                     Params.ParamByName('aplicadopor').Value := 'alcatel internacional';
//                     Params.ParamByName('estado').Value := 'aplicada';
//                     open;
//                     end;
//
//                     cdor:=main.cxTableView1.DataController.DataSetRecordCount;
                   if cdor = 0 then
                        begin
                        error:=true;
                        datosaux.aplicadopor:='NoAplicado';
                        guardar:=true;
                        end;

                   end

                 else
                     begin
                     error:=true;
                     guardar:=true;
                     datosaux.aplicadopor:='TipoCapturaDesconocido';
                     end;
                end;
              if error then
                begin
                error:=false;
//                if guardar then
//                begin
//                try
//                 actualizaDirectorioGenericos;
//                 filein.SaveToFile(DirGenericos+'\'+GR.Name);
//                except
//                cad:='T1...Error escribiendo:'+DirGenericos+'\'+GR.Name;
//                synchronize(updateListBox);
//                error:=true;
//                end;
//                end;
//                inc(genericos);
//                actualizaEstadisticas;
//                actualizaErrorEstadisticas(datosaux.aplicadopor,inttostr(datostx.tipocaptura),'');
                end
              else
              begin    // NO ERROR

                          DMDespachador.ConexionDestino.Close;
                          DMDespachador.ConexionDestino.server := destinos[m].ServidorBD;
                          DMDespachador.ConexionDestino.port := destinos[m].PuertoBD;
                          DMDespachador.ConexionDestino.database :=destinos[m].Autoridad;
                          DMDespachador.ConexionDestino.username := destinos[m].UsuarioBD;
                          DMDespachador.ConexionDestino.password := destinos[m].PasswordBD;
                          DMDespachador.ConexionDestino.Open;
                          DMDespachador.Claves.ParamByName(
                            'chequeo').AsString := Telefonia.Llamado;
                          DMDespachador.Claves.ParamByName(
                            'chequeo1').AsString := Telefonia.Llamador;
                          DMDespachador.Claves.ParamByName(
                            'LIID').AsInteger := 0;
                          DMDespachador.Claves.ExecProc;
                          if DMDespachador.Claves.RecordCount > 0 then
                           begin
                             DMDespachador.Claves.First;
                             for p := 0 to (DMDespachador.Claves.RecordCount-1) do
                             begin
                               if (DMDespachador.Claves.fieldbyname('fechafin').asdatetime >= now) and
                               (DMDespachador.Claves.fieldbyname('fechainicio').asdatetime <= now) then
                               begin
                                 if DMDespachador.Claves.fieldbyname('activo').asboolean then
                                 begin
                                   if DMDespachador.Claves.fieldbyname('guardarBdTx').asboolean then
                                   begin
                                     DMDespachador.InsertarTTelefonia.ParamByName(
                                        'idclave').AsInteger := DMDespachador.Claves.fieldbyname('idclave').asinteger;
                                     DMDespachador.InsertarTTelefonia.ParamByName(
                                        'fechatx').AsDateTime :=
                                          Telefonia.Fechatx;
                                     DMDespachador.InsertarTTelefonia.ParamByName(
                                        'duracion').AsString :=
                                          Telefonia.Duracion;
                                     DMDespachador.InsertarTTelefonia.ParamByName(
                                        'duraciontx').AsInteger := 0;
                                     DMDespachador.InsertarTTelefonia.ParamByName(
                                        'origen').AsString :=
                                          Telefonia.Llamado ;
                                     DMDespachador.InsertarTTelefonia.ParamByName(
                                        'destino').AsString :=
                                          Telefonia.Llamador;
                                     DMDespachador.InsertarTTelefonia.ParamByName(
                                        'idestadotx').AsInteger:=
                                          Telefonia.Idestadotx;
                                     DMDespachador.InsertarTTelefonia.ParamByName(
                                        'dsa').AsString :=
                                          Telefonia.dsa;
                                     DMDespachador.InsertarTTelefonia.ParamByName(
                                        'carpetacontenido').AsString :=  destinos[m].carpetacontenidos;
//                                          DMDespachador.Claves.fieldbyname('carpetatx').asstring;
                                     DMDespachador.InsertarTTelefonia.ParamByName(
                                        'ficherocontenido').AsString :=
                                          Telefonia.FicheroContenido ;
                                     DMDespachador.InsertarTTelefonia.ParamByName(
                                        'idservicio').AsInteger :=
                                          Telefonia.IdServicio;
                                     DMDespachador.InsertarTTelefonia.ExecProc;

                                   end;


                                   ///guardo ficherocontenido en destino
                                   ///
                                   carpetadestino := destinos[m].carpetacontenidos;
//                                     DMDespachador.Claves.fieldbyname(
//                                       'carpetatx').asstring;

                                   if destinos[m].FormaTxIRI = 'carpeta' then
                                   begin
                                      CopySrcDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                      CopySrcFile.Text := fichero;
                                      CopyTarDir.Text := carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;
                                      CopyFiles(Sender);
                                   end;

                                   if destinos[m].FormaTxIRI = 'ftp' then
                                   begin
                                      FtpHost.Text := destinos[m].ServidorTxContenidos;
                                      FtpUsername.Text := destinos[m].UsuarioTxContenidos;
                                      FtpPassword.Text := destinos[m].PasswordTxContenidos;
                                      Ftp1Path.Text := origenes[OrigenIndex1].CarpetaTemporalIRI+origenes[OrigenIndex1].CarpetaTemporalContenidos;

                                      Ftp1SrcName.Text := fichero;
                                      Ftp1LocDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                                      doFtpDown1Click(Sender);
                                   end;

                                   if destinos[m].FormaTxIRI = 'http' then
                                   begin
                                      HttpSrcDir.Text := destinos[m].ServidorTxContenidos;
                                      NetLogon.Text := destinos[m].UsuarioTxContenidos;
                                      NetPassword.Text := destinos[m].PasswordTxContenidos;

                                      HttpSrcFile.Text := fichero;
                                      HttpTarDir.Text :=  carpetadestino+origenes[OrigenIndex1].CarpetaTemporalContenidos;;
                                      HttpDownload(Sender);
                                   end;

//                                   ///IRI
//                                   ///
//
//                                   if destinos[m].FormaTxIRI = 'carpeta' then
//                                   begin
//                                      CopySrcDir.Text := origenes[OrigenIndex1].CarpetaTemporalIRI;
//                                      CopySrcFile.Text := ExtractFileName(XMLDocument1.FileName);
//                                      CopyTarDir.Text := carpetadestino;
//                                      CopyFiles(Sender);
//                                   end;
//
//                                   if destinos[m].FormaTxIRI = 'ftp' then
//                                   begin
//                                      FtpHost.Text := destinos[m].ServidorTxContenidos;
//                                      FtpUsername.Text := destinos[m].UsuarioTxContenidos;
//                                      FtpPassword.Text := destinos[m].PasswordTxContenidos;
//                                      Ftp1Path.Text := origenes[OrigenIndex1].CarpetaTemporalIRI;
//
//                                      Ftp1SrcName.Text := ExtractFileName(XMLDocument1.FileName);
//                                      Ftp1LocDir.Text :=  carpetadestino;
//                                      doFtpDown1Click(Sender);
//                                   end;
//
//                                   if destinos[m].FormaTxIRI = 'http' then
//                                   begin
//                                      HttpSrcDir.Text := destinos[m].ServidorTxContenidos;
//                                      NetLogon.Text := destinos[m].UsuarioTxContenidos;
//                                      NetPassword.Text := destinos[m].PasswordTxContenidos;
//
//                                      HttpSrcFile.Text := ExtractFileName(XMLDocument1.FileName);
//                                      HttpTarDir.Text :=  carpetadestino;
//                                      HttpDownload(Sender);
//                                   end;
//
//
//                                   /////guardo fichero iri en destino
                                 end;


                                 DMDespachador.Claves.Next;
                               end else
                               begin
                                 generico := true;
                                 //generico por fuera de fecha
                               end;
                           end
                           end;




            end;
end;

procedure TMainForm.VrTimerEnviarTimer(Sender: TObject);
var
  FXml: TNativeXml;
  i,j,k,m: integer;
  RootName, Hijos: TXmlNode;
  sr: TSearchRec;
  mascara, fichero : string;
begin
   for i  := 0 to TotalServicios - 1 do
      begin
        mascara := origenes[OrigenIndex3].CarpetaTemporalIRI +'*'+ servicios[i].Extension;
        if SysUtils.FindFirst(mascara, faArchive, sr) = 0 then
        begin
          repeat
            //leyendo del datos del xml
            FXml := TNativeXml.Create;
            FXml.Clear;
            // Load the XML file
            FXml.LoadFromFile(mascara);

            for j  := 0 to TotalDestinos - 1 do
            begin
              DMDespachador.ConexionDestino.Close;
              DMDespachador.ConexionDestino.server := destinos[i].ServidorBD;
              DMDespachador.ConexionDestino.port := destinos[i].PuertoBD;
              DMDespachador.ConexionDestino.username := destinos[i].UsuarioBD;
              DMDespachador.ConexionDestino.password := destinos[i].PasswordBD;
              DMDespachador.ConexionDestino.Open;
              //DMDespachador.ClavesRequerimientos.Close;
              //DMDespachador.ClavesRequerimientos.ExecProc;
              //DMDespachador.ClavesDescubrimientos.Close;
              //DMDespachador.ClavesDescubrimientos.ExecProc;

              // The Root property contains the root node, we use it as a base
              if assigned(FXml.Root) then
              begin
                // Iterate through all the child nodes of Root (level 1)
                for k := 0 to FXml.Root.NodeCount - 1 do
                begin
                  RootName := FXml.Root.Nodes[k];
                  // Also iterate through the grandchilds (level 2)
                  for m := 0 to RootName.NodeCount - 1 do
                  begin
                    Hijos := RootName.Nodes[m];
                    if Hijos.Name = 'Fichero' then
                    begin
                     fichero:=Hijos.ValueAsString;

                      { Move file from source file path to destination file path }
                       if origenes[OrigenIndex3].FormaRxContenidos = 'carpeta' then
                       begin
                          CopySrcDir.Text := origenes[OrigenIndex3].CarpetaContenidos ;
                          CopySrcFile.Text := fichero;
                          CopyTarDir.Text := origenes[OrigenIndex3].CarpetaTemporalContenidos;
                          CopyFiles(Sender);
                       end;

                       if origenes[OrigenIndex3].FormaRxContenidos = 'ftp' then
                       begin
                          FtpHost.Text := origenes[OrigenIndex3].ServidorRxContenidos;
                          FtpUsername.Text := origenes[OrigenIndex3].UsuarioRxContenidos;
                          FtpPassword.Text := origenes[OrigenIndex3].PasswordRxContenidos;
                          Ftp1Path.Text := origenes[OrigenIndex3].CarpetaContenidos;

                          Ftp1SrcName.Text := fichero;
                          Ftp1LocDir.Text :=  origenes[OrigenIndex3].CarpetaTemporalContenidos;
                          doFtpDown1Click(Sender);
                       end;

                       if origenes[OrigenIndex3].FormaRxContenidos = 'http' then
                       begin
                          HttpSrcDir.Text := origenes[OrigenIndex3].ServidorRxContenidos;
                          NetLogon.Text := origenes[OrigenIndex3].UsuarioRxContenidos;
                          NetPassword.Text := origenes[OrigenIndex3].PasswordRxContenidos;

                          HttpSrcFile.Text := fichero;
                          HttpTarDir.Text :=  origenes[OrigenIndex3].CarpetaTemporalContenidos;
                          HttpDownload(Sender);
                       end;

                    end; //if Hijos.Name = 'Fichero'
                  end;//level2
               end;//level1
              end; //if assigned(FXml.Root)
            end;//for j:=0 to totaldestinos
          until SysUtils.FindNext(sr) <> 0; //repeat until findnext
          SysUtils.FindClose(sr);
        end; // if findfirst
      end;//totalservicios

  if OrigenIndex3 = (TotalOrigenes-1) then
  begin
    OrigenIndex3 := 0;
  end
  else
  begin
    OrigenIndex3 := OrigenIndex3 + 1;
  end;

  if DestinoIndex1 = (TotalDestinos-1) then
  begin
    DestinoIndex1 := 0;
  end
  else
  begin
    DestinoIndex1 := DestinoIndex1 + 1;
  end;

end;


procedure TMainForm.SetFtpButtons (value: boolean) ;
begin
    doFtpDownCheck.Enabled := value ;
    doFtpDownFiles.Enabled := value ;
    doFtpUpCheck.Enabled := value ;
    doFtpUpFiles.Enabled := value ;
    doFtpList.Enabled := value ;
    doFtpDown1.Enabled := value ;
    doFtpAbort.Enabled := NOT value ;
    doFtpAbort1.Enabled := NOT value ;
end ;

procedure TMainForm.doFtpListClick(Sender: TObject);
var
    dirlisting: UnicodeString ;
    taskres: TTaskResult ;
begin
    AbortFlag := false ;
    SetFtpButtons (false) ;
    MagFTPClient := TMagFtpW.Create (self) ;
    try
        if SetFTPGen then exit ;
        try
            with MagFTPClient do
            begin
                BulkMode := BulkModeDownload ;
                SrcDir := FtpPath.Text ;
                SubDirs := FtpSubdirs.Checked ;
                taskres := DispFtpDir (dirlisting) ;  // main FTP function
                AddLogText ('Task Result: ' + GetTaskResName (taskres)) ;
                AddLogText (dirlisting) ;
            end ;
        except
            AddLogText ('FTP Error - ' + GetExceptMess (ExceptObject)) ;
        end ;
    finally
        FreeAndNil (MagFTPClient) ;
        LabelProgress.Caption := 'FTP Completed' ;
        SetFtpButtons (true) ;
    end ;
end;

procedure TMainForm.FtpDownload(Sender: TObject);
var
    checkflag: boolean ;
    taskres: TTaskResult ;
begin
    AbortFlag := false ;
    SetFtpButtons (false) ;
    MagFTPClient := TMagFtpW.Create (self) ;
    try
        if SetFTPGen then exit ;
        try
            checkflag := false ;
            if Sender = doFtpDownCheck then checkflag := true ;
            with MagFTPClient do
            begin
                BulkMode := BulkModeDownload ;
                SrcDir := FtpPath.Text ;
                TarDir := FtpLocDir.Text ;
            // CopyType: FCTypeSingle, FCTypeMaskDir, FCTypeArchDir, FCTypeAllDir, FCTypeDates
                if FtpCopyAllDir.Checked then     // 22 Feb 2008
                    CopyType := FCTypeAllDir
                else
                    CopyType := FCTypeMaskDir ;
                DelDone := FtpDelDone.Checked ;    // 18 Nov 2005
                DelOldTar := FtpDelOldTar.Checked ; // 22 Feb 2008
                SubDirs := FtpSubdirs.Checked ;   // true copy all sub directories
                SrcFName := FtpSrcFile.Text ;  // 8 Apr 2009 - may include masked directories if Mask=true, and MaskLocDir and/or MaskRemDir
                Mask := false ;     // true, allow date/time masked characters and directories in SrcFName
                Prev := false ;     // true, use yesterday's date for Mask
                MaskLocDir := false ; // 8 Apr 2009 - true use masked directories from SrcFName
                MaskRemDir := false ; // 8 Apr 2009 - true use masked directories from SrcFName
            // Repl: FCReplNever, FCReplAlways, FCReplDiff, FCReplNewer
                Repl := FCReplNever ;
                if FtpReplace.Checked then Repl := FCReplAlways ;
                ReplRO := true ;    // true, replace read only files
                Safe := true ;     // true, copy file with TMP extension, rename when done
                IgnoreFileExt := 'tmp;ftp' ;
                taskres := FtpDownload (checkflag) ;   // main FTP function
                AddLogText ('Task Result: ' + GetTaskResName (taskres)) ;
                AddLogText (ReqResponse) ;
            end ;
        except
            AddLogText ('FTP Error - ' + GetExceptMess (ExceptObject)) ;
        end ;
    finally
        FreeAndNil (MagFTPClient) ;
        LabelProgress.Caption := 'FTP Completed' ;
        SetFtpButtons (true) ;
    end ;
end;


procedure TMainForm.FtpUpload(Sender: TObject);
var
    checkflag: boolean ;
    taskres: TTaskResult ;
begin
    AbortFlag := false ;
    SetFtpButtons (false) ;
    MagFTPClient := TMagFtpW.Create (self) ;
    try
        if SetFTPGen then exit ;
        try
            checkflag := false ;
            if Sender = doFtpUpCheck then checkflag := true ;
            with MagFTPClient do
            begin
                BulkMode := BulkModeUpload ;
                SrcDir := FtpLocDir.Text ;
                TarDir := FtpPath.Text ;
            // CopyType: FCTypeSingle, FCTypeMaskDir, FCTypeArchDir, FCTypeAllDir, FCTypeDates
                if FtpCopyAllDir.Checked then     // 22 Feb 2008
                    CopyType := FCTypeAllDir
                else
                    CopyType := FCTypeMaskDir ;
                DelDone := FtpDelDone.Checked ;   // 18 Nov 2005
                DelOldTar := FtpDelOldTar.Checked ; // 22 Feb 2008
                SubDirs := FtpSubdirs.Checked ;   // true copy all sub directories
                SrcFName := FtpSrcFile.Text ;  // 8 Apr 2009 - may include masked directories if Mask=true, and MaskLocDir and/or MaskRemDir
                Mask := false ;     // true, allow date/time masked characters and directories in SrcFName
                Prev := false ;     // true, use yesterday's date for Mask
                MaskLocDir := false ; // 8 Apr 2009 - true use masked directories from SrcFName
                MaskRemDir := false ; // 8 Apr 2009 - true use masked directories from SrcFName
            // Repl: FCReplNever, FCReplAlways, FCReplDiff, FCReplNewer
                Repl := FCReplNewer ;
                if FtpReplace.Checked then Repl := FCReplAlways ;
                Safe := true ;     // ignored
                IgnoreFileExt := 'tmp' ;
                UpImmed := false ;   // immediate move/delete after upload
                TimeStamp := false ; // update local file time stamp to match remote
                taskres := FtpUpload (checkflag) ;   // main FTP function
                AddLogText ('Task Result: ' + GetTaskResName (taskres)) ;
                AddLogText (ReqResponse) ;
            end ;
        except
            AddLogText ('FTP Error - ' + GetExceptMess (ExceptObject)) ;
        end ;
    finally
        FreeAndNil (MagFTPClient) ;
        LabelProgress.Caption := 'FTP Completed' ;
        SetFtpButtons (true) ;
    end ;
end;

procedure TMainForm.doFtpDown1Click(Sender: TObject);
var
    taskres: TTaskResult ;
    Replace: TFileCopyRepl ;
begin
    AbortFlag := false ;
    SetFtpButtons (false) ;
    MagFTPClient := TMagFtpW.Create (self) ;
    try
        if SetFTPGen then exit ;
        try
            with MagFTPClient do
            begin
                SrcDir := '/' ;
                BulkMode := BulkModeDownload ;
            //  DelFile := FtpDelDone.Checked ;    pending TMagFtp fix
                Replace := FCReplNewer ;
                Safe := True;
                if FtpOneReplace.Checked then Replace := FCReplAlways ;
                taskres := FtpLogon ;
                if taskres = TaskResOKNew then
                begin
                    taskres := FtpDownOneFile (Ftp1Path.Text, Ftp1SrcName.Text,
                            Ftp1LocDir.Text + '\' + Ftp1SrcName.Text, Replace) ;
                end ;
                AddLogText ('Task Result: ' + GetTaskResName (taskres)) ;
                AddLogText (ReqResponse) ;
            end ;
        except
            AddLogText ('FTP Error - ' + GetExceptMess (ExceptObject)) ;
        end ;
    finally
        MagFTPClient.FtpLogoff ;
        FreeAndNil (MagFTPClient) ;
        LabelProgress.Caption := 'FTP1 Completed' ;
        SetFtpButtons (true) ;
    end ;
end;

procedure TMainForm.doFtpUp1Click(Sender: TObject);
var
    taskres: TTaskResult ;
    Replace: TFileCopyRepl ;
begin
    AbortFlag := false ;
    SetFtpButtons (false) ;
    MagFTPClient := TMagFtpW.Create (self) ;
    try
        if SetFTPGen then exit ;
        try
            with MagFTPClient do
            begin
                TarDir := '/' ;
                BulkMode := BulkModeUpload ;
            //  DelFile := FtpDelDone.Checked ;    pending TMagFtp fix
                Replace := FCReplNewer ;
                if FtpOneReplace.Checked then Replace := FCReplAlways ;
                taskres := FtpLogon ;
                if taskres = TaskResOKNew then
                begin
                    taskres := FtpUpOneFile (Ftp1UpFile.Text, Ftp1Path.Text,
                                                  Ftp1SrcName.Text, Replace) ;
                end ;
                AddLogText ('Task Result: ' + GetTaskResName (taskres)) ;
                AddLogText (ReqResponse) ;
            end ;
        except
            AddLogText ('FTP Error - ' + GetExceptMess (ExceptObject)) ;
        end ;
    finally
        MagFTPClient.FtpLogoff ;
        FreeAndNil (MagFTPClient) ;
        LabelProgress.Caption := 'FTP Completed' ;
        SetFtpButtons (true) ;
    end ;
end;

procedure TMainForm.doTestClick(Sender: TObject);
{var
    taskres: TTaskResult ;
    fname: string ;
    actualDT, newDT: TDateTime ;
    FSize: Int64 ;}
begin
{    fname := 'd:\temp1\testfile.tst' ;
    newDT := Packed2Date ('20040102-003456') ;
    if NOT UpdateUFileAge (fname, newDT) then
    begin
        AddLogText ('Failed to update File Age: ' + fname) ;
        exit ;
    end ;
    GetUAgeSizeFile (fname, actualDT, FSize) ;
    if Abs (actualDT - newDT) <= (OneSecond * 2) then
        AddLogText ('Update File Age OK: ' + fname)
    else
        AddLogText ('File Age Incorrect for: ' + fname) ;
    AddLogText ('New Age: ' + DateTimetoStr (newDT) +
                                    ', Actual: ' + DateTimetoStr (actualDT)) ;

// test install download
    MagFTPClient := TMagFtpW.Create (self) ;
    try
        with MagFTPClient do
        begin
            LocalHost := WSocket.LocalHostName ;
            HostName1 := '192.168.1.63' ;
            HostName2 := '' ;
            UserName := 'angus' ;
            PassWord := 'fgh' ;
            Port := '21' ;
            AttemptDelay := 5 ;
            MaxAttempts := 2 ;
            FailRepeat := 1 ;  // retries for failure
       // ConnectionType: ftpDirect, ftpProxy, ftpSocks4, ftpSocks4A, ftpSocks5
            ConnectionType := ftpDirect ;
            SocksPort := '' ;
            SocksServer := '' ;
            ProxyPort := '' ;
            ProxyServer := '' ;
            SocksUsercode := '' ;
            SocksPassword := '' ;
            PassiveX := false ;  // must be after connection type
       // HostType: FTPTYPE_NONE, FTPTYPE_UNIX, FTPTYPE_DOS, FTPTYPE_MVS, FTPTYPE_AS400, FTPTYPE_MLSD
            HostType := FTPTYPE_NONE ;
       // TXferMode: XferModeBinary, XferModeAscii
            XferMode := XferModeBinary ;
       // TCaseFile: FileLowerCase, FileMixedCase
            CaseFile := FileLowerCase ;
            DiffStampMins := 2 ;
            Timeout := 60 ;
            DispLog := true ;
            DispFiles := true ;
            DispRDir:= true ;
            DispLDir:= true ;
            CopyEvent := onFtpEvent ;
            UpArchDir := '' ;
            UpArchive := false ;
            ResFailed := true ;
            DispRemList := true ;
            BulkMode := BulkModeDownload ;
            SrcDir := '/download/alldepots/install' ;
            SrcFName := '*.zip' ;
            TarDir := 'e:\temp1\install' ;
            CopyType := FCTypeAllDir ;
            DelDone := false ;
            DelOldTar := false ;
            SubDirs := true ;   // true copy all sub directories
            Mask := false ;     // true, allow date/time masked characters in SrcFName
            Prev := false ;     // true, use yesterday's date for Mask
        // Repl: FCReplNever, FCReplAlways, FCReplDiff, FCReplNewer
            Repl := FCReplDiff ;
            ReplRO := true ;    // true, replace read only files
            Safe := false ;     // true, copy file with TMP extension, rename when done
            IgnoreFileExt := 'tmp;ftp' ;
            taskres := FtpDownload (false) ;   // main FTP function
            AddLogText ('Task Result: ' + GetTaskResName (taskres)) ;
            AddLogText (ReqResponse) ;
        end ;
    except
        AddLogText ('FTP Error - ' + GetExceptMess (ExceptObject)) ;
    end ;
    FreeAndNil (MagFTPClient) ; }
end;

procedure TMainForm.doClearClick(Sender: TObject);
begin
    CurrentLogDelim.Lines.Clear ;
    CurrentLogText.Lines.Clear ;
end;

end.
