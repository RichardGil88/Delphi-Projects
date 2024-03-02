unit Umain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ShellAPI, LibXL, Vcl.ComCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxProgressBar, cxGroupBox, cxLabel,
  Excel2000, System.Win.ComObj, dxBarBuiltInMenu, cxPC, cxClasses, dxSkinsForm,
  cxTextEdit, Vcl.Menus, cxButtons, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxCheckBox, cxMemo, cxMaskEdit, Vcl.ExtCtrls,
  UDm, UDMMateriales, UDmMedicamentos, UDMServImg,UDMServHosp,UDMEquipoMedico,
  UDMServLab, UDMTerInt,UDMTrasAmb, UDMServMed,UDMCamHiper, UDMMedNuc,
  UDMMembresia, UDMPaquetes, dxGDIPlusClasses, cxImage, UDMCuenta, HPDFDoc ;

type
 ThreadImportarMateriales = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  public
   function StringToPAnsiChar(stringVar : string) : PAnsiChar;
   procedure IniciarProgressBar;
   procedure ActualizarGrids;
  var
    OrigenMateriales:string;
    ProgressFin, ProgressStatus:Integer;
    UltimaFila:Integer;
    CantRowsMat : Integer;
  end;

 ThreadImportarMedicamentos = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  public
   function StringToPAnsiChar(stringVar : string) : PAnsiChar;
   procedure IniciarProgressBar;
   procedure ActualizarGrids;
  var
    OrigenMedicamentos:string;

    ProgressFin, ProgressStatus:Integer;
    UltimaFila:Integer;
    CantRowsMed : Integer;
  end;

 ThreadImportarServicioDeImagenologia = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  public
   function StringToPAnsiChar(stringVar : string) : PAnsiChar;
   procedure IniciarProgressBar;
   procedure ActualizarGrids;
  var
    OrigenServImg:string;
    ProgressFin, ProgressStatus:Integer;
    UltimaFila:Integer;
    CantRowsServImag : Integer;
  end;

 ThreadImportarServicioDeHospital = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  public
   function StringToPAnsiChar(stringVar : string) : PAnsiChar;
   procedure IniciarProgressBar;
   procedure ActualizarGrids;
  var
    OrigenServHosp:string;
    ProgressFin, ProgressStatus:Integer;
    UltimaFila:Integer;
    CantRowsServHosp : Integer;
  end;

 ThreadImportarEquipoMedico = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  public
   function StringToPAnsiChar(stringVar : string) : PAnsiChar;
   procedure IniciarProgressBar;
   procedure ActualizarGrids;
  var
    OrigenEquipoMed:string;
    ProgressFin, ProgressStatus:Integer;
    UltimaFila:Integer;
    CantRowsEquipoMed : Integer;
  end;

 ThreadImportarServicioDeLaboratorio = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  public
   function StringToPAnsiChar(stringVar : string) : PAnsiChar;
   procedure IniciarProgressBar;
   procedure ActualizarGrids;
  var
    OrigenServLab:string;
    ProgressFin, ProgressStatus:Integer;
    UltimaFila:Integer;
    CantRowsServLab : Integer;
  end;

 ThreadImportarServicioMedico = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  public
   function StringToPAnsiChar(stringVar : string) : PAnsiChar;
   procedure IniciarProgressBar;
   procedure ActualizarGrids;
  var
    OrigenServMed:string;
    ProgressFin, ProgressStatus:Integer;
    UltimaFila:Integer;
    CantRowsServMed : Integer;
  end;

 ThreadImportarTerapiaIntensiva = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  public
   function StringToPAnsiChar(stringVar : string) : PAnsiChar;
   procedure IniciarProgressBar;
   procedure ActualizarGrids;
  var
    OrigenTerapiaInt:string;
    ProgressFin, ProgressStatus:Integer;
    UltimaFila:Integer;
    CantRowsTerapiaInt : Integer;
  end;

 ThreadImportarTrasladoEnAmbulancia = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  public
   procedure IniciarProgressBar;
   procedure ActualizarGrids;
   function StringToPAnsiChar(stringVar : string) : PAnsiChar;

  var
    OrigenTrasAmb:string;
    ProgressFin, ProgressStatus:Integer;
    UltimaFila:Integer;
    CantRowsTrasAmb : Integer;
  end;

 ThreadImportarCamaraHiperbarica = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  public
   procedure IniciarProgressBar;
   procedure ActualizarGrids;
   function StringToPAnsiChar(stringVar : string) : PAnsiChar;

  var
    OrigenCamHiper:string;
    ProgressFin, ProgressStatus:Integer;
    UltimaFila:Integer;
    CantRowsCamHiper : Integer;
  end;

 ThreadImportarMedicinaNuclear = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  public
   procedure IniciarProgressBar;
   procedure ActualizarGrids;
   function StringToPAnsiChar(stringVar : string) : PAnsiChar;

  var
    OrigenMedNuc:string;
    ProgressFin, ProgressStatus:Integer;
    UltimaFila:Integer;
    CantRowsMedNuc : Integer;
  end;

 ThreadImportarMembresia = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  public
   procedure IniciarProgressBar;
   procedure ActualizarGrids;
   function StringToPAnsiChar(stringVar : string) : PAnsiChar;

  var
    OrigenMembresia:string;
    ProgressFin, ProgressStatus:Integer;
    UltimaFila:Integer;
    CantRowsMembresia : Integer;
  end;

 ThreadImportarPaquetes = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  public
   procedure IniciarProgressBar;
   procedure ActualizarGrids;
   function StringToPAnsiChar(stringVar : string) : PAnsiChar;

  var
    OrigenPaquetes:string;
    ProgressFin, ProgressStatus:Integer;
    UltimaFila:Integer;
    CantRowsPaquetes: Integer;
  end;

 ThreadActualizarTablas = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  public
   procedure ActualizarGrids;
   procedure Mostrar;
   procedure Ocultar;
  end;

 ThreadREportes = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  public
    procedure CargarExcelaBd;
    procedure IniciarProgressBar;

    procedure AddPage;
    procedure AddHeader;
    procedure DibujarLinea(Altura:Integer; Grupo:string);
    procedure CrearTabla(Grupo:string;CantReg:integer);
    function IncFila(Num:Integer ) : Integer;
  var
    Excel:string;
    CantRowsExcel: Integer;
    PaginaActual:Integer;
    AlturaActual:Integer;
  end;


  TFmain = class(TForm)
    FileOpenDialog1: TFileOpenDialog;
    dxSkinController1: TdxSkinController;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxPageControl3: TcxPageControl;
    cxTabSheet6: TcxTabSheet;
    cxTabSheet7: TcxTabSheet;
    cxGroupBox3: TcxGroupBox;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxGroupBox4: TcxGroupBox;
    cxLabel10: TcxLabel;
    cxTabSheet4: TcxTabSheet;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit6: TcxTextEdit;
    cxButton1: TcxButton;
    cxCheckBox1: TcxCheckBox;
    cxLabel8: TcxLabel;
    cxCheckBox2: TcxCheckBox;
    cxLabel9: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxTextEdit5: TcxTextEdit;
    cxLabel12: TcxLabel;
    cxTextEdit7: TcxTextEdit;
    cxLabel13: TcxLabel;
    cxTextEdit8: TcxTextEdit;
    cxLabel14: TcxLabel;
    cxTextEdit9: TcxTextEdit;
    cxLabel15: TcxLabel;
    cxTextEdit10: TcxTextEdit;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxCheckBox3: TcxCheckBox;
    cxTextEdit11: TcxTextEdit;
    cxLabel18: TcxLabel;
    cxTextEdit12: TcxTextEdit;
    cxLabel19: TcxLabel;
    cxTextEdit13: TcxTextEdit;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxCheckBox4: TcxCheckBox;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    cxGroupBox5: TcxGroupBox;
    cxLabel26: TcxLabel;
    cxTextEdit14: TcxTextEdit;
    cxLabel29: TcxLabel;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    cxCheckBox5: TcxCheckBox;
    cxLabel32: TcxLabel;
    cxCheckBox6: TcxCheckBox;
    cxLabel33: TcxLabel;
    cxCheckBox7: TcxCheckBox;
    cxLabel34: TcxLabel;
    cxCheckBox8: TcxCheckBox;
    cxTextEdit15: TcxTextEdit;
    cxLabel35: TcxLabel;
    cxLabel36: TcxLabel;
    cxTextEdit16: TcxTextEdit;
    cxLabel37: TcxLabel;
    cxTextEdit17: TcxTextEdit;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxButton4: TcxButton;
    cxGroupBox8: TcxGroupBox;
    cxLabel38: TcxLabel;
    cxTextEdit18: TcxTextEdit;
    cxButton6: TcxButton;
    cxGroupBox16: TcxGroupBox;
    cxLabel39: TcxLabel;
    cxTextEdit21: TcxTextEdit;
    cxLabel40: TcxLabel;
    cxTextEdit24: TcxTextEdit;
    cxLabel42: TcxLabel;
    cxTextEdit23: TcxTextEdit;
    cxLabel41: TcxLabel;
    cxGroupBox17: TcxGroupBox;
    cxLabel43: TcxLabel;
    cxTextEdit25: TcxTextEdit;
    cxTextEdit26: TcxTextEdit;
    cxLabel44: TcxLabel;
    cxLabel45: TcxLabel;
    cxTextEdit27: TcxTextEdit;
    cxLabel46: TcxLabel;
    cxMemo1: TcxMemo;
    cxMaskEdit1: TcxMaskEdit;
    TimerEstado: TTimer;
    cxTabSheet2: TcxTabSheet;
    cxPageControlListas: TcxPageControl;
    cxTabSheet8: TcxTabSheet;
    cxPageControl2: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxTabSheet15: TcxTabSheet;
    cxGrid7: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridLevel6: TcxGridLevel;
    cxTabSheet9: TcxTabSheet;
    cxPageControl4: TcxPageControl;
    cxTabSheet11: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxTabSheet12: TcxTabSheet;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxTabSheet16: TcxTabSheet;
    cxGrid8: TcxGrid;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridLevel7: TcxGridLevel;
    cxTabSheet10: TcxTabSheet;
    cxPageControl5: TcxPageControl;
    cxTabSheet13: TcxTabSheet;
    cxGrid5: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    cxTabSheet14: TcxTabSheet;
    cxGrid6: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridLevel5: TcxGridLevel;
    cxTabSheet17: TcxTabSheet;
    cxGrid9: TcxGrid;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridLevel8: TcxGridLevel;
    cxGroupBox6: TcxGroupBox;
    cxButton11: TcxButton;
    cxButton16: TcxButton;
    cxTabSheet18: TcxTabSheet;
    cxTabSheet19: TcxTabSheet;
    cxTabSheet20: TcxTabSheet;
    cxGrid10: TcxGrid;
    cxGridDBTableView9: TcxGridDBTableView;
    cxGridLevel9: TcxGridLevel;
    cxGrid11: TcxGrid;
    cxGridDBTableView10: TcxGridDBTableView;
    cxGridLevel10: TcxGridLevel;
    cxGrid12: TcxGrid;
    cxGridDBTableView11: TcxGridDBTableView;
    cxGridLevel11: TcxGridLevel;
    cxTabSheet21: TcxTabSheet;
    cxTabSheet22: TcxTabSheet;
    cxTabSheet23: TcxTabSheet;
    cxGrid13: TcxGrid;
    cxGridDBTableView12: TcxGridDBTableView;
    cxGridLevel12: TcxGridLevel;
    cxGrid14: TcxGrid;
    cxGridDBTableView13: TcxGridDBTableView;
    cxGridLevel13: TcxGridLevel;
    cxGrid15: TcxGrid;
    cxGridDBTableView14: TcxGridDBTableView;
    cxGridLevel14: TcxGridLevel;
    cxTabSheet24: TcxTabSheet;
    cxTabSheet25: TcxTabSheet;
    cxTabSheet26: TcxTabSheet;
    cxGrid16: TcxGrid;
    cxGridDBTableView15: TcxGridDBTableView;
    cxGridLevel15: TcxGridLevel;
    cxGrid17: TcxGrid;
    cxGridDBTableView16: TcxGridDBTableView;
    cxGridLevel16: TcxGridLevel;
    cxGrid18: TcxGrid;
    cxGridDBTableView17: TcxGridDBTableView;
    cxGridLevel17: TcxGridLevel;
    cxTabSheet27: TcxTabSheet;
    cxTabSheet28: TcxTabSheet;
    cxTabSheet29: TcxTabSheet;
    cxGrid19: TcxGrid;
    cxGridDBTableView18: TcxGridDBTableView;
    cxGridLevel18: TcxGridLevel;
    cxGrid20: TcxGrid;
    cxGridDBTableView19: TcxGridDBTableView;
    cxGridLevel19: TcxGridLevel;
    cxGrid21: TcxGrid;
    cxGridDBTableView20: TcxGridDBTableView;
    cxGridLevel20: TcxGridLevel;
    cxLabel2: TcxLabel;
    cxProgressBar1: TcxProgressBar;
    cxButton5: TcxButton;
    cxTextEdit19: TcxTextEdit;
    cxLabel51: TcxLabel;
    cxLabel52: TcxLabel;
    cxLabel4: TcxLabel;
    cxProgressBar2: TcxProgressBar;
    cxTextEdit20: TcxTextEdit;
    cxButton7: TcxButton;
    cxLabel53: TcxLabel;
    cxLabel48: TcxLabel;
    cxTextEdit22: TcxTextEdit;
    cxProgressBar3: TcxProgressBar;
    cxButton15: TcxButton;
    cxLabel54: TcxLabel;
    cxLabel3: TcxLabel;
    cxProgressBar5: TcxProgressBar;
    cxTextEdit29: TcxTextEdit;
    cxButton3: TcxButton;
    cxLabel55: TcxLabel;
    cxLabel49: TcxLabel;
    cxProgressBar7: TcxProgressBar;
    cxTextEdit31: TcxTextEdit;
    cxButton9: TcxButton;
    cxLabel56: TcxLabel;
    cxLabel1: TcxLabel;
    cxProgressBar4: TcxProgressBar;
    cxTextEdit28: TcxTextEdit;
    cxButton2: TcxButton;
    cxLabel57: TcxLabel;
    cxLabel47: TcxLabel;
    cxProgressBar6: TcxProgressBar;
    cxTextEdit30: TcxTextEdit;
    cxButton8: TcxButton;
    cxLabel58: TcxLabel;
    cxLabel50: TcxLabel;
    cxProgressBar8: TcxProgressBar;
    cxTextEdit32: TcxTextEdit;
    cxButton10: TcxButton;
    cxTabSheet30: TcxTabSheet;
    cxTabSheet31: TcxTabSheet;
    cxTabSheet32: TcxTabSheet;
    cxGrid22: TcxGrid;
    cxGridDBTableView21: TcxGridDBTableView;
    cxGridLevel21: TcxGridLevel;
    cxGrid23: TcxGrid;
    cxGridDBTableView22: TcxGridDBTableView;
    cxGridLevel22: TcxGridLevel;
    cxGrid24: TcxGrid;
    cxGridDBTableView23: TcxGridDBTableView;
    cxGridLevel23: TcxGridLevel;
    cxLabel59: TcxLabel;
    cxButton12: TcxButton;
    cxTextEdit33: TcxTextEdit;
    cxProgressBar9: TcxProgressBar;
    cxLabel60: TcxLabel;
    cxTabSheet33: TcxTabSheet;
    cxTabSheet34: TcxTabSheet;
    cxTabSheet35: TcxTabSheet;
    cxGrid25: TcxGrid;
    cxGridDBTableView24: TcxGridDBTableView;
    cxGridLevel24: TcxGridLevel;
    cxGrid26: TcxGrid;
    cxGridDBTableView25: TcxGridDBTableView;
    cxGridLevel25: TcxGridLevel;
    cxGrid27: TcxGrid;
    cxGridDBTableView26: TcxGridDBTableView;
    cxGridLevel26: TcxGridLevel;
    cxLabel61: TcxLabel;
    cxLabel62: TcxLabel;
    cxProgressBar10: TcxProgressBar;
    cxTextEdit34: TcxTextEdit;
    cxButton13: TcxButton;
    cxTabSheet36: TcxTabSheet;
    cxTabSheet37: TcxTabSheet;
    cxTabSheet38: TcxTabSheet;
    cxGrid28: TcxGrid;
    cxGridDBTableView27: TcxGridDBTableView;
    cxGridLevel27: TcxGridLevel;
    cxGrid29: TcxGrid;
    cxGridDBTableView28: TcxGridDBTableView;
    cxGridLevel28: TcxGridLevel;
    cxGrid30: TcxGrid;
    cxGridDBTableView29: TcxGridDBTableView;
    cxGridLevel29: TcxGridLevel;
    cxLabel63: TcxLabel;
    cxButton14: TcxButton;
    cxTextEdit35: TcxTextEdit;
    cxProgressBar11: TcxProgressBar;
    cxLabel64: TcxLabel;
    cxTabSheet39: TcxTabSheet;
    cxTabSheet40: TcxTabSheet;
    cxTabSheet41: TcxTabSheet;
    cxGrid31: TcxGrid;
    cxGridDBTableView30: TcxGridDBTableView;
    cxGridLevel30: TcxGridLevel;
    cxGrid32: TcxGrid;
    cxGridDBTableView31: TcxGridDBTableView;
    cxGridLevel31: TcxGridLevel;
    cxGrid33: TcxGrid;
    cxGridDBTableView32: TcxGridDBTableView;
    cxGridLevel32: TcxGridLevel;
    cxLabel65: TcxLabel;
    cxButton17: TcxButton;
    cxTextEdit36: TcxTextEdit;
    cxProgressBar12: TcxProgressBar;
    cxLabel66: TcxLabel;
    cxTabSheet42: TcxTabSheet;
    cxTabSheet43: TcxTabSheet;
    cxTabSheet44: TcxTabSheet;
    cxGrid34: TcxGrid;
    cxGridDBTableView33: TcxGridDBTableView;
    cxGridLevel33: TcxGridLevel;
    cxGrid35: TcxGrid;
    cxGridDBTableView34: TcxGridDBTableView;
    cxGridLevel34: TcxGridLevel;
    cxGrid36: TcxGrid;
    cxGridDBTableView35: TcxGridDBTableView;
    cxGridLevel35: TcxGridLevel;
    cxLabel67: TcxLabel;
    cxButton18: TcxButton;
    cxTextEdit37: TcxTextEdit;
    cxProgressBar13: TcxProgressBar;
    cxLabel68: TcxLabel;
    cxTabSheet45: TcxTabSheet;
    cxTabSheet46: TcxTabSheet;
    cxTabSheet47: TcxTabSheet;
    cxGrid37: TcxGrid;
    cxGridDBTableView36: TcxGridDBTableView;
    cxGridLevel36: TcxGridLevel;
    cxGrid38: TcxGrid;
    cxGridDBTableView37: TcxGridDBTableView;
    cxGridLevel37: TcxGridLevel;
    cxGrid39: TcxGrid;
    cxGridDBTableView38: TcxGridDBTableView;
    cxGridLevel38: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGridLevel39: TcxGridLevel;
    cxTabSheet48: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    cxLabel69: TcxLabel;
    cxTextEdit38: TcxTextEdit;
    cxTextEdit39: TcxTextEdit;
    cxLabel70: TcxLabel;
    cxTextEdit40: TcxTextEdit;
    cxLabel71: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cxButton19: TcxButton;
    cxProgressBar14: TcxProgressBar;
    FileOpenDialog2: TFileOpenDialog;
    cxImage1: TcxImage;
    cxTabSheet49: TcxTabSheet;
    Memo1: TMemo;
    cxLabel72: TcxLabel;
    cxButton21: TcxButton;
    cxProgressBar15: TcxProgressBar;
    HPDF: THotPDF;
    procedure FormActivate(Sender: TObject);
    procedure cxTextEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure cxTextEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure cxTextEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure cxTextEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure cxTextEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure cxTextEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure cxTextEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure cxTextEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure cxTextEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure cxTextEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure cxTextEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure cxTextEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure cxTextEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure cxTextEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure cxTextEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure cxTextEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure cxTextEdit18KeyPress(Sender: TObject; var Key: Char);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure TimerEstadoTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton15Click(Sender: TObject);
    procedure cxButton16Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure cxButton12Click(Sender: TObject);
    procedure cxButton13Click(Sender: TObject);
    procedure cxButton14Click(Sender: TObject);
    procedure cxButton17Click(Sender: TObject);
    procedure cxButton18Click(Sender: TObject);
    procedure cxButton19Click(Sender: TObject);
    procedure cxButton21Click(Sender: TObject);

  private
   { Private declarations }
  public
   { Public declarations }
  HiloImportarMedicamentos:ThreadImportarMedicamentos;
  HiloImportarMateriales:ThreadImportarMateriales;
  HiloImportarServicioDeImagenologia:ThreadImportarServicioDeImagenologia;
  HiloImportarServicioDeHospital: ThreadImportarServicioDeHospital;
  HiloImportarEquipoMedico: ThreadImportarEquipoMedico;
  HiloImportarServicioDeLaboratorio: ThreadImportarServicioDeLaboratorio;
  HiloImportarServicioMedico: ThreadImportarServicioMedico;
  HiloImportarTerapiaIntensiva: ThreadImportarTerapiaIntensiva;
  HiloImportarTrasladoEnAmbulancia: ThreadImportarTrasladoEnAmbulancia;
  HiloImportarCamaraHiperbarica: ThreadImportarCamaraHiperbarica;
  HiloImportarMedicinaNuclear: ThreadImportarMedicinaNuclear;
  HiloImportarMembresia: ThreadImportarMembresia;
  HiloImportarPaquetes: ThreadImportarPaquetes;
  HiloActualizarTablas: ThreadActualizarTablas;
  HiloReportes: ThreadReportes;

  var
  Estado:string;
  LogginCerrar:string;
  end;

var
  Fmain: TFmain;

implementation
uses   IdSMTP, IdMessage ,IdAttachment ,IdEMailAddress,IdText, DateUtils,
       math, System.IniFiles, ULogin,cxGridExportLink, IdSSLOpenSSL,
       IdAttachmentFile, IdExplicitTLSClientServerBase,
       IdGlobal,IdSASLLogin,IdUserPassProvider,system.IOUtils,
       VCL.FlexCel.Core, FlexCel.XlsAdapter, IdFTP, IdComponent,
       xmldom, XMLIntf, msxmldom, XMLDoc;

{$R *.dfm}

procedure TFmain.FormActivate(Sender: TObject);
var
I:Integer;

begin

  cxPageControl1.Visible:=False;
  LogginCerrar:='ParaAbrir';
  FLogin.ShowModal;

  // Leyendo los datos de conf de la BD
  try
     // Leyendo Incremento
     DM1.QConfInc.Open;
     for I := 1 to DM1.QConfInc.RecordCount do
     begin
        if DM1.QConfInc.FieldValues['Numero'] = 1 then
        begin
          if DM1.QConfInc.FieldValues['Habilitado'] = 'si' then
          begin cxCheckBox1.Checked:=True;  end
          else
          begin cxCheckBox1.Checked:=False;  end;
          cxTextEdit1.Text:= DM1.QConfInc.FieldValues['Desde'];
          cxTextEdit2.Text:= DM1.QConfInc.FieldValues['Hasta'];
          cxTextEdit3.Text:= DM1.QConfInc.FieldValues['Valor'];
        end;
        if DM1.QConfInc.FieldValues['Numero'] = 2 then
        begin
          if DM1.QConfInc.FieldValues['Habilitado'] = 'si' then
          begin cxCheckBox2.Checked:=True;  end
          else
          begin cxCheckBox2.Checked:=False;  end;
          cxTextEdit4.Text:= DM1.QConfInc.FieldValues['Desde'];
          cxTextEdit5.Text:= DM1.QConfInc.FieldValues['Hasta'];
          cxTextEdit7.Text:= DM1.QConfInc.FieldValues['Valor'];
        end;
        if DM1.QConfInc.FieldValues['Numero'] = 3 then
        begin
          if DM1.QConfInc.FieldValues['Habilitado'] = 'si' then
          begin cxCheckBox3.Checked:=True;  end
          else
          begin cxCheckBox3.Checked:=False;  end;
          cxTextEdit8.Text:=  DM1.QConfInc.FieldValues['Desde'];
          cxTextEdit10.Text:= DM1.QConfInc.FieldValues['Hasta'];
          cxTextEdit9.Text:= DM1.QConfInc.FieldValues['Valor'];
        end;
        if DM1.QConfInc.FieldValues['Numero'] = 4 then
        begin
          if DM1.QConfInc.FieldValues['Habilitado'] = 'si' then
          begin cxCheckBox4.Checked:=True;  end
          else
          begin cxCheckBox4.Checked:=False;  end;
          cxTextEdit11.Text:= DM1.QConfInc.FieldValues['Desde'];
          cxTextEdit13.Text:= DM1.QConfInc.FieldValues['Hasta'];
          cxTextEdit12.Text:= DM1.QConfInc.FieldValues['Valor'];
        end;
      DM1.QConfInc.Next;
     end;
     DM1.QConfInc.Close;

     // Leyendo Decrementos
     DM1.QConfDec.Open;
     for I := 1 to DM1.QConfDec.RecordCount do
     begin
        if DM1.QConfDec.FieldValues['Numero'] = 1 then
        begin
          if DM1.QConfDec.FieldValues['Habilitado'] = 'si' then
          begin cxCheckBox5.Checked:=True;  end
          else
          begin cxCheckBox5.Checked:=False;  end;
          cxTextEdit14.Text:= DM1.QConfDec.FieldValues['Valor'];
        end;
        if DM1.QConfDec.FieldValues['Numero'] = 2 then
        begin
          if DM1.QConfDec.FieldValues['Habilitado'] = 'si' then
          begin cxCheckBox6.Checked:=True;  end
          else
          begin cxCheckBox6.Checked:=False;  end;
          cxTextEdit15.Text:= DM1.QConfDec.FieldValues['Valor'];
        end;
        if DM1.QConfDec.FieldValues['Numero'] = 3 then
        begin
          if DM1.QConfDec.FieldValues['Habilitado'] = 'si' then
          begin cxCheckBox7.Checked:=True;  end
          else
          begin cxCheckBox7.Checked:=False;  end;
          cxTextEdit16.Text:= DM1.QConfDec.FieldValues['Valor'];
        end;
        if DM1.QConfDec.FieldValues['Numero'] = 4 then
        begin
          if DM1.QConfDec.FieldValues['Habilitado'] = 'si' then
          begin cxCheckBox8.Checked:=True;  end
          else
          begin cxCheckBox8.Checked:=False;  end;
          cxTextEdit17.Text:= DM1.QConfDec.FieldValues['Valor'];
        end;
      DM1.QConfDec.Next;
     end;
     DM1.QConfDec.Close;

     // Leyendo Iva
     DM1.QconfIva.Open;
     cxTextEdit6.Text:=DM1.QconfIva.FieldValues['Iva'];
     DM1.QconfIva.Close;
     // Leyendo Cambio de Monedas
     DM1.QConfDolar.Open;
     cxTextEdit18.Text:=DM1.QConfDolar.FieldValues['CambioMonedas'];
     DM1.QConfDolar.Close;

     // Leyendo FTP
     DM1.QConfFtp.Open;
     cxTextEdit38.Text:=DM1.QConfFtp.FieldValues['Host'];
     cxTextEdit39.Text:=DM1.QConfFtp.FieldValues['User'];
     cxTextEdit40.Text:=DM1.QConfFtp.FieldValues['Pass'];
     DM1.QConfFtp.Close;

     if DM1.Qlogin.FieldValues['Perfil']='Usuario' then
     begin
       cxGrid1DBTableView1.FilterRow.Visible:=False;
       cxGrid1DBTableView1.OptionsView.GroupByBox:=False;
       cxGridDBTableView1.FilterRow.Visible:=False;
       cxGridDBTableView1.OptionsView.GroupByBox:=False;
       cxGridDBTableView2.FilterRow.Visible:=False;
       cxGridDBTableView2.OptionsView.GroupByBox:=False;
       cxGridDBTableView3.FilterRow.Visible:=False;
       cxGridDBTableView3.OptionsView.GroupByBox:=False;
       cxGridDBTableView4.FilterRow.Visible:=False;
       cxGridDBTableView4.OptionsView.GroupByBox:=False;
       cxGridDBTableView5.FilterRow.Visible:=False;
       cxGridDBTableView5.OptionsView.GroupByBox:=False;
       cxGridDBTableView6.FilterRow.Visible:=False;
       cxGridDBTableView6.OptionsView.GroupByBox:=False;
       cxGridDBTableView7.FilterRow.Visible:=False;
       cxGridDBTableView7.OptionsView.GroupByBox:=False;
       cxGridDBTableView8.FilterRow.Visible:=False;
       cxGridDBTableView8.OptionsView.GroupByBox:=False;
       cxGridDBTableView9.FilterRow.Visible:=False;
       cxGridDBTableView9.OptionsView.GroupByBox:=False;
       cxGridDBTableView10.FilterRow.Visible:=False;
       cxGridDBTableView10.OptionsView.GroupByBox:=False;
       cxGridDBTableView11.FilterRow.Visible:=False;
       cxGridDBTableView11.OptionsView.GroupByBox:=False;
       cxGridDBTableView12.FilterRow.Visible:=False;
       cxGridDBTableView12.OptionsView.GroupByBox:=False;
       cxGridDBTableView13.FilterRow.Visible:=False;
       cxGridDBTableView13.OptionsView.GroupByBox:=False;
       cxGridDBTableView14.FilterRow.Visible:=False;
       cxGridDBTableView14.OptionsView.GroupByBox:=False;
       cxGridDBTableView15.FilterRow.Visible:=False;
       cxGridDBTableView15.OptionsView.GroupByBox:=False;
       cxGridDBTableView16.FilterRow.Visible:=False;
       cxGridDBTableView16.OptionsView.GroupByBox:=False;
       cxGridDBTableView17.FilterRow.Visible:=False;
       cxGridDBTableView17.OptionsView.GroupByBox:=False;
       cxGridDBTableView18.FilterRow.Visible:=False;
       cxGridDBTableView18.OptionsView.GroupByBox:=False;
       cxGridDBTableView19.FilterRow.Visible:=False;
       cxGridDBTableView19.OptionsView.GroupByBox:=False;
       cxGridDBTableView20.FilterRow.Visible:=False;
       cxGridDBTableView20.OptionsView.GroupByBox:=False;
       cxGridDBTableView21.FilterRow.Visible:=False;
       cxGridDBTableView21.OptionsView.GroupByBox:=False;
       cxGridDBTableView22.FilterRow.Visible:=False;
       cxGridDBTableView22.OptionsView.GroupByBox:=False;
       cxGridDBTableView23.FilterRow.Visible:=False;
       cxGridDBTableView23.OptionsView.GroupByBox:=False;
       cxGridDBTableView24.FilterRow.Visible:=False;
       cxGridDBTableView24.OptionsView.GroupByBox:=False;
       cxGridDBTableView25.FilterRow.Visible:=False;
       cxGridDBTableView25.OptionsView.GroupByBox:=False;
       cxGridDBTableView26.FilterRow.Visible:=False;
       cxGridDBTableView26.OptionsView.GroupByBox:=False;
       cxGridDBTableView27.FilterRow.Visible:=False;
       cxGridDBTableView27.OptionsView.GroupByBox:=False;
       cxGridDBTableView28.FilterRow.Visible:=False;
       cxGridDBTableView28.OptionsView.GroupByBox:=False;
       cxGridDBTableView29.FilterRow.Visible:=False;
       cxGridDBTableView29.OptionsView.GroupByBox:=False;
       cxGridDBTableView30.FilterRow.Visible:=False;
       cxGridDBTableView30.OptionsView.GroupByBox:=False;
       cxGridDBTableView31.FilterRow.Visible:=False;
       cxGridDBTableView31.OptionsView.GroupByBox:=False;
       cxGridDBTableView32.FilterRow.Visible:=False;
       cxGridDBTableView32.OptionsView.GroupByBox:=False;
       cxGridDBTableView33.FilterRow.Visible:=False;
       cxGridDBTableView33.OptionsView.GroupByBox:=False;
       cxGridDBTableView34.FilterRow.Visible:=False;
       cxGridDBTableView34.OptionsView.GroupByBox:=False;
       cxGridDBTableView35.FilterRow.Visible:=False;
       cxGridDBTableView35.OptionsView.GroupByBox:=False;
       cxGridDBTableView36.FilterRow.Visible:=False;
       cxGridDBTableView36.OptionsView.GroupByBox:=False;
       cxGridDBTableView37.FilterRow.Visible:=False;
       cxGridDBTableView37.OptionsView.GroupByBox:=False;
       cxGridDBTableView38.FilterRow.Visible:=False;
       cxGridDBTableView38.OptionsView.GroupByBox:=False;

       cxGrid1DBTableView1.OptionsView.Footer:=False;
       cxGridDBTableView1.OptionsView.Footer:=False;
       cxGridDBTableView6.OptionsView.Footer:=False;
       cxGridDBTableView9.OptionsView.Footer:=False;
       cxGridDBTableView12.OptionsView.Footer:=False;
       cxGridDBTableView15.OptionsView.Footer:=False;
       cxGridDBTableView18.OptionsView.Footer:=False;
       cxGridDBTableView21.OptionsView.Footer:=False;
       cxGridDBTableView24.OptionsView.Footer:=False;
       cxGridDBTableView27.OptionsView.Footer:=False;
       cxGridDBTableView33.OptionsView.Footer:=False;
       cxGridDBTableView30.OptionsView.Footer:=False;
       cxGridDBTableView2.OptionsView.Footer:=False;
       cxGridDBTableView36.OptionsView.Footer:=False;
       cxGridDBTableView3.OptionsView.Footer:=False;
       cxGridDBTableView7.OptionsView.Footer:=False;
       cxGridDBTableView10.OptionsView.Footer:=False;
       cxGridDBTableView13.OptionsView.Footer:=False;
       cxGridDBTableView16.OptionsView.Footer:=False;
       cxGridDBTableView19.OptionsView.Footer:=False;
       cxGridDBTableView22.OptionsView.Footer:=False;
       cxGridDBTableView25.OptionsView.Footer:=False;
       cxGridDBTableView28.OptionsView.Footer:=False;
       cxGridDBTableView31.OptionsView.Footer:=False;
       cxGridDBTableView34.OptionsView.Footer:=False;
       cxGridDBTableView37.OptionsView.Footer:=False;
       cxGridDBTableView4.OptionsView.Footer:=False;
       cxGridDBTableView5.OptionsView.Footer:=False;
       cxGridDBTableView8.OptionsView.Footer:=False;
       cxGridDBTableView11.OptionsView.Footer:=False;
       cxGridDBTableView14.OptionsView.Footer:=False;
       cxGridDBTableView17.OptionsView.Footer:=False;
       cxGridDBTableView20.OptionsView.Footer:=False;
       cxGridDBTableView23.OptionsView.Footer:=False;
       cxGridDBTableView26.OptionsView.Footer:=False;
       cxGridDBTableView29.OptionsView.Footer:=False;
       cxGridDBTableView32.OptionsView.Footer:=False;
       cxGridDBTableView35.OptionsView.Footer:=False;
       cxGridDBTableView38.OptionsView.Footer:=False;
     end;


     cxGrid1DBTableView1.DataController.DataSource:=DmMateriales.DSMateriales;
     cxGrid1DBTableView1.DataController.CreateAllItems;
     cxGrid1DBTableView1.Columns[0].Width:=100;
     cxGrid1DBTableView1.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGrid1DBTableView1.Columns[1].Width:=600;
     cxGrid1DBTableView1.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGrid1DBTableView1.Columns[2].Width:=250;
     cxGrid1DBTableView1.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGrid1DBTableView1.Columns[3].Width:=150;
     cxGrid1DBTableView1.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGrid1DBTableView1.Columns[4].Width:=150;
     cxGrid1DBTableView1.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGrid1DBTableView1.Columns[5].Width:=150;
     cxGrid1DBTableView1.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGrid1DBTableView1.Columns[5].Caption:='TOTAL CON IVA';
     cxGrid1DBTableView1.OptionsView.Footer:=True;

     // TcxCustomEditProperties(cxGridDBTableView6CODIGO.Properties).Alignment.Horz:=taCenter;
     // TcxCustomEditProperties(cxGrid1DBTableView1.Columns[0].Properties).Alignment.Horz:=taCenter;

     cxGridDBTableView1.DataController.DataSource:=DmMedicamentos.DSMedicamentos;
     cxGridDBTableView1.DataController.CreateAllItems;
     cxGridDBTableView1.Columns[0].Width:=100;
     cxGridDBTableView1.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView1.Columns[1].Width:=600;
     cxGridDBTableView1.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView1.Columns[2].Width:=250;
     cxGridDBTableView1.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView1.Columns[3].Width:=150;
     cxGridDBTableView1.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView1.Columns[4].Width:=150;
     cxGridDBTableView1.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView1.Columns[5].Width:=150;
     cxGridDBTableView1.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView1.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView6.DataController.DataSource:=DMServImg.DSServImg;
     cxGridDBTableView6.DataController.CreateAllItems;
     cxGridDBTableView6.Columns[0].Width:=100;
     cxGridDBTableView6.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView6.Columns[1].Width:=600;
     cxGridDBTableView6.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView6.Columns[2].Width:=250;
     cxGridDBTableView6.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView6.Columns[3].Width:=150;
     cxGridDBTableView6.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView6.Columns[4].Width:=150;
     cxGridDBTableView6.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView6.Columns[5].Width:=150;
     cxGridDBTableView6.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView6.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView9.DataController.DataSource:=DMServHosp.DSServHosp;
     cxGridDBTableView9.DataController.CreateAllItems;
     cxGridDBTableView9.Columns[0].Width:=100;
     cxGridDBTableView9.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView9.Columns[1].Width:=600;
     cxGridDBTableView9.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView9.Columns[2].Width:=250;
     cxGridDBTableView9.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView9.Columns[3].Width:=150;
     cxGridDBTableView9.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView9.Columns[4].Width:=150;
     cxGridDBTableView9.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView9.Columns[5].Width:=150;
     cxGridDBTableView9.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView9.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView12.DataController.DataSource:=DMEquipoMedico.DSEquipoMed;
     cxGridDBTableView12.DataController.CreateAllItems;
     cxGridDBTableView12.Columns[0].Width:=100;
     cxGridDBTableView12.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView12.Columns[1].Width:=600;
     cxGridDBTableView12.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView12.Columns[2].Width:=250;
     cxGridDBTableView12.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView12.Columns[3].Width:=150;
     cxGridDBTableView12.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView12.Columns[4].Width:=150;
     cxGridDBTableView12.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView12.Columns[5].Width:=150;
     cxGridDBTableView12.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView12.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView15.DataController.DataSource:=DMServLab.DSServLab;
     cxGridDBTableView15.DataController.CreateAllItems;
     cxGridDBTableView15.Columns[0].Width:=100;
     cxGridDBTableView15.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView15.Columns[1].Width:=600;
     cxGridDBTableView15.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView15.Columns[2].Width:=250;
     cxGridDBTableView15.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView15.Columns[3].Width:=150;
     cxGridDBTableView15.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView15.Columns[4].Width:=150;
     cxGridDBTableView15.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView15.Columns[5].Width:=150;
     cxGridDBTableView15.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView15.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView18.DataController.DataSource:=DMServMed.DSServMed;
     cxGridDBTableView18.DataController.CreateAllItems;
     cxGridDBTableView18.Columns[0].Width:=100;
     cxGridDBTableView18.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView18.Columns[1].Width:=600;
     cxGridDBTableView18.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView18.Columns[2].Width:=250;
     cxGridDBTableView18.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView18.Columns[3].Width:=150;
     cxGridDBTableView18.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView18.Columns[4].Width:=150;
     cxGridDBTableView18.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView18.Columns[5].Width:=150;
     cxGridDBTableView18.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView18.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView21.DataController.DataSource:=DMTerInt.DSTerInt;
     cxGridDBTableView21.DataController.CreateAllItems;
     cxGridDBTableView21.Columns[0].Width:=100;
     cxGridDBTableView21.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView21.Columns[1].Width:=600;
     cxGridDBTableView21.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView21.Columns[2].Width:=250;
     cxGridDBTableView21.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView21.Columns[3].Width:=150;
     cxGridDBTableView21.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView21.Columns[4].Width:=150;
     cxGridDBTableView21.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView21.Columns[5].Width:=150;
     cxGridDBTableView21.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView21.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView24.DataController.DataSource:=DMTrasAmb.DSTrasAmb;
     cxGridDBTableView24.DataController.CreateAllItems;
     cxGridDBTableView24.Columns[0].Width:=100;
     cxGridDBTableView24.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView24.Columns[1].Width:=600;
     cxGridDBTableView24.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView24.Columns[2].Width:=250;
     cxGridDBTableView24.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView24.Columns[3].Width:=150;
     cxGridDBTableView24.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView24.Columns[4].Width:=150;
     cxGridDBTableView24.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView24.Columns[5].Width:=150;
     cxGridDBTableView24.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView24.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView27.DataController.DataSource:=DMCamHiper.DSCamHiper;
     cxGridDBTableView27.DataController.CreateAllItems;
     cxGridDBTableView27.Columns[0].Width:=100;
     cxGridDBTableView27.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView27.Columns[1].Width:=600;
     cxGridDBTableView27.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView27.Columns[2].Width:=250;
     cxGridDBTableView27.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView27.Columns[3].Width:=150;
     cxGridDBTableView27.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView27.Columns[4].Width:=150;
     cxGridDBTableView27.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView27.Columns[5].Width:=150;
     cxGridDBTableView27.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView27.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView30.DataController.DataSource:=DMMedNuc.DSMedNuc;
     cxGridDBTableView30.DataController.CreateAllItems;
     cxGridDBTableView30.Columns[0].Width:=100;
     cxGridDBTableView30.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView30.Columns[1].Width:=600;
     cxGridDBTableView30.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView30.Columns[2].Width:=250;
     cxGridDBTableView30.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView30.Columns[3].Width:=150;
     cxGridDBTableView30.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView30.Columns[4].Width:=150;
     cxGridDBTableView30.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView30.Columns[5].Width:=150;
     cxGridDBTableView30.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView30.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView33.DataController.DataSource:=DMMembresia.DSMemb;
     cxGridDBTableView33.DataController.CreateAllItems;
     cxGridDBTableView33.Columns[0].Width:=100;
     cxGridDBTableView33.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView33.Columns[1].Width:=600;
     cxGridDBTableView33.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView33.Columns[2].Width:=250;
     cxGridDBTableView33.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView33.Columns[3].Width:=150;
     cxGridDBTableView33.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView33.Columns[4].Width:=150;
     cxGridDBTableView33.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView33.Columns[5].Width:=150;
     cxGridDBTableView33.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView33.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView36.DataController.DataSource:=DMPaquetes.DSPaq;
     cxGridDBTableView36.DataController.CreateAllItems;
     cxGridDBTableView36.Columns[0].Width:=100;
     cxGridDBTableView36.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView36.Columns[1].Width:=600;
     cxGridDBTableView36.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView36.Columns[2].Width:=250;
     cxGridDBTableView36.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView36.Columns[3].Width:=150;
     cxGridDBTableView36.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView36.Columns[4].Width:=150;
     cxGridDBTableView36.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView36.Columns[5].Width:=150;
     cxGridDBTableView36.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView36.Columns[5].Caption:='TOTAL CON IVA';

     cxGridDBTableView2.DataController.DataSource:=DmMateriales.DSMaterialesPesos;
     cxGridDBTableView2.DataController.CreateAllItems;
     cxGridDBTableView2.Columns[0].Width:=100;
     cxGridDBTableView2.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView2.Columns[1].Width:=600;
     cxGridDBTableView2.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView2.Columns[2].Width:=250;
     cxGridDBTableView2.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView2.Columns[3].Width:=150;
     cxGridDBTableView2.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView2.Columns[4].Width:=150;
     cxGridDBTableView2.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView2.Columns[5].Width:=150;
     cxGridDBTableView2.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView2.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView3.DataController.DataSource:=DmMedicamentos.DSMedicamentosPesos;
     cxGridDBTableView3.DataController.CreateAllItems;
     cxGridDBTableView3.Columns[0].Width:=100;
     cxGridDBTableView3.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView3.Columns[1].Width:=600;
     cxGridDBTableView3.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView3.Columns[2].Width:=250;
     cxGridDBTableView3.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView3.Columns[3].Width:=150;
     cxGridDBTableView3.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView3.Columns[4].Width:=150;
     cxGridDBTableView3.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView3.Columns[5].Width:=150;
     cxGridDBTableView3.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView3.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView7.DataController.DataSource:=DMServImg.DSServImgPesos;
     cxGridDBTableView7.DataController.CreateAllItems;
     cxGridDBTableView7.Columns[0].Width:=100;
     cxGridDBTableView7.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView7.Columns[1].Width:=600;
     cxGridDBTableView7.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView7.Columns[2].Width:=250;
     cxGridDBTableView7.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView7.Columns[3].Width:=150;
     cxGridDBTableView7.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView7.Columns[4].Width:=150;
     cxGridDBTableView7.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView7.Columns[5].Width:=150;
     cxGridDBTableView7.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView7.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView10.DataController.DataSource:=DMServHosp.DSServHospPesos;
     cxGridDBTableView10.DataController.CreateAllItems;
     cxGridDBTableView10.Columns[0].Width:=100;
     cxGridDBTableView10.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView10.Columns[1].Width:=600;
     cxGridDBTableView10.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView10.Columns[2].Width:=250;
     cxGridDBTableView10.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView10.Columns[3].Width:=150;
     cxGridDBTableView10.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView10.Columns[4].Width:=150;
     cxGridDBTableView10.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView10.Columns[5].Width:=150;
     cxGridDBTableView10.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView10.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView13.DataController.DataSource:=DMEquipoMedico.DSEquipoMedPesos;
     cxGridDBTableView13.DataController.CreateAllItems;
     cxGridDBTableView13.Columns[0].Width:=100;
     cxGridDBTableView13.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView13.Columns[1].Width:=600;
     cxGridDBTableView13.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView13.Columns[2].Width:=250;
     cxGridDBTableView13.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView13.Columns[3].Width:=150;
     cxGridDBTableView13.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView13.Columns[4].Width:=150;
     cxGridDBTableView13.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView13.Columns[5].Width:=150;
     cxGridDBTableView13.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView13.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView16.DataController.DataSource:=DMServLab.DSServLabPesos;
     cxGridDBTableView16.DataController.CreateAllItems;
     cxGridDBTableView16.Columns[0].Width:=100;
     cxGridDBTableView16.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView16.Columns[1].Width:=600;
     cxGridDBTableView16.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView16.Columns[2].Width:=250;
     cxGridDBTableView16.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView16.Columns[3].Width:=150;
     cxGridDBTableView16.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView16.Columns[4].Width:=150;
     cxGridDBTableView16.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView16.Columns[5].Width:=150;
     cxGridDBTableView16.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView16.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView19.DataController.DataSource:=DMServMed.DSServMedPesos;
     cxGridDBTableView19.DataController.CreateAllItems;
     cxGridDBTableView19.Columns[0].Width:=100;
     cxGridDBTableView19.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView19.Columns[1].Width:=600;
     cxGridDBTableView19.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView19.Columns[2].Width:=250;
     cxGridDBTableView19.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView19.Columns[3].Width:=150;
     cxGridDBTableView19.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView19.Columns[4].Width:=150;
     cxGridDBTableView19.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView19.Columns[5].Width:=150;
     cxGridDBTableView19.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView19.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView22.DataController.DataSource:=DMTerInt.DSTerIntPesos;
     cxGridDBTableView22.DataController.CreateAllItems;
     cxGridDBTableView22.Columns[0].Width:=100;
     cxGridDBTableView22.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView22.Columns[1].Width:=600;
     cxGridDBTableView22.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView22.Columns[2].Width:=250;
     cxGridDBTableView22.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView22.Columns[3].Width:=150;
     cxGridDBTableView22.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView22.Columns[4].Width:=150;
     cxGridDBTableView22.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView22.Columns[5].Width:=150;
     cxGridDBTableView22.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView22.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView25.DataController.DataSource:=DMTrasAmb.DSTrasAmbPesos;
     cxGridDBTableView25.DataController.CreateAllItems;
     cxGridDBTableView25.Columns[0].Width:=100;
     cxGridDBTableView25.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView25.Columns[1].Width:=600;
     cxGridDBTableView25.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView25.Columns[2].Width:=250;
     cxGridDBTableView25.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView25.Columns[3].Width:=150;
     cxGridDBTableView25.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView25.Columns[4].Width:=150;
     cxGridDBTableView25.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView25.Columns[5].Width:=150;
     cxGridDBTableView25.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView25.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView28.DataController.DataSource:=DMCamHiper.DSCamHiperPesos;
     cxGridDBTableView28.DataController.CreateAllItems;
     cxGridDBTableView28.Columns[0].Width:=100;
     cxGridDBTableView28.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView28.Columns[1].Width:=600;
     cxGridDBTableView28.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView28.Columns[2].Width:=250;
     cxGridDBTableView28.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView28.Columns[3].Width:=150;
     cxGridDBTableView28.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView28.Columns[4].Width:=150;
     cxGridDBTableView28.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView28.Columns[5].Width:=150;
     cxGridDBTableView28.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView28.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView31.DataController.DataSource:=DMMedNuc.DSMedNucPesos;
     cxGridDBTableView31.DataController.CreateAllItems;
     cxGridDBTableView31.Columns[0].Width:=100;
     cxGridDBTableView31.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView31.Columns[1].Width:=600;
     cxGridDBTableView31.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView31.Columns[2].Width:=250;
     cxGridDBTableView31.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView31.Columns[3].Width:=150;
     cxGridDBTableView31.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView31.Columns[4].Width:=150;
     cxGridDBTableView31.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView31.Columns[5].Width:=150;
     cxGridDBTableView31.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView31.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView34.DataController.DataSource:=DMMembresia.DSMembPesos;
     cxGridDBTableView34.DataController.CreateAllItems;
     cxGridDBTableView34.Columns[0].Width:=100;
     cxGridDBTableView34.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView34.Columns[1].Width:=600;
     cxGridDBTableView34.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView34.Columns[2].Width:=250;
     cxGridDBTableView34.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView34.Columns[3].Width:=150;
     cxGridDBTableView34.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView34.Columns[4].Width:=150;
     cxGridDBTableView34.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView34.Columns[5].Width:=150;
     cxGridDBTableView34.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView34.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView37.DataController.DataSource:=DMPaquetes.DSPaqPesos;
     cxGridDBTableView37.DataController.CreateAllItems;
     cxGridDBTableView37.Columns[0].Width:=100;
     cxGridDBTableView37.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView37.Columns[1].Width:=600;
     cxGridDBTableView37.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView37.Columns[2].Width:=250;
     cxGridDBTableView37.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView37.Columns[3].Width:=150;
     cxGridDBTableView37.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView37.Columns[4].Width:=150;
     cxGridDBTableView37.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView37.Columns[5].Width:=150;
     cxGridDBTableView37.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView37.Columns[5].Caption:='TOTAL CON IVA';

     cxGridDBTableView4.DataController.DataSource:=DmMateriales.DSMaterialesDolares;
     cxGridDBTableView4.DataController.CreateAllItems;
     cxGridDBTableView4.Columns[0].Width:=100;
     cxGridDBTableView4.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView4.Columns[1].Width:=600;
     cxGridDBTableView4.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView4.Columns[2].Width:=250;
     cxGridDBTableView4.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView4.Columns[3].Width:=150;
     cxGridDBTableView4.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView4.Columns[4].Width:=150;
     cxGridDBTableView4.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView4.Columns[5].Width:=150;
     cxGridDBTableView4.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView4.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView5.DataController.DataSource:=DmMedicamentos.DSMedicamentosDolares;
     cxGridDBTableView5.DataController.CreateAllItems;
     cxGridDBTableView5.Columns[0].Width:=100;
     cxGridDBTableView5.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView5.Columns[1].Width:=600;
     cxGridDBTableView5.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView5.Columns[2].Width:=250;
     cxGridDBTableView5.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView5.Columns[3].Width:=150;
     cxGridDBTableView5.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView5.Columns[4].Width:=150;
     cxGridDBTableView5.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView5.Columns[5].Width:=150;
     cxGridDBTableView5.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView5.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView8.DataController.DataSource:=DMServImg.DSServImgDolares;
     cxGridDBTableView8.DataController.CreateAllItems;
     cxGridDBTableView8.Columns[0].Width:=100;
     cxGridDBTableView8.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView8.Columns[1].Width:=600;
     cxGridDBTableView8.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView8.Columns[2].Width:=250;
     cxGridDBTableView8.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView8.Columns[3].Width:=150;
     cxGridDBTableView8.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView8.Columns[4].Width:=150;
     cxGridDBTableView8.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView8.Columns[5].Width:=150;
     cxGridDBTableView8.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView8.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView11.DataController.DataSource:=DMServHosp.DSServHospDolares;
     cxGridDBTableView11.DataController.CreateAllItems;
     cxGridDBTableView11.Columns[0].Width:=100;
     cxGridDBTableView11.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView11.Columns[1].Width:=600;
     cxGridDBTableView11.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView11.Columns[2].Width:=250;
     cxGridDBTableView11.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView11.Columns[3].Width:=150;
     cxGridDBTableView11.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView11.Columns[4].Width:=150;
     cxGridDBTableView11.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView11.Columns[5].Width:=150;
     cxGridDBTableView11.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView11.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView14.DataController.DataSource:=DMEquipoMedico.DSEquipoMedDolares;
     cxGridDBTableView14.DataController.CreateAllItems;
     cxGridDBTableView14.Columns[0].Width:=100;
     cxGridDBTableView14.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView14.Columns[1].Width:=600;
     cxGridDBTableView14.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView14.Columns[2].Width:=250;
     cxGridDBTableView14.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView14.Columns[3].Width:=150;
     cxGridDBTableView14.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView14.Columns[4].Width:=150;
     cxGridDBTableView14.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView14.Columns[5].Width:=150;
     cxGridDBTableView14.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView14.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView17.DataController.DataSource:=DMServLab.DSServLabDolares;
     cxGridDBTableView17.DataController.CreateAllItems;
     cxGridDBTableView17.Columns[0].Width:=100;
     cxGridDBTableView17.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView17.Columns[1].Width:=600;
     cxGridDBTableView17.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView17.Columns[2].Width:=250;
     cxGridDBTableView17.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView17.Columns[3].Width:=150;
     cxGridDBTableView17.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView17.Columns[4].Width:=150;
     cxGridDBTableView17.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView17.Columns[5].Width:=150;
     cxGridDBTableView17.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView17.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView20.DataController.DataSource:=DMServMed.DSServMedDolares;
     cxGridDBTableView20.DataController.CreateAllItems;
     cxGridDBTableView20.Columns[0].Width:=100;
     cxGridDBTableView20.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView20.Columns[1].Width:=600;
     cxGridDBTableView20.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView20.Columns[2].Width:=250;
     cxGridDBTableView20.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView20.Columns[3].Width:=150;
     cxGridDBTableView20.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView20.Columns[4].Width:=150;
     cxGridDBTableView20.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView20.Columns[5].Width:=150;
     cxGridDBTableView20.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView20.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView23.DataController.DataSource:=DMTerInt.DSTerIntDolares;
     cxGridDBTableView23.DataController.CreateAllItems;
     cxGridDBTableView23.Columns[0].Width:=100;
     cxGridDBTableView23.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView23.Columns[1].Width:=600;
     cxGridDBTableView23.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView23.Columns[2].Width:=250;
     cxGridDBTableView23.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView23.Columns[3].Width:=150;
     cxGridDBTableView23.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView23.Columns[4].Width:=150;
     cxGridDBTableView23.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView23.Columns[5].Width:=150;
     cxGridDBTableView23.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView23.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView26.DataController.DataSource:=DMTrasAmb.DSTrasAmbDolares;
     cxGridDBTableView26.DataController.CreateAllItems;
     cxGridDBTableView26.Columns[0].Width:=100;
     cxGridDBTableView26.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView26.Columns[1].Width:=600;
     cxGridDBTableView26.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView26.Columns[2].Width:=250;
     cxGridDBTableView26.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView26.Columns[3].Width:=150;
     cxGridDBTableView26.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView26.Columns[4].Width:=150;
     cxGridDBTableView26.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView26.Columns[5].Width:=150;
     cxGridDBTableView26.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView26.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView29.DataController.DataSource:=DMCamHiper.DSCamHiperDolares;
     cxGridDBTableView29.DataController.CreateAllItems;
     cxGridDBTableView29.Columns[0].Width:=100;
     cxGridDBTableView29.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView29.Columns[1].Width:=600;
     cxGridDBTableView29.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView29.Columns[2].Width:=250;
     cxGridDBTableView29.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView29.Columns[3].Width:=150;
     cxGridDBTableView29.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView29.Columns[4].Width:=150;
     cxGridDBTableView29.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView29.Columns[5].Width:=150;
     cxGridDBTableView29.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView29.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView32.DataController.DataSource:=DMMedNuc.DSMedNucDolares;
     cxGridDBTableView32.DataController.CreateAllItems;
     cxGridDBTableView32.Columns[0].Width:=100;
     cxGridDBTableView32.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView32.Columns[1].Width:=600;
     cxGridDBTableView32.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView32.Columns[2].Width:=250;
     cxGridDBTableView32.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView32.Columns[3].Width:=150;
     cxGridDBTableView32.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView32.Columns[4].Width:=150;
     cxGridDBTableView32.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView32.Columns[5].Width:=150;
     cxGridDBTableView32.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView32.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView35.DataController.DataSource:=DMMembresia.DSMembDolares;
     cxGridDBTableView35.DataController.CreateAllItems;
     cxGridDBTableView35.Columns[0].Width:=100;
     cxGridDBTableView35.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView35.Columns[1].Width:=600;
     cxGridDBTableView35.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView35.Columns[2].Width:=250;
     cxGridDBTableView35.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView35.Columns[3].Width:=150;
     cxGridDBTableView35.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView35.Columns[4].Width:=150;
     cxGridDBTableView35.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView35.Columns[5].Width:=150;
     cxGridDBTableView35.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView35.Columns[5].Caption:='TOTAL CON IVA';
     cxGridDBTableView38.DataController.DataSource:=DMPaquetes.DSPaqDolares;
     cxGridDBTableView38.DataController.CreateAllItems;
     cxGridDBTableView38.Columns[0].Width:=100;
     cxGridDBTableView38.Columns[0].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView38.Columns[1].Width:=600;
     cxGridDBTableView38.Columns[1].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView38.Columns[2].Width:=250;
     cxGridDBTableView38.Columns[2].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView38.Columns[3].Width:=150;
     cxGridDBTableView38.Columns[3].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView38.Columns[4].Width:=150;
     cxGridDBTableView38.Columns[4].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView38.Columns[5].Width:=150;
     cxGridDBTableView38.Columns[5].HeaderAlignmentHorz:=taCenter;
     cxGridDBTableView38.Columns[5].Caption:='TOTAL CON IVA';

     if DM1.Qlogin.FieldValues['Perfil']='Administrador' then
     begin
       cxGrid1DBTableView1.DataController.Summary.FooterSummaryItems.Add(cxGrid1DBTableView1.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView1.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView1.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView6.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView6.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView9.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView9.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView12.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView12.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView15.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView15.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView18.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView18.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView21.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView21.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView24.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView24.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView27.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView27.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView33.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView33.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView30.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView30.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView2.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView2.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView36.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView36.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView3.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView3.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView7.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView7.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView10.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView10.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView13.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView13.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView16.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView16.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView19.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView19.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView22.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView22.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView25.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView25.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView28.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView28.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView31.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView31.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView34.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView34.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView37.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView37.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView4.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView4.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView5.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView5.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView8.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView8.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView11.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView11.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView14.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView14.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView17.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView17.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView20.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView20.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView23.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView23.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView26.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView26.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView29.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView29.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView32.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView32.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView35.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView35.Columns[0], spFooter, skCount, '# ### ###');
       cxGridDBTableView38.DataController.Summary.FooterSummaryItems.Add(cxGridDBTableView38.Columns[0], spFooter, skCount, '# ### ###');



     end;

  except

  end;

  HiloImportarMedicamentos:=ThreadImportarMedicamentos.Create(true);
  HiloImportarMateriales:=ThreadImportarMateriales.Create(true);
  HiloImportarServicioDeImagenologia:=ThreadImportarServicioDeImagenologia.Create(true);
  HiloImportarServicioDeHospital:=ThreadImportarServicioDeHospital.Create(true);
  HiloImportarEquipoMedico:=ThreadImportarEquipoMedico.Create(true);
  HiloImportarServicioDeLaboratorio:=ThreadImportarServicioDeLaboratorio.Create(true);
  HiloImportarServicioMedico:=ThreadImportarServicioMedico.Create(true);
  HiloImportarTerapiaIntensiva:=ThreadImportarTerapiaIntensiva.Create(true);
  HiloImportarTrasladoEnAmbulancia:=ThreadImportarTrasladoEnAmbulancia.Create(true);
  HiloImportarCamaraHiperbarica:=ThreadImportarCamaraHiperbarica.Create(true);
  HiloImportarMedicinaNuclear:=ThreadImportarMedicinaNuclear.Create(true);
  HiloImportarMembresia:=ThreadImportarMembresia.Create(true);
  HiloImportarPaquetes:=ThreadImportarPaquetes.Create(true);
  HiloActualizarTablas:=ThreadActualizarTablas.Create(true);
  HiloReportes:=ThreadReportes.Create(true);

end;

procedure TFmain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try

  except

  end;
//  LogginCerrar:='ParaCerrar';
//  FLogin.ShowModal;
//
//  FLogin.Free;
//  FLogin:=nil;
end;


 // Actualizar las tablas
procedure TFmain.cxButton16Click(Sender: TObject);
var
myYear, myMonth, myDay : Word;
begin
  DecodeDate(now,myYear,myMonth,myDay);

  if DM1.Qlogin.FieldValues['Perfil']='Usuario' then
  begin
     Fmain.cxTabSheet8.Caption:='Lista de Precios Vigencia: '+intToStr(myMonth)+'/'+intToStr(myYear);;
  end;

  HiloActualizarTablas.Resume;

end;


// Timer Actualizacion de tablas
procedure TFmain.TimerEstadoTimer(Sender: TObject);
begin
  try
    DM1.QEstado.Execute;
    Estado:= DM1.QEstado.FieldValues['Estado'];
    if Estado = 'PorActualizar' then
    begin
      HiloActualizarTablas.Resume;

      DM1.QEstadoActualizado.Execute;
    end;

  except

  end;
end;


// Guardar Conf
procedure TFmain.cxButton4Click(Sender: TObject);
var
 i:Integer;
begin
   // Borrar las tablas
   DM1.QBorrarConf.Execute;

   with  DM1.QGuardarConfInc do
   begin
     // #1
     if cxCheckBox1.Checked then
     begin  ParamByName('Inc_Habilitado').AsString:='si'; end
     else begin ParamByName('Inc_Habilitado').AsString:='no';
     end;
     ParamByName('Inc_Numero').AsString:='1';
     ParamByName('Inc_Desde').AsString:=cxTextEdit1.Text;
     ParamByName('Inc_Hasta').AsString:=cxTextEdit2.Text;
     ParamByName('Inc_Valor').AsString:=cxTextEdit3.Text;
     Execute;

     // #2
     if cxCheckBox2.Checked then
     begin  ParamByName('Inc_Habilitado').AsString:='si'; end
     else begin ParamByName('Inc_Habilitado').AsString:='no';
     end;
     ParamByName('Inc_Numero').AsString:='2';
     ParamByName('Inc_Desde').AsString:=cxTextEdit4.Text;
     ParamByName('Inc_Hasta').AsString:=cxTextEdit5.Text;
     ParamByName('Inc_Valor').AsString:=cxTextEdit7.Text;
     Execute;

     // #3
     if cxCheckBox3.Checked then
     begin  ParamByName('Inc_Habilitado').AsString:='si'; end
     else begin ParamByName('Inc_Habilitado').AsString:='no';
     end;
     ParamByName('Inc_Numero').AsString:='3';
     ParamByName('Inc_Desde').AsString:=cxTextEdit8.Text;
     ParamByName('Inc_Hasta').AsString:=cxTextEdit10.Text;
     ParamByName('Inc_Valor').AsString:=cxTextEdit9.Text;
     Execute;

     // #4
     if cxCheckBox4.Checked then
     begin  ParamByName('Inc_Habilitado').AsString:='si'; end
     else begin ParamByName('Inc_Habilitado').AsString:='no';
     end;
     ParamByName('Inc_Numero').AsString:='4';
     ParamByName('Inc_Desde').AsString:=cxTextEdit11.Text;
     ParamByName('Inc_Hasta').AsString:=cxTextEdit13.Text;
     ParamByName('Inc_Valor').AsString:=cxTextEdit12.Text;
     Execute;

   end;

   with  DM1.QGuardarConfDec do
   begin
     // #1
     if cxCheckBox5.Checked then
     begin  ParamByName('Dec_Habilitado').AsString:='si'; end
     else begin ParamByName('Dec_Habilitado').AsString:='no';
     end;
     ParamByName('Dec_Numero').AsString:='1';
     ParamByName('Dec_Valor').AsString:=cxTextEdit14.Text;
     Execute;

     // #2
     if cxCheckBox6.Checked then
     begin  ParamByName('Dec_Habilitado').AsString:='si'; end
     else begin ParamByName('Dec_Habilitado').AsString:='no';
     end;
     ParamByName('Dec_Numero').AsString:='2';
     ParamByName('Dec_Valor').AsString:=cxTextEdit15.Text;
     Execute;

     // #3
     if cxCheckBox7.Checked then
     begin  ParamByName('Dec_Habilitado').AsString:='si'; end
     else begin ParamByName('Dec_Habilitado').AsString:='no';
     end;
     ParamByName('Dec_Numero').AsString:='3';
     ParamByName('Dec_Valor').AsString:=cxTextEdit16.Text;
     Execute;

     // #4
     if cxCheckBox8.Checked then
     begin  ParamByName('Dec_Habilitado').AsString:='si'; end
     else begin ParamByName('Dec_Habilitado').AsString:='no';
     end;
     ParamByName('Dec_Numero').AsString:='4';
     ParamByName('Dec_Valor').AsString:=cxTextEdit17.Text;
     Execute;

   end;

   with  DM1.QGuardarConfIvaYCambio do
   begin
     ParamByName('CambioDeMonedas').AsString:=cxTextEdit18.Text;
     ParamByName('Iva').AsString:=cxTextEdit6.Text;
     Execute;
   end;

   ShowMessage('Configuración guardada con éxito');

end;


// Exportar excel las listas
procedure TFmain.cxButton11Click(Sender: TObject);
var
  LO_Materiales ,LP_Materiales,LD_Materiales : string;
  LO_Medicamentos,LP_Medicamentos, LD_Medicamentos: string;
  LO_ServImg,LP_ServImg, LD_ServImg: string;
  LO_ServHosp,LP_ServHosp, LD_ServHosp: string;
  LO_EquipoMed,LP_EquipoMed, LD_EquipoMed: string;
  LO_ServLab,LP_ServLab, LD_ServLab: string;
  LO_ServMed,LP_ServMed, LD_ServMed: string;
  LO_TerInt,LP_TerInt, LD_TerInt: string;
  LO_TrasAmb,LP_TrasAmb, LD_TrasAmb: string;
  LO_CamHiper,LP_CamHiper, LD_CamHiper: string;
  LO_MedNuc,LP_MedNuc, LD_MedNuc: string;
  LO_Membresia,LP_Membresia, LD_Membresia: string;
  LO_Paquetes,LP_Paquetes, LD_Paquetes: string;

begin
  try
    LO_Materiales  := ExtractFilePath(Application.ExeName)+'/'+'Lista_Materiales_Original.xls';
    ExportGridToExcel(LO_Materiales, cxGrid1, False, True, false, 'xls');
    LP_Materiales:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Materiales_Pesos.xls';
    ExportGridToExcel(LP_Materiales, cxGrid3, False, True, false, 'xls');
    LD_Materiales:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Materiales_Dolares.xls';
    ExportGridToExcel(LD_Materiales, cxGrid5, False, True, false, 'xls');

    LO_Medicamentos:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Medicamentos_Original.xls';
    ExportGridToExcel(LO_Medicamentos, cxGrid2, False, True, True, 'xls');
    LP_Medicamentos:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Medicamentos_Pesos.xls';
    ExportGridToExcel(LP_Medicamentos, cxGrid4, False, True, True, 'xls');
    LD_Medicamentos:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Medicamentos_Dolares.xls';
    ExportGridToExcel(LD_Medicamentos, cxGrid6, False, True, True, 'xls');

    LO_ServImg:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Servicios_Imagenologia_Original.xls';
    ExportGridToExcel(LO_ServImg, cxGrid7, False, True, True, 'xls');
    LP_ServImg:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Servicios_Imagenologia_Pesos.xls';
    ExportGridToExcel(LP_ServImg, cxGrid8, False, True, True, 'xls');
    LD_ServImg:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Servicios_Imagenologia_Dolares.xls';
    ExportGridToExcel(LD_ServImg, cxGrid9, False, True, True, 'xls');

    LO_ServHosp:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Servicios_Hospital_Original.xls';
    ExportGridToExcel(LO_ServHosp, cxGrid10, False, True, True, 'xls');
    LP_ServHosp:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Servicios_Hospital_Pesos.xls';
    ExportGridToExcel(LP_ServHosp, cxGrid11, False, True, True, 'xls');
    LD_ServHosp:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Servicios_Hospital_Dolares.xls';
    ExportGridToExcel(LD_ServHosp, cxGrid12, False, True, True, 'xls');

    LO_EquipoMed:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Equipo_Medico_Original.xls';
    ExportGridToExcel(LO_EquipoMed, cxGrid13, False, True, True, 'xls');
    LP_EquipoMed:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Equipo_Medico_Pesos.xls';
    ExportGridToExcel(LP_EquipoMed, cxGrid14, False, True, True, 'xls');
    LD_EquipoMed:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Equipo_Medico_Dolares.xls';
    ExportGridToExcel(LD_EquipoMed, cxGrid15, False, True, True, 'xls');

    LO_ServLab:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Servicio_Laboratorio_Original.xls';
    ExportGridToExcel(LO_ServLab, cxGrid16, False, True, True, 'xls');
    LP_ServLab:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Servicio_Laboratorio_Pesos.xls';
    ExportGridToExcel(LP_ServLab, cxGrid17, False, True, True, 'xls');
    LD_ServLab:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Servicio_Laboratorio_Dolares.xls';
    ExportGridToExcel(LD_ServLab, cxGrid18, False, True, True, 'xls');

    LO_ServMed:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Servicio_Medico_Original.xls';
    ExportGridToExcel(LO_ServMed, cxGrid19, False, True, True, 'xls');
    LP_ServMed:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Servicio_Medico_Pesos.xls';
    ExportGridToExcel(LP_ServMed, cxGrid20, False, True, True, 'xls');
    LD_ServMed:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Servicio_Medico_Dolares.xls';
    ExportGridToExcel(LD_ServMed, cxGrid21, False, True, True, 'xls');

    LO_TerInt:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Terapia_Intensiva_Original.xls';
    ExportGridToExcel(LO_TerInt, cxGrid22, False, True, True, 'xls');
    LP_TerInt:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Terapia_Intensiva_Pesos.xls';
    ExportGridToExcel(LP_TerInt, cxGrid23, False, True, True, 'xls');
    LD_TerInt:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Terapia_Intensiva_Dolares.xls';
    ExportGridToExcel(LD_TerInt, cxGrid24, False, True, True, 'xls');

    LO_TrasAmb:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Traslado_en_Ambulancia_Original.xls';
    ExportGridToExcel(LO_TrasAmb, cxGrid25, False, True, True, 'xls');
    LP_TrasAmb:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Traslado_en_Ambulancia_Pesos.xls';
    ExportGridToExcel(LP_TrasAmb, cxGrid26, False, True, True, 'xls');
    LD_TrasAmb:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Traslado_en_Ambulancia_Dolares.xls';
    ExportGridToExcel(LD_TrasAmb, cxGrid27, False, True, True, 'xls');

    LO_CamHiper:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Camara_Hiperbarica_Original.xls';
    ExportGridToExcel(LO_CamHiper, cxGrid28, False, True, True, 'xls');
    LP_CamHiper:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Camara_Hiperbarica_Pesos.xls';
    ExportGridToExcel(LP_CamHiper, cxGrid29, False, True, True, 'xls');
    LD_CamHiper:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Camara_Hiperbarica_Dolares.xls';
    ExportGridToExcel(LD_CamHiper, cxGrid30, False, True, True, 'xls');

    LO_MedNuc:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Medicina_Nuclear_Original.xls';
    ExportGridToExcel(LO_MedNuc, cxGrid31, False, True, True, 'xls');
    LP_MedNuc:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Medicina_Nuclear_Pesos.xls';
    ExportGridToExcel(LP_MedNuc, cxGrid32, False, True, True, 'xls');
    LD_MedNuc:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Medicina_Nuclear_Dolares.xls';
    ExportGridToExcel(LD_MedNuc, cxGrid33, False, True, True, 'xls');

    LO_Membresia:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Membresia_Original.xls';
    ExportGridToExcel(LO_Membresia, cxGrid34, False, True, True, 'xls');
    LP_Membresia:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Membresia_Pesos.xls';
    ExportGridToExcel(LP_Membresia, cxGrid35, False, True, True, 'xls');
    LD_Membresia:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Membresia_Dolares.xls';
    ExportGridToExcel(LD_Membresia, cxGrid36, False, True, True, 'xls');

    LO_Paquetes:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Paquetes_Original.xls';
    ExportGridToExcel(LO_Paquetes, cxGrid37, False, True, True, 'xls');
    LP_Paquetes:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Paquetes_Pesos.xls';
    ExportGridToExcel(LP_Paquetes, cxGrid38, False, True, True, 'xls');
    LD_Paquetes:= ExtractFilePath(Application.ExeName)+'/'+'Lista_Paquetes_Dolares.xls';
    ExportGridToExcel(LD_Paquetes, cxGrid39, False, True, True, 'xls');

    ShowMessage('Archivos exportados a la carpeta de la applicación.');
  except

  end;

end;



//  Origenes Materiales
procedure TFmain.cxButton5Click(Sender: TObject);
begin
  FileOpenDialog1.Execute;
  cxTextEdit19.Text:=FileOpenDialog1.FileName;
  HiloImportarMateriales.OrigenMateriales:= cxTextEdit19.Text;
end;

//  Origenes Medicamentos
procedure TFmain.cxButton7Click(Sender: TObject);
begin
  FileOpenDialog1.Execute;
  cxTextEdit20.Text:=FileOpenDialog1.FileName;
  HiloImportarMedicamentos.OrigenMedicamentos:= cxTextEdit20.Text;
end;

//  Origenes Servicio de Imagenología
procedure TFmain.cxButton15Click(Sender: TObject);
begin
  FileOpenDialog1.Execute;
  cxTextEdit22.Text:=FileOpenDialog1.FileName;
  HiloImportarServicioDeImagenologia.OrigenServImg:= cxTextEdit22.Text;
end;

//  Origenes Servicio de Hospital
procedure TFmain.cxButton2Click(Sender: TObject);
begin
  FileOpenDialog1.Execute;
  cxTextEdit28.Text:=FileOpenDialog1.FileName;
  HiloImportarServicioDeHospital.OrigenServHosp:= cxTextEdit28.Text;
end;

//  Origenes equipo medico
procedure TFmain.cxButton3Click(Sender: TObject);
begin
  FileOpenDialog1.Execute;
  cxTextEdit29.Text:=FileOpenDialog1.FileName;
  HiloImportarEquipoMedico.OrigenEquipoMed:= cxTextEdit29.Text;
end;

//  Origenes Servicio de Laboratorio
procedure TFmain.cxButton8Click(Sender: TObject);
begin
  FileOpenDialog1.Execute;
  cxTextEdit30.Text:=FileOpenDialog1.FileName;
  HiloImportarServicioDeLaboratorio.OrigenServLab:= cxTextEdit30.Text;
end;

//  Origenes Servicio Medico
procedure TFmain.cxButton9Click(Sender: TObject);
begin
  FileOpenDialog1.Execute;
  cxTextEdit31.Text:=FileOpenDialog1.FileName;
  HiloImportarServicioMedico.OrigenServMed:= cxTextEdit31.Text;
end;

//  Origenes terapia intensiva
procedure TFmain.cxButton10Click(Sender: TObject);
begin
  FileOpenDialog1.Execute;
  cxTextEdit32.Text:=FileOpenDialog1.FileName;
  HiloImportarTerapiaIntensiva.OrigenTerapiaInt:= cxTextEdit32.Text;
end;

//  Origenes traslado en ambulancia
procedure TFmain.cxButton12Click(Sender: TObject);
begin
  FileOpenDialog1.Execute;
  cxTextEdit33.Text:=FileOpenDialog1.FileName;
  HiloImportarTrasladoEnAmbulancia.OrigenTrasAmb:= cxTextEdit33.Text;
end;

//  Origenes camara hiperbarica
procedure TFmain.cxButton13Click(Sender: TObject);
begin
  FileOpenDialog1.Execute;
  cxTextEdit34.Text:=FileOpenDialog1.FileName;
  HiloImportarCamaraHiperbarica.OrigenCamHiper:= cxTextEdit34.Text;
end;

//  Origenes medicina nuclear
procedure TFmain.cxButton14Click(Sender: TObject);
begin
  FileOpenDialog1.Execute;
  cxTextEdit35.Text:=FileOpenDialog1.FileName;
  HiloImportarMedicinaNuclear.OrigenMedNuc:= cxTextEdit35.Text;
end;

//  Origenes Membresia
procedure TFmain.cxButton17Click(Sender: TObject);
begin
  FileOpenDialog1.Execute;
  cxTextEdit36.Text:=FileOpenDialog1.FileName;
  HiloImportarMembresia.OrigenMembresia:= cxTextEdit36.Text;
end;

//  Origenes paquetes
procedure TFmain.cxButton18Click(Sender: TObject);
begin
  FileOpenDialog1.Execute;
  cxTextEdit37.Text:=FileOpenDialog1.FileName;
  HiloImportarPaquetes.OrigenPaquetes:= cxTextEdit37.Text;
end;


// Reportes
procedure TFmain.cxButton21Click(Sender: TObject);
begin
  FileOpenDialog1.Execute;
  HiloReportes.Excel:= FileOpenDialog1.FileName;

   HiloReportes.Resume;
end;



// Ejecutar Hilos
procedure TFmain.cxButton6Click(Sender: TObject);
var
  dir: string;
  ini: TIniFile;
  RutaConAño:string;
  RutaConMes:string;
  RutaConDia:string;
  RutaArchivos:string;
  RutaIni:string;
  ExisteIni:BOOL;
begin

   if (cxTextEdit19.Text <>'') and (FileExists(cxTextEdit19.Text)) then
   RutaIni:= ExtractFileDir(cxTextEdit19.Text)+'\' + 'Configuracion.ini';
   if (cxTextEdit20.Text <>'') and (FileExists(cxTextEdit20.Text)) then
   RutaIni:= ExtractFileDir(cxTextEdit20.Text)+'\' + 'Configuracion.ini';
   if (cxTextEdit22.Text <>'') and (FileExists(cxTextEdit22.Text)) then
   RutaIni:= ExtractFileDir(cxTextEdit22.Text)+'\' + 'Configuracion.ini';
   if (cxTextEdit28.Text <>'') and (FileExists(cxTextEdit28.Text)) then
   RutaIni:= ExtractFileDir(cxTextEdit28.Text)+'\' + 'Configuracion.ini';
   if (cxTextEdit29.Text <>'') and (FileExists(cxTextEdit29.Text)) then
   RutaIni:= ExtractFileDir(cxTextEdit29.Text)+'\' + 'Configuracion.ini';
   if (cxTextEdit30.Text <>'') and (FileExists(cxTextEdit30.Text)) then
   RutaIni:= ExtractFileDir(cxTextEdit30.Text)+'\' + 'Configuracion.ini';
   if (cxTextEdit31.Text <>'') and (FileExists(cxTextEdit31.Text)) then
   RutaIni:= ExtractFileDir(cxTextEdit31.Text)+'\' + 'Configuracion.ini';
   if (cxTextEdit32.Text <>'') and (FileExists(cxTextEdit32.Text)) then
   RutaIni:= ExtractFileDir(cxTextEdit32.Text)+'\' + 'Configuracion.ini';
   if (cxTextEdit33.Text <>'') and (FileExists(cxTextEdit33.Text)) then
   RutaIni:= ExtractFileDir(cxTextEdit33.Text)+'\' + 'Configuracion.ini';
   if (cxTextEdit34.Text <>'') and (FileExists(cxTextEdit34.Text)) then
   RutaIni:= ExtractFileDir(cxTextEdit34.Text)+'\' + 'Configuracion.ini';
   if (cxTextEdit35.Text <>'') and (FileExists(cxTextEdit35.Text)) then
   RutaIni:= ExtractFileDir(cxTextEdit35.Text)+'\' + 'Configuracion.ini';
   if (cxTextEdit36.Text <>'') and (FileExists(cxTextEdit36.Text)) then
   RutaIni:= ExtractFileDir(cxTextEdit36.Text)+'\' + 'Configuracion.ini';
   if (cxTextEdit37.Text <>'') and (FileExists(cxTextEdit37.Text)) then
   RutaIni:= ExtractFileDir(cxTextEdit37.Text)+'\' + 'Configuracion.ini';



   // Verificando si existe el ini de Configuracion
   if FileExists(RutaIni) then
   begin
     //   si existe cargar los datos al software
     ini := TIniFile.Create(RutaIni);

     if ini.ReadString('Incremento', '1Habilitar', '')= 'si' then cxCheckBox1.Checked:=True;
     if ini.ReadString('Incremento', '1Habilitar', '')= 'no' then cxCheckBox1.Checked:=false;
     cxTextEdit1.Text:= ini.ReadString('Incremento', '1Desde', '');
     cxTextEdit2.Text:= ini.ReadString('Incremento', '1Hasta', '');
     cxTextEdit3.Text:= ini.ReadString('Incremento', '1Valor', '');

     if ini.ReadString('Incremento', '2Habilitar', '')= 'si' then cxCheckBox2.Checked:=True;
     if ini.ReadString('Incremento', '2Habilitar', '')= 'no' then cxCheckBox2.Checked:=false;
     cxTextEdit4.Text:= ini.ReadString('Incremento', '2Desde', '');
     cxTextEdit5.Text:= ini.ReadString('Incremento', '2Hasta', '');
     cxTextEdit7.Text:= ini.ReadString('Incremento', '2Valor', '');

     if ini.ReadString('Incremento', '3Habilitar', '')= 'si' then cxCheckBox3.Checked:=True;
     if ini.ReadString('Incremento', '3Habilitar', '')= 'no' then cxCheckBox3.Checked:=false;
     cxTextEdit8.Text:= ini.ReadString('Incremento', '3Desde', '');
     cxTextEdit10.Text:= ini.ReadString('Incremento', '3Hasta', '');
     cxTextEdit9.Text:= ini.ReadString('Incremento', '3Valor', '');

     if ini.ReadString('Incremento', '4Habilitar', '')= 'si' then cxCheckBox4.Checked:=True;
     if ini.ReadString('Incremento', '4Habilitar', '')= 'no' then cxCheckBox4.Checked:=false;
     cxTextEdit11.Text:= ini.ReadString('Incremento', '4Desde', '');
     cxTextEdit13.Text:= ini.ReadString('Incremento', '4Hasta', '');
     cxTextEdit12.Text:= ini.ReadString('Incremento', '4Valor', '');

     if ini.ReadString('Decremento', '1Habilitar', '')= 'si' then cxCheckBox5.Checked:=True;
     if ini.ReadString('Decremento', '1Habilitar', '')= 'no' then cxCheckBox5.Checked:=false;
     cxTextEdit14.Text:= ini.ReadString('Decremento', '1Valor', '');

     if ini.ReadString('Decremento', '2Habilitar', '')= 'si' then cxCheckBox6.Checked:=True;
     if ini.ReadString('Decremento', '2Habilitar', '')= 'no' then cxCheckBox6.Checked:=false;
     cxTextEdit15.Text:= ini.ReadString('Decremento', '2Valor', '');

     if ini.ReadString('Decremento', '3Habilitar', '')= 'si' then cxCheckBox7.Checked:=True;
     if ini.ReadString('Decremento', '3Habilitar', '')= 'no' then cxCheckBox7.Checked:=false;
     cxTextEdit16.Text:= ini.ReadString('Decremento', '3Valor', '');

     if ini.ReadString('Decremento', '4Habilitar', '')= 'si' then cxCheckBox8.Checked:=True;
     if ini.ReadString('Decremento', '4Habilitar', '')= 'no' then cxCheckBox8.Checked:=false;
     cxTextEdit17.Text:= ini.ReadString('Decremento', '4Valor', '');

     cxTextEdit6.Text:= ini.ReadString('Iva', 'Iva', '');
     cxTextEdit18.Text:= ini.ReadString('CambioMonedas', 'CambioMonedas', '');

     ini.Free;

     ExisteIni:=True;
   end
   else
   begin
     ExisteIni:=False;
   end;

   // ejecutar hilo Materiales
   if (cxTextEdit19.Text<>'') and (FileExists(cxTextEdit19.Text)) then
   begin

     if not ExisteIni then
     begin
        // Creando las Carpetas

        RutaArchivos:= ExtractFileDir(Application.ExeName)+'\'+'20'+ FormatDateTime ('YY' , Date) +'\'+ FormatDateTime ('MM' , Date) +'\'+ FormatDateTime ('DD' , Date);
        RutaConAño:=  ExtractFileDir(Application.ExeName)+'\'+'20'+ FormatDateTime ('YY' , Date);
        RutaConMes:=  RutaConAño +'\'+ FormatDateTime ('MM' , Date);
        RutaConDia:=  RutaConMes +'\'+ FormatDateTime ('DD' , Date);

        if not DirectoryExists( RutaConAño ) then
        if not CreateDir(RutaConAño) then
        raise Exception.Create(RutaConAño);

        if not DirectoryExists(RutaConMes ) then
        if not CreateDir(RutaConMes) then
        raise Exception.Create(RutaConMes);

        if not DirectoryExists( RutaConDia ) then
        if not CreateDir(RutaConDia) then
        raise Exception.Create(RutaConDia);

        // Crear el ini
        ini := TIniFile.Create(RutaConDia+'\' + 'Configuracion.ini');

       if cxCheckBox1.Checked then
       begin  ini.WriteString('Incremento', '1Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '1Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '1Desde', cxTextEdit1.Text );
       ini.WriteString('Incremento', '1Hasta', cxTextEdit2.Text );
       ini.WriteString('Incremento', '1Valor', cxTextEdit3.Text );

       if cxCheckBox2.Checked then
       begin  ini.WriteString('Incremento', '2Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '2Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '2Desde', cxTextEdit4.Text );
       ini.WriteString('Incremento', '2Hasta', cxTextEdit5.Text );
       ini.WriteString('Incremento', '2Valor', cxTextEdit7.Text );

       if cxCheckBox3.Checked then
       begin  ini.WriteString('Incremento', '3Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '3Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '3Desde', cxTextEdit8.Text );
       ini.WriteString('Incremento', '3Hasta', cxTextEdit10.Text );
       ini.WriteString('Incremento', '3Valor', cxTextEdit9.Text );

       if cxCheckBox4.Checked then
       begin  ini.WriteString('Incremento', '4Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '4Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '4Desde', cxTextEdit11.Text );
       ini.WriteString('Incremento', '4Hasta', cxTextEdit13.Text );
       ini.WriteString('Incremento', '4Valor', cxTextEdit12.Text );

       if cxCheckBox5.Checked then
       begin  ini.WriteString('Decremento', '1Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '1Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '1Valor', cxTextEdit14.Text );

       if cxCheckBox6.Checked then
       begin  ini.WriteString('Decremento', '2Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '2Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '2Valor', cxTextEdit15.Text );

       if cxCheckBox7.Checked then
       begin  ini.WriteString('Decremento', '3Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '3Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '3Valor', cxTextEdit16.Text );

       if cxCheckBox8.Checked then
       begin  ini.WriteString('Decremento', '4Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '4Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '4Valor', cxTextEdit17.Text );

       ini.WriteString('Iva', 'Iva', cxTextEdit6.Text );

       ini.WriteString('CambioMonedas', 'CambioMonedas', cxTextEdit18.Text );

       ini.Free;


       // Copiar los archivos excel a la carpeta
       if FileExists(RutaConDia+'\'+'Materiales'+'.xls') then
       begin
         DeleteFile(RutaConDia+'\'+'Materiales'+'.xls');
         CopyFile(PChar(Fmain.cxTextEdit19.Text), PChar(RutaConDia+'\'+'Materiales'+'.xls') ,true);
       end
       else
       begin
         CopyFile(PChar(Fmain.cxTextEdit19.Text), PChar(RutaConDia+'\'+'Materiales'+'.xls') ,true);
       end;

       HiloImportarMateriales.Resume;

     end
     else
     begin
       HiloImportarMateriales.Resume;
     end;

   end;


   // ejecutar hilo Medicamentos
   if (cxTextEdit20.Text<>'') and (FileExists(cxTextEdit20.Text)) then
   begin
     if not ExisteIni then
     begin
       //   si no existe crearlo y guardar la configuracion actual
        RutaArchivos:= ExtractFileDir(Application.ExeName)+'\'+'20'+ FormatDateTime ('YY' , Date) +'\'+ FormatDateTime ('MM' , Date) +'\'+ FormatDateTime ('DD' , Date);
        RutaConAño:=  ExtractFileDir(Application.ExeName)+'\'+'20'+ FormatDateTime ('YY' , Date);
        RutaConMes:=  RutaConAño +'\'+ FormatDateTime ('MM' , Date);
        RutaConDia:=  RutaConMes +'\'+ FormatDateTime ('DD' , Date);

        if not DirectoryExists( RutaConAño ) then
        if not CreateDir(RutaConAño) then
        raise Exception.Create(RutaConAño);

        if not DirectoryExists(RutaConMes ) then
        if not CreateDir(RutaConMes) then
        raise Exception.Create(RutaConMes);

        if not DirectoryExists( RutaConDia ) then
        if not CreateDir(RutaConDia) then
        raise Exception.Create(RutaConDia);

       ini := TIniFile.Create(RutaConDia+'\' + 'Configuracion.ini');

       if cxCheckBox1.Checked then
       begin  ini.WriteString('Incremento', '1Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '1Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '1Desde', cxTextEdit1.Text );
       ini.WriteString('Incremento', '1Hasta', cxTextEdit2.Text );
       ini.WriteString('Incremento', '1Valor', cxTextEdit3.Text );

       if cxCheckBox2.Checked then
       begin  ini.WriteString('Incremento', '2Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '2Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '2Desde', cxTextEdit4.Text );
       ini.WriteString('Incremento', '2Hasta', cxTextEdit5.Text );
       ini.WriteString('Incremento', '2Valor', cxTextEdit7.Text );

       if cxCheckBox3.Checked then
       begin  ini.WriteString('Incremento', '3Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '3Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '3Desde', cxTextEdit8.Text );
       ini.WriteString('Incremento', '3Hasta', cxTextEdit10.Text );
       ini.WriteString('Incremento', '3Valor', cxTextEdit9.Text );

       if cxCheckBox4.Checked then
       begin  ini.WriteString('Incremento', '4Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '4Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '4Desde', cxTextEdit11.Text );
       ini.WriteString('Incremento', '4Hasta', cxTextEdit13.Text );
       ini.WriteString('Incremento', '4Valor', cxTextEdit12.Text );

       if cxCheckBox5.Checked then
       begin  ini.WriteString('Decremento', '1Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '1Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '1Valor', cxTextEdit14.Text );

       if cxCheckBox6.Checked then
       begin  ini.WriteString('Decremento', '2Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '2Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '2Valor', cxTextEdit15.Text );

       if cxCheckBox7.Checked then
       begin  ini.WriteString('Decremento', '3Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '3Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '3Valor', cxTextEdit16.Text );

       if cxCheckBox8.Checked then
       begin  ini.WriteString('Decremento', '4Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '4Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '4Valor', cxTextEdit17.Text );

       ini.WriteString('Iva', 'Iva', cxTextEdit6.Text );

       ini.WriteString('CambioMonedas', 'CambioMonedas', cxTextEdit18.Text );

       ini.Free;

       // Copiar los archivos excel a la carpeta
       if FileExists(RutaConDia+'\'+'Medicamentos'+'.xls') then
       begin
         DeleteFile(RutaConDia+'\'+'Medicamentos'+'.xls');
         CopyFile(PChar(Fmain.cxTextEdit20.Text), PChar(RutaConDia+'\'+'Medicamentos'+'.xls') ,true);
       end
       else
       begin
         CopyFile(PChar(Fmain.cxTextEdit20.Text), PChar(RutaConDia+'\'+'Medicamentos'+'.xls') ,true);
       end;

       HiloImportarMedicamentos.Resume;
     end
     else
     begin
       HiloImportarMedicamentos.Resume;
     end;

   end;

   // ejecutar hilo Servicios de Imagenologia
   if (cxTextEdit22.Text<>'') and (FileExists(cxTextEdit22.Text)) then
   begin

     if not ExisteIni then
     begin
        // Creando las Carpetas

        RutaArchivos:= ExtractFileDir(Application.ExeName)+'\'+'20'+ FormatDateTime ('YY' , Date) +'\'+ FormatDateTime ('MM' , Date) +'\'+ FormatDateTime ('DD' , Date);
        RutaConAño:=  ExtractFileDir(Application.ExeName)+'\'+'20'+ FormatDateTime ('YY' , Date);
        RutaConMes:=  RutaConAño +'\'+ FormatDateTime ('MM' , Date);
        RutaConDia:=  RutaConMes +'\'+ FormatDateTime ('DD' , Date);

        if not DirectoryExists( RutaConAño ) then
        if not CreateDir(RutaConAño) then
        raise Exception.Create(RutaConAño);

        if not DirectoryExists(RutaConMes ) then
        if not CreateDir(RutaConMes) then
        raise Exception.Create(RutaConMes);

        if not DirectoryExists( RutaConDia ) then
        if not CreateDir(RutaConDia) then
        raise Exception.Create(RutaConDia);

        // Crear el ini
        ini := TIniFile.Create(RutaConDia+'\' + 'Configuracion.ini');

       if cxCheckBox1.Checked then
       begin  ini.WriteString('Incremento', '1Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '1Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '1Desde', cxTextEdit1.Text );
       ini.WriteString('Incremento', '1Hasta', cxTextEdit2.Text );
       ini.WriteString('Incremento', '1Valor', cxTextEdit3.Text );

       if cxCheckBox2.Checked then
       begin  ini.WriteString('Incremento', '2Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '2Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '2Desde', cxTextEdit4.Text );
       ini.WriteString('Incremento', '2Hasta', cxTextEdit5.Text );
       ini.WriteString('Incremento', '2Valor', cxTextEdit7.Text );

       if cxCheckBox3.Checked then
       begin  ini.WriteString('Incremento', '3Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '3Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '3Desde', cxTextEdit8.Text );
       ini.WriteString('Incremento', '3Hasta', cxTextEdit10.Text );
       ini.WriteString('Incremento', '3Valor', cxTextEdit9.Text );

       if cxCheckBox4.Checked then
       begin  ini.WriteString('Incremento', '4Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '4Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '4Desde', cxTextEdit11.Text );
       ini.WriteString('Incremento', '4Hasta', cxTextEdit13.Text );
       ini.WriteString('Incremento', '4Valor', cxTextEdit12.Text );

       if cxCheckBox5.Checked then
       begin  ini.WriteString('Decremento', '1Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '1Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '1Valor', cxTextEdit14.Text );

       if cxCheckBox6.Checked then
       begin  ini.WriteString('Decremento', '2Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '2Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '2Valor', cxTextEdit15.Text );

       if cxCheckBox7.Checked then
       begin  ini.WriteString('Decremento', '3Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '3Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '3Valor', cxTextEdit16.Text );

       if cxCheckBox8.Checked then
       begin  ini.WriteString('Decremento', '4Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '4Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '4Valor', cxTextEdit17.Text );

       ini.WriteString('Iva', 'Iva', cxTextEdit6.Text );

       ini.WriteString('CambioMonedas', 'CambioMonedas', cxTextEdit18.Text );

       ini.Free;


       // Copiar los archivos excel a la carpeta
       if FileExists(RutaConDia+'\'+'ServiciosDeImagenologia'+'.xls') then
       begin
         DeleteFile(RutaConDia+'\'+'ServiciosDeImagenologia'+'.xls');
         CopyFile(PChar(Fmain.cxTextEdit22.Text), PChar(RutaConDia+'\'+'ServiciosDeImagenologia'+'.xls') ,true);
       end
       else
       begin
         CopyFile(PChar(Fmain.cxTextEdit22.Text), PChar(RutaConDia+'\'+'ServiciosDeImagenologia'+'.xls') ,true);
       end;

       HiloImportarServicioDeImagenologia.Resume;

     end
     else
     begin
       HiloImportarServicioDeImagenologia.Resume;
     end;

   end;

   // ejecutar hilo Servicios de Hospital
   if (cxTextEdit28.Text<>'') and (FileExists(cxTextEdit28.Text)) then
   begin

     if not ExisteIni then
     begin
        // Creando las Carpetas

        RutaArchivos:= ExtractFileDir(Application.ExeName)+'\'+'20'+ FormatDateTime ('YY' , Date) +'\'+ FormatDateTime ('MM' , Date) +'\'+ FormatDateTime ('DD' , Date);
        RutaConAño:=  ExtractFileDir(Application.ExeName)+'\'+'20'+ FormatDateTime ('YY' , Date);
        RutaConMes:=  RutaConAño +'\'+ FormatDateTime ('MM' , Date);
        RutaConDia:=  RutaConMes +'\'+ FormatDateTime ('DD' , Date);

        if not DirectoryExists( RutaConAño ) then
        if not CreateDir(RutaConAño) then
        raise Exception.Create(RutaConAño);

        if not DirectoryExists(RutaConMes ) then
        if not CreateDir(RutaConMes) then
        raise Exception.Create(RutaConMes);

        if not DirectoryExists( RutaConDia ) then
        if not CreateDir(RutaConDia) then
        raise Exception.Create(RutaConDia);

        // Crear el ini
        ini := TIniFile.Create(RutaConDia+'\' + 'Configuracion.ini');

       if cxCheckBox1.Checked then
       begin  ini.WriteString('Incremento', '1Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '1Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '1Desde', cxTextEdit1.Text );
       ini.WriteString('Incremento', '1Hasta', cxTextEdit2.Text );
       ini.WriteString('Incremento', '1Valor', cxTextEdit3.Text );

       if cxCheckBox2.Checked then
       begin  ini.WriteString('Incremento', '2Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '2Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '2Desde', cxTextEdit4.Text );
       ini.WriteString('Incremento', '2Hasta', cxTextEdit5.Text );
       ini.WriteString('Incremento', '2Valor', cxTextEdit7.Text );

       if cxCheckBox3.Checked then
       begin  ini.WriteString('Incremento', '3Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '3Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '3Desde', cxTextEdit8.Text );
       ini.WriteString('Incremento', '3Hasta', cxTextEdit10.Text );
       ini.WriteString('Incremento', '3Valor', cxTextEdit9.Text );

       if cxCheckBox4.Checked then
       begin  ini.WriteString('Incremento', '4Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '4Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '4Desde', cxTextEdit11.Text );
       ini.WriteString('Incremento', '4Hasta', cxTextEdit13.Text );
       ini.WriteString('Incremento', '4Valor', cxTextEdit12.Text );

       if cxCheckBox5.Checked then
       begin  ini.WriteString('Decremento', '1Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '1Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '1Valor', cxTextEdit14.Text );

       if cxCheckBox6.Checked then
       begin  ini.WriteString('Decremento', '2Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '2Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '2Valor', cxTextEdit15.Text );

       if cxCheckBox7.Checked then
       begin  ini.WriteString('Decremento', '3Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '3Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '3Valor', cxTextEdit16.Text );

       if cxCheckBox8.Checked then
       begin  ini.WriteString('Decremento', '4Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '4Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '4Valor', cxTextEdit17.Text );

       ini.WriteString('Iva', 'Iva', cxTextEdit6.Text );

       ini.WriteString('CambioMonedas', 'CambioMonedas', cxTextEdit18.Text );

       ini.Free;


       // Copiar los archivos excel a la carpeta
       if FileExists(RutaConDia+'\'+'ServiciosDeHospital'+'.xls') then
       begin
         DeleteFile(RutaConDia+'\'+'ServiciosDeHospital'+'.xls');
         CopyFile(PChar(Fmain.cxTextEdit28.Text), PChar(RutaConDia+'\'+'ServiciosDeHospital'+'.xls') ,true);
       end
       else
       begin
         CopyFile(PChar(Fmain.cxTextEdit28.Text), PChar(RutaConDia+'\'+'ServiciosDeHospital'+'.xls') ,true);
       end;

       HiloImportarServicioDeHospital.Resume;

     end
     else
     begin
       HiloImportarServicioDeHospital.Resume;
     end;

   end;

   // ejecutar hilo Equipo medico
   if (cxTextEdit29.Text<>'') and (FileExists(cxTextEdit29.Text)) then
   begin

     if not ExisteIni then
     begin
        // Creando las Carpetas

        RutaArchivos:= ExtractFileDir(Application.ExeName)+'\'+'20'+ FormatDateTime ('YY' , Date) +'\'+ FormatDateTime ('MM' , Date) +'\'+ FormatDateTime ('DD' , Date);
        RutaConAño:=  ExtractFileDir(Application.ExeName)+'\'+'20'+ FormatDateTime ('YY' , Date);
        RutaConMes:=  RutaConAño +'\'+ FormatDateTime ('MM' , Date);
        RutaConDia:=  RutaConMes +'\'+ FormatDateTime ('DD' , Date);

        if not DirectoryExists( RutaConAño ) then
        if not CreateDir(RutaConAño) then
        raise Exception.Create(RutaConAño);

        if not DirectoryExists(RutaConMes ) then
        if not CreateDir(RutaConMes) then
        raise Exception.Create(RutaConMes);

        if not DirectoryExists( RutaConDia ) then
        if not CreateDir(RutaConDia) then
        raise Exception.Create(RutaConDia);

        // Crear el ini
        ini := TIniFile.Create(RutaConDia+'\' + 'Configuracion.ini');

       if cxCheckBox1.Checked then
       begin  ini.WriteString('Incremento', '1Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '1Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '1Desde', cxTextEdit1.Text );
       ini.WriteString('Incremento', '1Hasta', cxTextEdit2.Text );
       ini.WriteString('Incremento', '1Valor', cxTextEdit3.Text );

       if cxCheckBox2.Checked then
       begin  ini.WriteString('Incremento', '2Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '2Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '2Desde', cxTextEdit4.Text );
       ini.WriteString('Incremento', '2Hasta', cxTextEdit5.Text );
       ini.WriteString('Incremento', '2Valor', cxTextEdit7.Text );

       if cxCheckBox3.Checked then
       begin  ini.WriteString('Incremento', '3Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '3Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '3Desde', cxTextEdit8.Text );
       ini.WriteString('Incremento', '3Hasta', cxTextEdit10.Text );
       ini.WriteString('Incremento', '3Valor', cxTextEdit9.Text );

       if cxCheckBox4.Checked then
       begin  ini.WriteString('Incremento', '4Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '4Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '4Desde', cxTextEdit11.Text );
       ini.WriteString('Incremento', '4Hasta', cxTextEdit13.Text );
       ini.WriteString('Incremento', '4Valor', cxTextEdit12.Text );

       if cxCheckBox5.Checked then
       begin  ini.WriteString('Decremento', '1Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '1Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '1Valor', cxTextEdit14.Text );

       if cxCheckBox6.Checked then
       begin  ini.WriteString('Decremento', '2Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '2Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '2Valor', cxTextEdit15.Text );

       if cxCheckBox7.Checked then
       begin  ini.WriteString('Decremento', '3Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '3Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '3Valor', cxTextEdit16.Text );

       if cxCheckBox8.Checked then
       begin  ini.WriteString('Decremento', '4Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '4Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '4Valor', cxTextEdit17.Text );

       ini.WriteString('Iva', 'Iva', cxTextEdit6.Text );

       ini.WriteString('CambioMonedas', 'CambioMonedas', cxTextEdit18.Text );

       ini.Free;


       // Copiar los archivos excel a la carpeta
       if FileExists(RutaConDia+'\'+'EquipoMedico'+'.xls') then
       begin
         DeleteFile(RutaConDia+'\'+'EquipoMedico'+'.xls');
         CopyFile(PChar(Fmain.cxTextEdit29.Text), PChar(RutaConDia+'\'+'EquipoMedico'+'.xls') ,true);
       end
       else
       begin
         CopyFile(PChar(Fmain.cxTextEdit29.Text), PChar(RutaConDia+'\'+'EquipoMedico'+'.xls') ,true);
       end;

       HiloImportarEquipoMedico.Resume;

     end
     else
     begin
       HiloImportarEquipoMedico.Resume;
     end;

   end;

   // ejecutar hilo Servicio de Laboratorio
   if (cxTextEdit30.Text<>'') and (FileExists(cxTextEdit30.Text)) then
   begin

     if not ExisteIni then
     begin
        // Creando las Carpetas

        RutaArchivos:= ExtractFileDir(Application.ExeName)+'\'+'20'+ FormatDateTime ('YY' , Date) +'\'+ FormatDateTime ('MM' , Date) +'\'+ FormatDateTime ('DD' , Date);
        RutaConAño:=  ExtractFileDir(Application.ExeName)+'\'+'20'+ FormatDateTime ('YY' , Date);
        RutaConMes:=  RutaConAño +'\'+ FormatDateTime ('MM' , Date);
        RutaConDia:=  RutaConMes +'\'+ FormatDateTime ('DD' , Date);

        if not DirectoryExists( RutaConAño ) then
        if not CreateDir(RutaConAño) then
        raise Exception.Create(RutaConAño);

        if not DirectoryExists(RutaConMes ) then
        if not CreateDir(RutaConMes) then
        raise Exception.Create(RutaConMes);

        if not DirectoryExists( RutaConDia ) then
        if not CreateDir(RutaConDia) then
        raise Exception.Create(RutaConDia);

        // Crear el ini
        ini := TIniFile.Create(RutaConDia+'\' + 'Configuracion.ini');

       if cxCheckBox1.Checked then
       begin  ini.WriteString('Incremento', '1Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '1Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '1Desde', cxTextEdit1.Text );
       ini.WriteString('Incremento', '1Hasta', cxTextEdit2.Text );
       ini.WriteString('Incremento', '1Valor', cxTextEdit3.Text );

       if cxCheckBox2.Checked then
       begin  ini.WriteString('Incremento', '2Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '2Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '2Desde', cxTextEdit4.Text );
       ini.WriteString('Incremento', '2Hasta', cxTextEdit5.Text );
       ini.WriteString('Incremento', '2Valor', cxTextEdit7.Text );

       if cxCheckBox3.Checked then
       begin  ini.WriteString('Incremento', '3Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '3Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '3Desde', cxTextEdit8.Text );
       ini.WriteString('Incremento', '3Hasta', cxTextEdit10.Text );
       ini.WriteString('Incremento', '3Valor', cxTextEdit9.Text );

       if cxCheckBox4.Checked then
       begin  ini.WriteString('Incremento', '4Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '4Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '4Desde', cxTextEdit11.Text );
       ini.WriteString('Incremento', '4Hasta', cxTextEdit13.Text );
       ini.WriteString('Incremento', '4Valor', cxTextEdit12.Text );

       if cxCheckBox5.Checked then
       begin  ini.WriteString('Decremento', '1Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '1Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '1Valor', cxTextEdit14.Text );

       if cxCheckBox6.Checked then
       begin  ini.WriteString('Decremento', '2Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '2Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '2Valor', cxTextEdit15.Text );

       if cxCheckBox7.Checked then
       begin  ini.WriteString('Decremento', '3Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '3Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '3Valor', cxTextEdit16.Text );

       if cxCheckBox8.Checked then
       begin  ini.WriteString('Decremento', '4Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '4Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '4Valor', cxTextEdit17.Text );

       ini.WriteString('Iva', 'Iva', cxTextEdit6.Text );

       ini.WriteString('CambioMonedas', 'CambioMonedas', cxTextEdit18.Text );

       ini.Free;


       // Copiar los archivos excel a la carpeta
       if FileExists(RutaConDia+'\'+'ServicioDeLaboratorio'+'.xls') then
       begin
         DeleteFile(RutaConDia+'\'+'ServicioDeLaboratorio'+'.xls');
         CopyFile(PChar(Fmain.cxTextEdit30.Text), PChar(RutaConDia+'\'+'ServicioDeLaboratorio'+'.xls') ,true);
       end
       else
       begin
         CopyFile(PChar(Fmain.cxTextEdit30.Text), PChar(RutaConDia+'\'+'ServicioDeLaboratorio'+'.xls') ,true);
       end;

       HiloImportarServicioDeLaboratorio.Resume;

     end
     else
     begin
       HiloImportarServicioDeLaboratorio.Resume;
     end;

   end;

   // ejecutar hilo Servicio Medico
   if (cxTextEdit31.Text<>'') and (FileExists(cxTextEdit31.Text)) then
   begin

     if not ExisteIni then
     begin
        // Creando las Carpetas

        RutaArchivos:= ExtractFileDir(Application.ExeName)+'\'+'20'+ FormatDateTime ('YY' , Date) +'\'+ FormatDateTime ('MM' , Date) +'\'+ FormatDateTime ('DD' , Date);
        RutaConAño:=  ExtractFileDir(Application.ExeName)+'\'+'20'+ FormatDateTime ('YY' , Date);
        RutaConMes:=  RutaConAño +'\'+ FormatDateTime ('MM' , Date);
        RutaConDia:=  RutaConMes +'\'+ FormatDateTime ('DD' , Date);

        if not DirectoryExists( RutaConAño ) then
        if not CreateDir(RutaConAño) then
        raise Exception.Create(RutaConAño);

        if not DirectoryExists(RutaConMes ) then
        if not CreateDir(RutaConMes) then
        raise Exception.Create(RutaConMes);

        if not DirectoryExists( RutaConDia ) then
        if not CreateDir(RutaConDia) then
        raise Exception.Create(RutaConDia);

        // Crear el ini
        ini := TIniFile.Create(RutaConDia+'\' + 'Configuracion.ini');

       if cxCheckBox1.Checked then
       begin  ini.WriteString('Incremento', '1Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '1Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '1Desde', cxTextEdit1.Text );
       ini.WriteString('Incremento', '1Hasta', cxTextEdit2.Text );
       ini.WriteString('Incremento', '1Valor', cxTextEdit3.Text );

       if cxCheckBox2.Checked then
       begin  ini.WriteString('Incremento', '2Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '2Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '2Desde', cxTextEdit4.Text );
       ini.WriteString('Incremento', '2Hasta', cxTextEdit5.Text );
       ini.WriteString('Incremento', '2Valor', cxTextEdit7.Text );

       if cxCheckBox3.Checked then
       begin  ini.WriteString('Incremento', '3Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '3Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '3Desde', cxTextEdit8.Text );
       ini.WriteString('Incremento', '3Hasta', cxTextEdit10.Text );
       ini.WriteString('Incremento', '3Valor', cxTextEdit9.Text );

       if cxCheckBox4.Checked then
       begin  ini.WriteString('Incremento', '4Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '4Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '4Desde', cxTextEdit11.Text );
       ini.WriteString('Incremento', '4Hasta', cxTextEdit13.Text );
       ini.WriteString('Incremento', '4Valor', cxTextEdit12.Text );

       if cxCheckBox5.Checked then
       begin  ini.WriteString('Decremento', '1Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '1Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '1Valor', cxTextEdit14.Text );

       if cxCheckBox6.Checked then
       begin  ini.WriteString('Decremento', '2Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '2Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '2Valor', cxTextEdit15.Text );

       if cxCheckBox7.Checked then
       begin  ini.WriteString('Decremento', '3Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '3Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '3Valor', cxTextEdit16.Text );

       if cxCheckBox8.Checked then
       begin  ini.WriteString('Decremento', '4Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '4Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '4Valor', cxTextEdit17.Text );

       ini.WriteString('Iva', 'Iva', cxTextEdit6.Text );

       ini.WriteString('CambioMonedas', 'CambioMonedas', cxTextEdit18.Text );

       ini.Free;


       // Copiar los archivos excel a la carpeta
       if FileExists(RutaConDia+'\'+'ServicioMedico'+'.xls') then
       begin
         DeleteFile(RutaConDia+'\'+'ServicioMedico'+'.xls');
         CopyFile(PChar(Fmain.cxTextEdit31.Text), PChar(RutaConDia+'\'+'ServicioMedico'+'.xls') ,true);
       end
       else
       begin
         CopyFile(PChar(Fmain.cxTextEdit31.Text), PChar(RutaConDia+'\'+'ServicioMedico'+'.xls') ,true);
       end;

       HiloImportarServicioMedico.Resume;

     end
     else
     begin
       HiloImportarServicioMedico.Resume;
     end;

   end;

   // ejecutar hilo Terapia Intensiva
   if (cxTextEdit32.Text<>'') and (FileExists(cxTextEdit32.Text)) then
   begin

     if not ExisteIni then
     begin
        // Creando las Carpetas

        RutaArchivos:= ExtractFileDir(Application.ExeName)+'\'+'20'+ FormatDateTime ('YY' , Date) +'\'+ FormatDateTime ('MM' , Date) +'\'+ FormatDateTime ('DD' , Date);
        RutaConAño:=  ExtractFileDir(Application.ExeName)+'\'+'20'+ FormatDateTime ('YY' , Date);
        RutaConMes:=  RutaConAño +'\'+ FormatDateTime ('MM' , Date);
        RutaConDia:=  RutaConMes +'\'+ FormatDateTime ('DD' , Date);

        if not DirectoryExists( RutaConAño ) then
        if not CreateDir(RutaConAño) then
        raise Exception.Create(RutaConAño);

        if not DirectoryExists(RutaConMes ) then
        if not CreateDir(RutaConMes) then
        raise Exception.Create(RutaConMes);

        if not DirectoryExists( RutaConDia ) then
        if not CreateDir(RutaConDia) then
        raise Exception.Create(RutaConDia);

        // Crear el ini
        ini := TIniFile.Create(RutaConDia+'\' + 'Configuracion.ini');

       if cxCheckBox1.Checked then
       begin  ini.WriteString('Incremento', '1Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '1Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '1Desde', cxTextEdit1.Text );
       ini.WriteString('Incremento', '1Hasta', cxTextEdit2.Text );
       ini.WriteString('Incremento', '1Valor', cxTextEdit3.Text );

       if cxCheckBox2.Checked then
       begin  ini.WriteString('Incremento', '2Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '2Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '2Desde', cxTextEdit4.Text );
       ini.WriteString('Incremento', '2Hasta', cxTextEdit5.Text );
       ini.WriteString('Incremento', '2Valor', cxTextEdit7.Text );

       if cxCheckBox3.Checked then
       begin  ini.WriteString('Incremento', '3Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '3Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '3Desde', cxTextEdit8.Text );
       ini.WriteString('Incremento', '3Hasta', cxTextEdit10.Text );
       ini.WriteString('Incremento', '3Valor', cxTextEdit9.Text );

       if cxCheckBox4.Checked then
       begin  ini.WriteString('Incremento', '4Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '4Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '4Desde', cxTextEdit11.Text );
       ini.WriteString('Incremento', '4Hasta', cxTextEdit13.Text );
       ini.WriteString('Incremento', '4Valor', cxTextEdit12.Text );

       if cxCheckBox5.Checked then
       begin  ini.WriteString('Decremento', '1Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '1Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '1Valor', cxTextEdit14.Text );

       if cxCheckBox6.Checked then
       begin  ini.WriteString('Decremento', '2Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '2Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '2Valor', cxTextEdit15.Text );

       if cxCheckBox7.Checked then
       begin  ini.WriteString('Decremento', '3Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '3Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '3Valor', cxTextEdit16.Text );

       if cxCheckBox8.Checked then
       begin  ini.WriteString('Decremento', '4Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '4Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '4Valor', cxTextEdit17.Text );

       ini.WriteString('Iva', 'Iva', cxTextEdit6.Text );

       ini.WriteString('CambioMonedas', 'CambioMonedas', cxTextEdit18.Text );

       ini.Free;


       // Copiar los archivos excel a la carpeta
       if FileExists(RutaConDia+'\'+'TerapiaIntensiva'+'.xls') then
       begin
         DeleteFile(RutaConDia+'\'+'TerapiaIntensiva'+'.xls');
         CopyFile(PChar(Fmain.cxTextEdit32.Text), PChar(RutaConDia+'\'+'TerapiaIntensiva'+'.xls') ,true);
       end
       else
       begin
         CopyFile(PChar(Fmain.cxTextEdit32.Text), PChar(RutaConDia+'\'+'TerapiaIntensiva'+'.xls') ,true);
       end;

       HiloImportarTerapiaIntensiva.Resume;

     end
     else
     begin
       HiloImportarTerapiaIntensiva.Resume;
     end;
   end;

   // ejecutar hilo Traslado en Ambulancia
   if (cxTextEdit33.Text<>'') and (FileExists(cxTextEdit33.Text)) then
   begin

     if not ExisteIni then
     begin
        // Creando las Carpetas

        RutaArchivos:= ExtractFileDir(Application.ExeName)+'\'+'20'+ FormatDateTime ('YY' , Date) +'\'+ FormatDateTime ('MM' , Date) +'\'+ FormatDateTime ('DD' , Date);
        RutaConAño:=  ExtractFileDir(Application.ExeName)+'\'+'20'+ FormatDateTime ('YY' , Date);
        RutaConMes:=  RutaConAño +'\'+ FormatDateTime ('MM' , Date);
        RutaConDia:=  RutaConMes +'\'+ FormatDateTime ('DD' , Date);

        if not DirectoryExists( RutaConAño ) then
        if not CreateDir(RutaConAño) then
        raise Exception.Create(RutaConAño);

        if not DirectoryExists(RutaConMes ) then
        if not CreateDir(RutaConMes) then
        raise Exception.Create(RutaConMes);

        if not DirectoryExists( RutaConDia ) then
        if not CreateDir(RutaConDia) then
        raise Exception.Create(RutaConDia);

        // Crear el ini
        ini := TIniFile.Create(RutaConDia+'\' + 'Configuracion.ini');

       if cxCheckBox1.Checked then
       begin  ini.WriteString('Incremento', '1Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '1Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '1Desde', cxTextEdit1.Text );
       ini.WriteString('Incremento', '1Hasta', cxTextEdit2.Text );
       ini.WriteString('Incremento', '1Valor', cxTextEdit3.Text );

       if cxCheckBox2.Checked then
       begin  ini.WriteString('Incremento', '2Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '2Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '2Desde', cxTextEdit4.Text );
       ini.WriteString('Incremento', '2Hasta', cxTextEdit5.Text );
       ini.WriteString('Incremento', '2Valor', cxTextEdit7.Text );

       if cxCheckBox3.Checked then
       begin  ini.WriteString('Incremento', '3Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '3Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '3Desde', cxTextEdit8.Text );
       ini.WriteString('Incremento', '3Hasta', cxTextEdit10.Text );
       ini.WriteString('Incremento', '3Valor', cxTextEdit9.Text );

       if cxCheckBox4.Checked then
       begin  ini.WriteString('Incremento', '4Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '4Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '4Desde', cxTextEdit11.Text );
       ini.WriteString('Incremento', '4Hasta', cxTextEdit13.Text );
       ini.WriteString('Incremento', '4Valor', cxTextEdit12.Text );

       if cxCheckBox5.Checked then
       begin  ini.WriteString('Decremento', '1Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '1Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '1Valor', cxTextEdit14.Text );

       if cxCheckBox6.Checked then
       begin  ini.WriteString('Decremento', '2Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '2Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '2Valor', cxTextEdit15.Text );

       if cxCheckBox7.Checked then
       begin  ini.WriteString('Decremento', '3Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '3Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '3Valor', cxTextEdit16.Text );

       if cxCheckBox8.Checked then
       begin  ini.WriteString('Decremento', '4Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '4Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '4Valor', cxTextEdit17.Text );

       ini.WriteString('Iva', 'Iva', cxTextEdit6.Text );

       ini.WriteString('CambioMonedas', 'CambioMonedas', cxTextEdit18.Text );

       ini.Free;


       // Copiar los archivos excel a la carpeta
       if FileExists(RutaConDia+'\'+'TrasladoEnAmbulancia'+'.xls') then
       begin
         DeleteFile(RutaConDia+'\'+'TrasladoEnAmbulancia'+'.xls');
         CopyFile(PChar(Fmain.cxTextEdit33.Text), PChar(RutaConDia+'\'+'TrasladoEnAmbulancia'+'.xls') ,true);
       end
       else
       begin
         CopyFile(PChar(Fmain.cxTextEdit33.Text), PChar(RutaConDia+'\'+'TrasladoEnAmbulancia'+'.xls') ,true);
       end;

       HiloImportarTrasladoEnAmbulancia.Resume;

     end
     else
     begin
       HiloImportarTrasladoEnAmbulancia.Resume;
     end;
   end;

   // ejecutar hilo camara hiperbarica
   if (cxTextEdit34.Text<>'') and (FileExists(cxTextEdit34.Text)) then
   begin

     if not ExisteIni then
     begin
        // Creando las Carpetas

        RutaArchivos:= ExtractFileDir(Application.ExeName)+'\'+'20'+ FormatDateTime ('YY' , Date) +'\'+ FormatDateTime ('MM' , Date) +'\'+ FormatDateTime ('DD' , Date);
        RutaConAño:=  ExtractFileDir(Application.ExeName)+'\'+'20'+ FormatDateTime ('YY' , Date);
        RutaConMes:=  RutaConAño +'\'+ FormatDateTime ('MM' , Date);
        RutaConDia:=  RutaConMes +'\'+ FormatDateTime ('DD' , Date);

        if not DirectoryExists( RutaConAño ) then
        if not CreateDir(RutaConAño) then
        raise Exception.Create(RutaConAño);

        if not DirectoryExists(RutaConMes ) then
        if not CreateDir(RutaConMes) then
        raise Exception.Create(RutaConMes);

        if not DirectoryExists( RutaConDia ) then
        if not CreateDir(RutaConDia) then
        raise Exception.Create(RutaConDia);

        // Crear el ini
        ini := TIniFile.Create(RutaConDia+'\' + 'Configuracion.ini');

       if cxCheckBox1.Checked then
       begin  ini.WriteString('Incremento', '1Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '1Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '1Desde', cxTextEdit1.Text );
       ini.WriteString('Incremento', '1Hasta', cxTextEdit2.Text );
       ini.WriteString('Incremento', '1Valor', cxTextEdit3.Text );

       if cxCheckBox2.Checked then
       begin  ini.WriteString('Incremento', '2Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '2Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '2Desde', cxTextEdit4.Text );
       ini.WriteString('Incremento', '2Hasta', cxTextEdit5.Text );
       ini.WriteString('Incremento', '2Valor', cxTextEdit7.Text );

       if cxCheckBox3.Checked then
       begin  ini.WriteString('Incremento', '3Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '3Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '3Desde', cxTextEdit8.Text );
       ini.WriteString('Incremento', '3Hasta', cxTextEdit10.Text );
       ini.WriteString('Incremento', '3Valor', cxTextEdit9.Text );

       if cxCheckBox4.Checked then
       begin  ini.WriteString('Incremento', '4Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '4Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '4Desde', cxTextEdit11.Text );
       ini.WriteString('Incremento', '4Hasta', cxTextEdit13.Text );
       ini.WriteString('Incremento', '4Valor', cxTextEdit12.Text );

       if cxCheckBox5.Checked then
       begin  ini.WriteString('Decremento', '1Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '1Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '1Valor', cxTextEdit14.Text );

       if cxCheckBox6.Checked then
       begin  ini.WriteString('Decremento', '2Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '2Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '2Valor', cxTextEdit15.Text );

       if cxCheckBox7.Checked then
       begin  ini.WriteString('Decremento', '3Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '3Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '3Valor', cxTextEdit16.Text );

       if cxCheckBox8.Checked then
       begin  ini.WriteString('Decremento', '4Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '4Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '4Valor', cxTextEdit17.Text );

       ini.WriteString('Iva', 'Iva', cxTextEdit6.Text );

       ini.WriteString('CambioMonedas', 'CambioMonedas', cxTextEdit18.Text );

       ini.Free;


       // Copiar los archivos excel a la carpeta
       if FileExists(RutaConDia+'\'+'CamaraHiperbarica'+'.xls') then
       begin
         DeleteFile(RutaConDia+'\'+'CamaraHiperbarica'+'.xls');
         CopyFile(PChar(Fmain.cxTextEdit34.Text), PChar(RutaConDia+'\'+'CamaraHiperbarica'+'.xls') ,true);
       end
       else
       begin
         CopyFile(PChar(Fmain.cxTextEdit34.Text), PChar(RutaConDia+'\'+'CamaraHiperbarica'+'.xls') ,true);
       end;

       HiloImportarCamaraHiperbarica.Resume;

     end
     else
     begin
       HiloImportarCamaraHiperbarica.Resume;
     end;
   end;

   // ejecutar hilo medicina nuclear
   if (cxTextEdit35.Text<>'') and (FileExists(cxTextEdit35.Text)) then
   begin

     if not ExisteIni then
     begin
        // Creando las Carpetas

        RutaArchivos:= ExtractFileDir(Application.ExeName)+'\'+'20'+ FormatDateTime ('YY' , Date) +'\'+ FormatDateTime ('MM' , Date) +'\'+ FormatDateTime ('DD' , Date);
        RutaConAño:=  ExtractFileDir(Application.ExeName)+'\'+'20'+ FormatDateTime ('YY' , Date);
        RutaConMes:=  RutaConAño +'\'+ FormatDateTime ('MM' , Date);
        RutaConDia:=  RutaConMes +'\'+ FormatDateTime ('DD' , Date);

        if not DirectoryExists( RutaConAño ) then
        if not CreateDir(RutaConAño) then
        raise Exception.Create(RutaConAño);

        if not DirectoryExists(RutaConMes ) then
        if not CreateDir(RutaConMes) then
        raise Exception.Create(RutaConMes);

        if not DirectoryExists( RutaConDia ) then
        if not CreateDir(RutaConDia) then
        raise Exception.Create(RutaConDia);

        // Crear el ini
        ini := TIniFile.Create(RutaConDia+'\' + 'Configuracion.ini');

       if cxCheckBox1.Checked then
       begin  ini.WriteString('Incremento', '1Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '1Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '1Desde', cxTextEdit1.Text );
       ini.WriteString('Incremento', '1Hasta', cxTextEdit2.Text );
       ini.WriteString('Incremento', '1Valor', cxTextEdit3.Text );

       if cxCheckBox2.Checked then
       begin  ini.WriteString('Incremento', '2Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '2Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '2Desde', cxTextEdit4.Text );
       ini.WriteString('Incremento', '2Hasta', cxTextEdit5.Text );
       ini.WriteString('Incremento', '2Valor', cxTextEdit7.Text );

       if cxCheckBox3.Checked then
       begin  ini.WriteString('Incremento', '3Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '3Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '3Desde', cxTextEdit8.Text );
       ini.WriteString('Incremento', '3Hasta', cxTextEdit10.Text );
       ini.WriteString('Incremento', '3Valor', cxTextEdit9.Text );

       if cxCheckBox4.Checked then
       begin  ini.WriteString('Incremento', '4Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '4Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '4Desde', cxTextEdit11.Text );
       ini.WriteString('Incremento', '4Hasta', cxTextEdit13.Text );
       ini.WriteString('Incremento', '4Valor', cxTextEdit12.Text );

       if cxCheckBox5.Checked then
       begin  ini.WriteString('Decremento', '1Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '1Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '1Valor', cxTextEdit14.Text );

       if cxCheckBox6.Checked then
       begin  ini.WriteString('Decremento', '2Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '2Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '2Valor', cxTextEdit15.Text );

       if cxCheckBox7.Checked then
       begin  ini.WriteString('Decremento', '3Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '3Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '3Valor', cxTextEdit16.Text );

       if cxCheckBox8.Checked then
       begin  ini.WriteString('Decremento', '4Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '4Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '4Valor', cxTextEdit17.Text );

       ini.WriteString('Iva', 'Iva', cxTextEdit6.Text );

       ini.WriteString('CambioMonedas', 'CambioMonedas', cxTextEdit18.Text );

       ini.Free;


       // Copiar los archivos excel a la carpeta
       if FileExists(RutaConDia+'\'+'MedicinaNuclear'+'.xls') then
       begin
         DeleteFile(RutaConDia+'\'+'MedicinaNuclear'+'.xls');
         CopyFile(PChar(Fmain.cxTextEdit35.Text), PChar(RutaConDia+'\'+'MedicinaNuclear'+'.xls') ,true);
       end
       else
       begin
         CopyFile(PChar(Fmain.cxTextEdit35.Text), PChar(RutaConDia+'\'+'MedicinaNuclear'+'.xls') ,true);
       end;

       HiloImportarMedicinaNuclear.Resume;

     end
     else
     begin
       HiloImportarMedicinaNuclear.Resume;
     end;
   end;

   // ejecutar hilo membresia
   if (cxTextEdit36.Text<>'') and (FileExists(cxTextEdit36.Text)) then
   begin

     if not ExisteIni then
     begin
        // Creando las Carpetas

        RutaArchivos:= ExtractFileDir(Application.ExeName)+'\'+'20'+ FormatDateTime ('YY' , Date) +'\'+ FormatDateTime ('MM' , Date) +'\'+ FormatDateTime ('DD' , Date);
        RutaConAño:=  ExtractFileDir(Application.ExeName)+'\'+'20'+ FormatDateTime ('YY' , Date);
        RutaConMes:=  RutaConAño +'\'+ FormatDateTime ('MM' , Date);
        RutaConDia:=  RutaConMes +'\'+ FormatDateTime ('DD' , Date);

        if not DirectoryExists( RutaConAño ) then
        if not CreateDir(RutaConAño) then
        raise Exception.Create(RutaConAño);

        if not DirectoryExists(RutaConMes ) then
        if not CreateDir(RutaConMes) then
        raise Exception.Create(RutaConMes);

        if not DirectoryExists( RutaConDia ) then
        if not CreateDir(RutaConDia) then
        raise Exception.Create(RutaConDia);

        // Crear el ini
        ini := TIniFile.Create(RutaConDia+'\' + 'Configuracion.ini');

       if cxCheckBox1.Checked then
       begin  ini.WriteString('Incremento', '1Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '1Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '1Desde', cxTextEdit1.Text );
       ini.WriteString('Incremento', '1Hasta', cxTextEdit2.Text );
       ini.WriteString('Incremento', '1Valor', cxTextEdit3.Text );

       if cxCheckBox2.Checked then
       begin  ini.WriteString('Incremento', '2Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '2Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '2Desde', cxTextEdit4.Text );
       ini.WriteString('Incremento', '2Hasta', cxTextEdit5.Text );
       ini.WriteString('Incremento', '2Valor', cxTextEdit7.Text );

       if cxCheckBox3.Checked then
       begin  ini.WriteString('Incremento', '3Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '3Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '3Desde', cxTextEdit8.Text );
       ini.WriteString('Incremento', '3Hasta', cxTextEdit10.Text );
       ini.WriteString('Incremento', '3Valor', cxTextEdit9.Text );

       if cxCheckBox4.Checked then
       begin  ini.WriteString('Incremento', '4Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '4Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '4Desde', cxTextEdit11.Text );
       ini.WriteString('Incremento', '4Hasta', cxTextEdit13.Text );
       ini.WriteString('Incremento', '4Valor', cxTextEdit12.Text );

       if cxCheckBox5.Checked then
       begin  ini.WriteString('Decremento', '1Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '1Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '1Valor', cxTextEdit14.Text );

       if cxCheckBox6.Checked then
       begin  ini.WriteString('Decremento', '2Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '2Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '2Valor', cxTextEdit15.Text );

       if cxCheckBox7.Checked then
       begin  ini.WriteString('Decremento', '3Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '3Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '3Valor', cxTextEdit16.Text );

       if cxCheckBox8.Checked then
       begin  ini.WriteString('Decremento', '4Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '4Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '4Valor', cxTextEdit17.Text );

       ini.WriteString('Iva', 'Iva', cxTextEdit6.Text );

       ini.WriteString('CambioMonedas', 'CambioMonedas', cxTextEdit18.Text );

       ini.Free;


       // Copiar los archivos excel a la carpeta
       if FileExists(RutaConDia+'\'+'Membresia'+'.xls') then
       begin
         DeleteFile(RutaConDia+'\'+'Membresia'+'.xls');
         CopyFile(PChar(Fmain.cxTextEdit36.Text), PChar(RutaConDia+'\'+'Membresia'+'.xls') ,true);
       end
       else
       begin
         CopyFile(PChar(Fmain.cxTextEdit36.Text), PChar(RutaConDia+'\'+'Membresia'+'.xls') ,true);
       end;

       HiloImportarMembresia.Resume;

     end
     else
     begin
       HiloImportarMembresia.Resume;
     end;
   end;

   // ejecutar hilo paquetes
   if (cxTextEdit37.Text<>'') and (FileExists(cxTextEdit37.Text)) then
   begin

     if not ExisteIni then
     begin
        // Creando las Carpetas

        RutaArchivos:= ExtractFileDir(Application.ExeName)+'\'+'20'+ FormatDateTime ('YY' , Date) +'\'+ FormatDateTime ('MM' , Date) +'\'+ FormatDateTime ('DD' , Date);
        RutaConAño:=  ExtractFileDir(Application.ExeName)+'\'+'20'+ FormatDateTime ('YY' , Date);
        RutaConMes:=  RutaConAño +'\'+ FormatDateTime ('MM' , Date);
        RutaConDia:=  RutaConMes +'\'+ FormatDateTime ('DD' , Date);

        if not DirectoryExists( RutaConAño ) then
        if not CreateDir(RutaConAño) then
        raise Exception.Create(RutaConAño);

        if not DirectoryExists(RutaConMes ) then
        if not CreateDir(RutaConMes) then
        raise Exception.Create(RutaConMes);

        if not DirectoryExists( RutaConDia ) then
        if not CreateDir(RutaConDia) then
        raise Exception.Create(RutaConDia);

        // Crear el ini
        ini := TIniFile.Create(RutaConDia+'\' + 'Configuracion.ini');

       if cxCheckBox1.Checked then
       begin  ini.WriteString('Incremento', '1Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '1Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '1Desde', cxTextEdit1.Text );
       ini.WriteString('Incremento', '1Hasta', cxTextEdit2.Text );
       ini.WriteString('Incremento', '1Valor', cxTextEdit3.Text );

       if cxCheckBox2.Checked then
       begin  ini.WriteString('Incremento', '2Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '2Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '2Desde', cxTextEdit4.Text );
       ini.WriteString('Incremento', '2Hasta', cxTextEdit5.Text );
       ini.WriteString('Incremento', '2Valor', cxTextEdit7.Text );

       if cxCheckBox3.Checked then
       begin  ini.WriteString('Incremento', '3Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '3Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '3Desde', cxTextEdit8.Text );
       ini.WriteString('Incremento', '3Hasta', cxTextEdit10.Text );
       ini.WriteString('Incremento', '3Valor', cxTextEdit9.Text );

       if cxCheckBox4.Checked then
       begin  ini.WriteString('Incremento', '4Habilitar', 'si'); end
       else begin ini.WriteString('Incremento', '4Habilitar', 'no');;
       end;
       ini.WriteString('Incremento', '4Desde', cxTextEdit11.Text );
       ini.WriteString('Incremento', '4Hasta', cxTextEdit13.Text );
       ini.WriteString('Incremento', '4Valor', cxTextEdit12.Text );

       if cxCheckBox5.Checked then
       begin  ini.WriteString('Decremento', '1Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '1Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '1Valor', cxTextEdit14.Text );

       if cxCheckBox6.Checked then
       begin  ini.WriteString('Decremento', '2Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '2Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '2Valor', cxTextEdit15.Text );

       if cxCheckBox7.Checked then
       begin  ini.WriteString('Decremento', '3Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '3Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '3Valor', cxTextEdit16.Text );

       if cxCheckBox8.Checked then
       begin  ini.WriteString('Decremento', '4Habilitar', 'si'); end
       else begin ini.WriteString('Decremento', '4Habilitar', 'no');;
       end;
       ini.WriteString('Decremento', '4Valor', cxTextEdit17.Text );

       ini.WriteString('Iva', 'Iva', cxTextEdit6.Text );

       ini.WriteString('CambioMonedas', 'CambioMonedas', cxTextEdit18.Text );

       ini.Free;


       // Copiar los archivos excel a la carpeta
       if FileExists(RutaConDia+'\'+'Paquetes'+'.xls') then
       begin
         DeleteFile(RutaConDia+'\'+'Paquetes'+'.xls');
         CopyFile(PChar(Fmain.cxTextEdit37.Text), PChar(RutaConDia+'\'+'Paquetes'+'.xls') ,true);
       end
       else
       begin
         CopyFile(PChar(Fmain.cxTextEdit37.Text), PChar(RutaConDia+'\'+'Paquetes'+'.xls') ,true);
       end;

       HiloImportarPaquetes.Resume;

     end
     else
     begin
       HiloImportarPaquetes.Resume;
     end;
   end;
end;



{ ThreadImportarMateriales }

procedure ThreadImportarMateriales.Execute;
var
i:Integer;
Codigo: Double;
Material,Grupo: string;
Iva,IvaOriginal,Total_Con_Iva,Importe: Double;

ImporteS,IvaS,Total_Con_IvaS:string;
Iva1,Iva2,Iva3,Iva4, Total_Con_Iva1,Total_Con_Iva2,Total_Con_Iva3,Total_Con_Iva4:Double;

xls: TXlsFile;
row: integer;
XF: integer;
cell: TCellValue;

Min1,Min2,Min3,Min4:Double;
Max1,Max2,Max3,Max4:Double;
Inc1,Inc2,Inc3,Inc4:Double;
Dec1,Dec2,Dec3,Dec4:Double;
Imp1,Imp2,Imp3,Imp4:Double;
Checkbox1,Checkbox2,Checkbox3,Checkbox4:Boolean;
CambioMat:Double;
begin
  inherited;
  Sleep(100);
  CambioMat:=StrToFloat(Fmain.cxTextEdit18.Text);

  Min1:= StrTofloat(Fmain.cxTextEdit1.Text);
  Max1:= StrTofloat(Fmain.cxTextEdit2.Text);
  Inc1:= StrTofloat(Fmain.cxTextEdit3.Text);

  Min2:= StrTofloat(Fmain.cxTextEdit4.Text);
  Max2:= StrTofloat(Fmain.cxTextEdit5.Text);
  Inc2:= StrTofloat(Fmain.cxTextEdit7.Text);

  Min3:= StrTofloat(Fmain.cxTextEdit8.Text);
  Max3:= StrTofloat(Fmain.cxTextEdit10.Text);
  Inc3:= StrTofloat(Fmain.cxTextEdit9.Text);

  Min4:= StrTofloat(Fmain.cxTextEdit11.Text);
  Max4:= StrTofloat(Fmain.cxTextEdit13.Text);
  Inc4:= StrTofloat(Fmain.cxTextEdit12.Text);

  IvaOriginal:=StrToFloat(Fmain.cxtextedit6.text);
  Iva:=StrtoFloat (Fmain.cxtextedit6.text)/100;

  Checkbox1:=Fmain.cxCheckBox1.Checked;
  Checkbox2:=Fmain.cxCheckBox2.Checked;
  Checkbox3:=Fmain.cxCheckBox3.Checked;
  Checkbox4:=Fmain.cxCheckBox4.Checked;

  DmMateriales.QTruncateMateriales.Execute;
  DmMateriales.QTruncateMaterialesPesos.Execute;
  DmMateriales.QTruncateMaterialesDolares.Execute;

  xls := TXlsFile.Create(TPath.Combine(TPath.GetDocumentsPath, OrigenMateriales));
  CantRowsMat := xls.RowCount;
  for row := 2 to xls.RowCount do
  begin
    try
      XF := -1;
      cell := xls.GetCellValueIndexed(row, 1, XF);
      Codigo := cell.AsNumber;
      cell := xls.GetCellValueIndexed(row, 2, XF);
      Material :=cell.ToString;
      cell := xls.GetCellValueIndexed(row, 3, XF);
      Grupo := cell.ToString;
      cell := xls.GetCellValueIndexed(row, 4, XF);
      Importe := cell.AsNumber;
    except
      Continue;
    end;

    ImporteS:= FormatFloat('###,##0.00', Importe);
    Total_Con_Iva :=Importe * iva+Importe;
    Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva );
    IvaS:=FormatFloat('###,##0.00', Total_Con_Iva - importe);

    // insertando en la lista de materiales original .
    DMmateriales.QInsertarMateriales.ParamByName('CODIGO').Asfloat:=codigo;
    DMmateriales.QInsertarMateriales.ParamByName('MATERIAL').AsString:=Material;
    DMmateriales.QInsertarMateriales.ParamByName('GRUPO').AsString:=Grupo;
    DMmateriales.QInsertarMateriales.ParamByName('IMPORTE').AsString:=ImporteS;
    DMmateriales.QInsertarMateriales.ParamByName('IVA').AsString:=IvaS;
    DMmateriales.QInsertarMateriales.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
    DMmateriales.QInsertarMateriales.Execute;



    // Buscando valores de incremento y decremento
    if Checkbox1 then     // 1
    begin
      if (Importe >=Min1) and (Importe <=Max1) then
      begin
        Imp1 :=Importe *Inc1;
        ImporteS:= FormatFloat('###,##0.00', Imp1);
        Total_Con_Iva1:=Imp1 * IVA+Imp1;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva1 );
        Iva1:=Total_Con_Iva1 - imp1;
        IvaS:=FormatFloat('###,##0.00', Iva1);

            // insertando en la lista de pesos con incremento.
        DMmateriales.QInsertarMaterialesPesos.ParamByName('CODIGO').Asfloat:=codigo;
        DMmateriales.QInsertarMaterialesPesos.ParamByName('MATERIAL').AsString:=Material;
        DMmateriales.QInsertarMaterialesPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMmateriales.QInsertarMaterialesPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMmateriales.QInsertarMaterialesPesos.ParamByName('IVA').AsString:=IvaS;
        DMmateriales.QInsertarMaterialesPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMmateriales.QInsertarMaterialesPesos.ParamByName('NUMERO').AsFloat:=1;
        DMmateriales.QInsertarMaterialesPesos.Execute;

        Imp1 :=Imp1/CambioMat;
        ImporteS:= FormatFloat('###,##0.00', Imp1);
        Total_Con_Iva1:= Total_Con_Iva1/CambioMat;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva1);
        Iva1:= Total_Con_Iva1-Imp1;
        IvaS:=FormatFloat('###,##0.00', Iva1);


        // Insertando en la lista de Materiales Dolares
        DMmateriales.QInsertarMaterialesDolares.ParamByName('CODIGO').Asfloat:=codigo;
        DMmateriales.QInsertarMaterialesDolares.ParamByName('MATERIAL').AsString:=Material;
        DMmateriales.QInsertarMaterialesDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMmateriales.QInsertarMaterialesDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMmateriales.QInsertarMaterialesDolares.ParamByName('IVA').AsString:=IvaS;
        DMmateriales.QInsertarMaterialesDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMmateriales.QInsertarMaterialesDolares.ParamByName('CAMBIO').AsFloat:=CambioMat;
        DMmateriales.QInsertarMaterialesDolares.Execute;

      end;
    end;
    if Checkbox2 then     // 2
    begin
      if (Importe >=Min2) and (Importe <=Max2) then
      begin
        Imp2 :=Importe *Inc2;
        ImporteS:= FormatFloat('###,##0.00', Imp2);
        Total_Con_Iva2:=Imp2 * IVA+Imp2;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva2 );
        Iva2:=Total_Con_Iva2 - imp2;
        IvaS:=FormatFloat('###,##0.00', Iva2);

            // insertando en la lista de pesos con incremento.
        DMmateriales.QInsertarMaterialesPesos.ParamByName('CODIGO').Asfloat:=codigo;
        DMmateriales.QInsertarMaterialesPesos.ParamByName('MATERIAL').AsString:=Material;
        DMmateriales.QInsertarMaterialesPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMmateriales.QInsertarMaterialesPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMmateriales.QInsertarMaterialesPesos.ParamByName('IVA').AsString:=IvaS;
        DMmateriales.QInsertarMaterialesPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMmateriales.QInsertarMaterialesPesos.ParamByName('NUMERO').AsFloat:=2;
        DMmateriales.QInsertarMaterialesPesos.Execute;

        Imp2 :=Imp2/CambioMat;
        ImporteS:= FormatFloat('###,##0.00', Imp2);
        Total_Con_Iva2:= Total_Con_Iva2/CambioMat;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva2);
        Iva2:= Total_Con_Iva2-Imp2;
        IvaS:=FormatFloat('###,##0.00', Iva2);


        // Insertando en la lista de Materiales Dolares
        DMmateriales.QInsertarMaterialesDolares.ParamByName('CODIGO').Asfloat:=codigo;
        DMmateriales.QInsertarMaterialesDolares.ParamByName('MATERIAL').AsString:=Material;
        DMmateriales.QInsertarMaterialesDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMmateriales.QInsertarMaterialesDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMmateriales.QInsertarMaterialesDolares.ParamByName('IVA').AsString:=IvaS;
        DMmateriales.QInsertarMaterialesDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMmateriales.QInsertarMaterialesDolares.ParamByName('CAMBIO').AsFloat:=CambioMat;
        DMmateriales.QInsertarMaterialesDolares.Execute;

      end;
    end;
    if Checkbox3 then     // 3
    begin
      if (Importe >=Min3) and (Importe <=Max3) then
      begin
        Imp3 :=Importe *Inc3;
        ImporteS:= FormatFloat('###,##0.00', Imp3);
        Total_Con_Iva3:=Imp3 * IVA+Imp3;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva3 );
        Iva3:=Total_Con_Iva3 - imp3;
        IvaS:=FormatFloat('###,##0.00', Iva3);

            // insertando en la lista de pesos con incremento.
        DMmateriales.QInsertarMaterialesPesos.ParamByName('CODIGO').Asfloat:=codigo;
        DMmateriales.QInsertarMaterialesPesos.ParamByName('MATERIAL').AsString:=Material;
        DMmateriales.QInsertarMaterialesPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMmateriales.QInsertarMaterialesPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMmateriales.QInsertarMaterialesPesos.ParamByName('IVA').AsString:=IvaS;
        DMmateriales.QInsertarMaterialesPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMmateriales.QInsertarMaterialesPesos.ParamByName('NUMERO').AsFloat:=3;
        DMmateriales.QInsertarMaterialesPesos.Execute;

        Imp3 :=Imp3/CambioMat;
        ImporteS:= FormatFloat('###,##0.00', Imp3);
        Total_Con_Iva3:= Total_Con_Iva3/CambioMat;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva3);
        Iva3:= Total_Con_Iva3-Imp3;
        IvaS:=FormatFloat('###,##0.00', Iva3);


        // Insertando en la lista de Materiales Dolares
        DMmateriales.QInsertarMaterialesDolares.ParamByName('CODIGO').Asfloat:=codigo;
        DMmateriales.QInsertarMaterialesDolares.ParamByName('MATERIAL').AsString:=Material;
        DMmateriales.QInsertarMaterialesDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMmateriales.QInsertarMaterialesDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMmateriales.QInsertarMaterialesDolares.ParamByName('IVA').AsString:=IvaS;
        DMmateriales.QInsertarMaterialesDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMmateriales.QInsertarMaterialesDolares.ParamByName('CAMBIO').AsFloat:=CambioMat;
        DMmateriales.QInsertarMaterialesDolares.Execute;

      end;
    end;
    if Checkbox4 then     // 4
    begin
      if (Importe >=Min4) and (Importe <=Max4) then
      begin
        Imp4 :=Importe *Inc4;
        ImporteS:= FormatFloat('###,##0.00', Imp4);
        Total_Con_Iva4:=Imp4 * IVA+Imp4;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva4 );
        Iva4:=Total_Con_Iva4 - imp4 ;
        IvaS:=FormatFloat('###,##0.00', Iva4);

            // insertando en la lista de pesos con incremento.
        DMmateriales.QInsertarMaterialesPesos.ParamByName('CODIGO').Asfloat:=codigo;
        DMmateriales.QInsertarMaterialesPesos.ParamByName('MATERIAL').AsString:=Material;
        DMmateriales.QInsertarMaterialesPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMmateriales.QInsertarMaterialesPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMmateriales.QInsertarMaterialesPesos.ParamByName('IVA').AsString:=IvaS;
        DMmateriales.QInsertarMaterialesPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMmateriales.QInsertarMaterialesPesos.ParamByName('NUMERO').AsFloat:=4;
        DMmateriales.QInsertarMaterialesPesos.Execute;

        Imp4 :=Imp4/CambioMat;
        ImporteS:= FormatFloat('###,##0.00', Imp4);
        Total_Con_Iva4:= Total_Con_Iva4/CambioMat;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva4);
        Iva4:= Total_Con_Iva4-Imp4;
        IvaS:=FormatFloat('###,##0.00', Iva4);


        // Insertando en la lista de Materiales Dolares
        DMmateriales.QInsertarMaterialesDolares.ParamByName('CODIGO').Asfloat:=codigo;
        DMmateriales.QInsertarMaterialesDolares.ParamByName('MATERIAL').AsString:=Material;
        DMmateriales.QInsertarMaterialesDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMmateriales.QInsertarMaterialesDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMmateriales.QInsertarMaterialesDolares.ParamByName('IVA').AsString:=IvaS;
        DMmateriales.QInsertarMaterialesDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMmateriales.QInsertarMaterialesDolares.ParamByName('CAMBIO').AsFloat:=CambioMat;
        DMmateriales.QInsertarMaterialesDolares.Execute;

      end;
    end;

    Synchronize(IniciarProgressBar);

  end;

  xls.Free;
  DM1.QEstadoPorActualizar.Execute;
  Synchronize(ActualizarGrids);
end;

procedure ThreadImportarMateriales.IniciarProgressBar;
var
posicion:Integer;
begin
   Fmain.cxProgressBar1.Properties.Min:=0;
   Fmain.cxProgressBar1.Properties.Max:=CantRowsMat-1;
   Fmain.cxProgressBar1.Position:=Fmain.cxProgressBar1.Position+1;
   posicion:=Trunc(Fmain.cxProgressBar1.Position);
   Fmain.cxLabel2.Caption:=  IntToStr(Posicion)+ ' de ' +IntToStr(CantRowsMat-1);
end;

procedure ThreadImportarMateriales.ActualizarGrids;
begin
   DmMateriales.TablaMateriales.open;
   DmMateriales.TablaMateriales.Refresh;
   DmMateriales.TablaMaterialesPesos.open;
   DmMateriales.TablaMaterialesPesos.Refresh;
   DmMateriales.TablaMaterialesDolares.open;
   DmMateriales.TablaMaterialesDolares.Refresh;
end;

function ThreadImportarMateriales.StringToPAnsiChar(stringVar: string): PAnsiChar;
Var
  AnsString : AnsiString;
  InternalError : Boolean;
begin
  InternalError := false;
  Result := '';
  try
    if stringVar <> '' Then
    begin
       AnsString := AnsiString(StringVar);
       Result := PAnsiChar(PAnsiString(AnsString));
    end;
  Except
    InternalError := true;
  end;
  if InternalError or (String(Result) <> stringVar) then
  begin
    Raise Exception.Create('Conversion from string to PAnsiChar failed!');
  end;
end;


{ ThreadImportarMedicamentos }

procedure ThreadImportarMedicamentos.Execute;
var
i:Integer;
Codigo: Double;
Medicamento,Grupo: string;
Iva,IvaOriginal, Total_Con_Iva,Importe: Double;

ImporteS,IvaS,Total_Con_IvaS:string;
Iva1,Iva2,Iva3,Iva4, Total_Con_Iva1,Total_Con_Iva2,Total_Con_Iva3,Total_Con_Iva4:Double;

xls: TXlsFile;
row: integer;
XF: integer;
cell: TCellValue;

Min1,Min2,Min3,Min4:Double;
Max1,Max2,Max3,Max4:Double;
Inc1,Inc2,Inc3,Inc4:Double;
Dec1,Dec2,Dec3,Dec4:Double;
Imp1,Imp2,Imp3,Imp4:Double;
Checkbox1,Checkbox2,Checkbox3,Checkbox4:Boolean;
CambioMed:Double;
begin
  inherited;
  Sleep(100);
  CambioMed:=StrToFloat(Fmain.cxTextEdit18.Text);

  Min1:= StrTofloat(Fmain.cxTextEdit1.Text);
  Max1:= StrTofloat(Fmain.cxTextEdit2.Text);
  Inc1:= StrTofloat(Fmain.cxTextEdit3.Text);

  Min2:= StrTofloat(Fmain.cxTextEdit4.Text);
  Max2:= StrTofloat(Fmain.cxTextEdit5.Text);
  Inc2:= StrTofloat(Fmain.cxTextEdit7.Text);

  Min3:= StrTofloat(Fmain.cxTextEdit8.Text);
  Max3:= StrTofloat(Fmain.cxTextEdit10.Text);
  Inc3:= StrTofloat(Fmain.cxTextEdit9.Text);

  Min4:= StrTofloat(Fmain.cxTextEdit11.Text);
  Max4:= StrTofloat(Fmain.cxTextEdit13.Text);
  Inc4:= StrTofloat(Fmain.cxTextEdit12.Text);

  Checkbox1:=Fmain.cxCheckBox1.Checked;
  Checkbox2:=Fmain.cxCheckBox2.Checked;
  Checkbox3:=Fmain.cxCheckBox3.Checked;
  Checkbox4:=Fmain.cxCheckBox4.Checked;

  IvaOriginal:=StrToFloat(Fmain.cxtextedit6.text);
  Iva:=StrtoFloat (Fmain.cxtextedit6.text)/100;

  DMMedicamentos.QTruncateMedicamentos.Execute;
  DMMedicamentos.QTruncateMedicamentosPesos.Execute;
  DMMedicamentos.QTruncateMedicamentosDolares.Execute;

  xls := TXlsFile.Create(TPath.Combine(TPath.GetDocumentsPath, OrigenMedicamentos));
  CantRowsMed := xls.RowCount;
  for row := 2 to CantRowsMed do
  begin
    try
      XF := -1;
      cell := xls.GetCellValueIndexed(row, 1, XF);
      Codigo := cell.AsNumber;
      cell := xls.GetCellValueIndexed(row, 2, XF);
      Medicamento :=cell.ToString;
      cell := xls.GetCellValueIndexed(row, 3, XF);
      Grupo := cell.ToString;
      cell := xls.GetCellValueIndexed(row, 4, XF);
      Importe := cell.AsNumber;
    except
      Continue;
    end;

    ImporteS:= FormatFloat('###,##0.00', Importe);
    Total_Con_Iva :=Importe * iva+Importe;
    Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva );
    IvaS:=FormatFloat('###,##0.00', Total_Con_Iva - importe);

    // insertando en la lista de materiales original .
    DMMedicamentos.QInsertarMedicamentos.ParamByName('CODIGO').AsFloat:=codigo;
    DMMedicamentos.QInsertarMedicamentos.ParamByName('MEDICAMENTO').AsString:=Medicamento;
    DMMedicamentos.QInsertarMedicamentos.ParamByName('GRUPO').AsString:=Grupo;
    DMMedicamentos.QInsertarMedicamentos.ParamByName('IMPORTE').AsString:=ImporteS;
    DMMedicamentos.QInsertarMedicamentos.ParamByName('IVA').AsString:=IvaS;
    DMMedicamentos.QInsertarMedicamentos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
    DMMedicamentos.QInsertarMedicamentos.Execute;

    // Buscando valores de incremento y decremento
    if CheckBox1 then     // 1
    begin
      if (Importe >=Min1) and (Importe <=Max1) then
      begin
        Imp1 :=Importe *Inc1;
        ImporteS:= FormatFloat('###,##0.00', Imp1);
        Total_Con_Iva1:=Imp1 * IVA+Imp1;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva1 );
        Iva1:=Total_Con_Iva1 - imp1;
        IvaS:=FormatFloat('###,##0.00', Iva1);

        // insertando en la lista de pesos con incremento.
        DMMedicamentos.QInsertarMedicamentosPesos.ParamByName('CODIGO').Asfloat:=codigo;
        DMMedicamentos.QInsertarMedicamentosPesos.ParamByName('MEDICAMENTO').AsString:=Medicamento;
        DMMedicamentos.QInsertarMedicamentosPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMMedicamentos.QInsertarMedicamentosPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMMedicamentos.QInsertarMedicamentosPesos.ParamByName('IVA').AsString:=IvaS;
        DMMedicamentos.QInsertarMedicamentosPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMMedicamentos.QInsertarMedicamentosPesos.ParamByName('NUMERO').AsFloat:=1;
        DMMedicamentos.QInsertarMedicamentosPesos.Execute;

        Imp1 :=Imp1/CambioMed;
        ImporteS:= FormatFloat('###,##0.00', Imp1);
        Total_Con_Iva1:= Total_Con_Iva1/CambioMed;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva1);
        Iva1:= Total_Con_Iva1-Imp1;
        IvaS:=FormatFloat('###,##0.00', Iva1);

        // Insertando en la lista de Materiales Dolares
        DMMedicamentos.QInsertarMedicamentosDolares.ParamByName('CODIGO').Asfloat:=codigo;
        DMMedicamentos.QInsertarMedicamentosDolares.ParamByName('MEDICAMENTO').AsString:=Medicamento;
        DMMedicamentos.QInsertarMedicamentosDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMMedicamentos.QInsertarMedicamentosDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMMedicamentos.QInsertarMedicamentosDolares.ParamByName('IVA').AsString:=IvaS;
        DMMedicamentos.QInsertarMedicamentosDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMMedicamentos.QInsertarMedicamentosDolares.ParamByName('CAMBIO').AsFloat:=CambioMed;
        DMMedicamentos.QInsertarMedicamentosDolares.Execute;

      end;
    end;
    if CheckBox2 then     // 2
    begin
      if (Importe >=Min2) and (Importe <=Max2) then
      begin
        Imp2 :=Importe *Inc2;
        ImporteS:= FormatFloat('###,##0.00', Imp2);
        Total_Con_Iva2:=Imp2 * IVA+Imp2;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva2 );
        Iva2:=Total_Con_Iva2 - imp2;
        IvaS:=FormatFloat('###,##0.00', Iva2);

        // insertando en la lista de pesos con incremento.
        DMMedicamentos.QInsertarMedicamentosPesos.ParamByName('CODIGO').Asfloat:=codigo;
        DMMedicamentos.QInsertarMedicamentosPesos.ParamByName('MEDICAMENTO').AsString:=Medicamento;
        DMMedicamentos.QInsertarMedicamentosPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMMedicamentos.QInsertarMedicamentosPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMMedicamentos.QInsertarMedicamentosPesos.ParamByName('IVA').AsString:=IvaS;
        DMMedicamentos.QInsertarMedicamentosPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMMedicamentos.QInsertarMedicamentosPesos.ParamByName('NUMERO').AsFloat:=2;
        DMMedicamentos.QInsertarMedicamentosPesos.Execute;

        Imp2 :=Imp2/CambioMed;
        ImporteS:= FormatFloat('###,##0.00', Imp2);
        Total_Con_Iva2:= Total_Con_Iva2/CambioMed;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva2);
        Iva2:= Total_Con_Iva2-Imp2;
        IvaS:=FormatFloat('###,##0.00', Iva2);

        // Insertando en la lista de Materiales Dolares
        DMMedicamentos.QInsertarMedicamentosDolares.ParamByName('CODIGO').Asfloat:=codigo;
        DMMedicamentos.QInsertarMedicamentosDolares.ParamByName('MEDICAMENTO').AsString:=Medicamento;
        DMMedicamentos.QInsertarMedicamentosDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMMedicamentos.QInsertarMedicamentosDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMMedicamentos.QInsertarMedicamentosDolares.ParamByName('IVA').AsString:=IvaS;
        DMMedicamentos.QInsertarMedicamentosDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMMedicamentos.QInsertarMedicamentosDolares.ParamByName('CAMBIO').AsFloat:=CambioMed;
        DMMedicamentos.QInsertarMedicamentosDolares.Execute;
      end;
    end;
    if CheckBox3 then     // 3
    begin
      if (Importe >=Min3) and (Importe <=Max3) then
      begin
        Imp3 :=Importe *Inc3;
        ImporteS:= FormatFloat('###,##0.00', Imp3);
        Total_Con_Iva3:=Imp3 * IVA+Imp3;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva3 );
        Iva3:=Total_Con_Iva3 - imp3;
        IvaS:=FormatFloat('###,##0.00', Iva3);

        // insertando en la lista de pesos con incremento.
        DMMedicamentos.QInsertarMedicamentosPesos.ParamByName('CODIGO').Asfloat:=codigo;
        DMMedicamentos.QInsertarMedicamentosPesos.ParamByName('MEDICAMENTO').AsString:=Medicamento;
        DMMedicamentos.QInsertarMedicamentosPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMMedicamentos.QInsertarMedicamentosPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMMedicamentos.QInsertarMedicamentosPesos.ParamByName('IVA').AsString:=IvaS;
        DMMedicamentos.QInsertarMedicamentosPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMMedicamentos.QInsertarMedicamentosPesos.ParamByName('NUMERO').AsFloat:=3;
        DMMedicamentos.QInsertarMedicamentosPesos.Execute;

        Imp3 :=Imp3/CambioMed;
        ImporteS:= FormatFloat('###,##0.00', Imp3);
        Total_Con_Iva3:= Total_Con_Iva3/CambioMed;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva3);
        Iva3:= Total_Con_Iva3-Imp3;
        IvaS:=FormatFloat('###,##0.00', Iva3);

        // Insertando en la lista de Materiales Dolares
        DMMedicamentos.QInsertarMedicamentosDolares.ParamByName('CODIGO').Asfloat:=codigo;
        DMMedicamentos.QInsertarMedicamentosDolares.ParamByName('MEDICAMENTO').AsString:=Medicamento;
        DMMedicamentos.QInsertarMedicamentosDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMMedicamentos.QInsertarMedicamentosDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMMedicamentos.QInsertarMedicamentosDolares.ParamByName('IVA').AsString:=IvaS;
        DMMedicamentos.QInsertarMedicamentosDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMMedicamentos.QInsertarMedicamentosDolares.ParamByName('CAMBIO').AsFloat:=CambioMed;
        DMMedicamentos.QInsertarMedicamentosDolares.Execute;

      end;
    end;
    if CheckBox4 then     // 4
    begin
      if (Importe >=Min4) and (Importe <=Max4) then
      begin
        Imp4 :=Importe *Inc4;
        ImporteS:= FormatFloat('###,##0.00', Imp4);
        Total_Con_Iva4:=Imp4 * IVA+Imp4;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva4 );
        Iva4:=Total_Con_Iva4 - imp4;
        IvaS:=FormatFloat('###,##0.00', Iva4);

        // insertando en la lista de pesos con incremento.
        DMMedicamentos.QInsertarMedicamentosPesos.ParamByName('CODIGO').Asfloat:=codigo;
        DMMedicamentos.QInsertarMedicamentosPesos.ParamByName('MEDICAMENTO').AsString:=Medicamento;
        DMMedicamentos.QInsertarMedicamentosPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMMedicamentos.QInsertarMedicamentosPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMMedicamentos.QInsertarMedicamentosPesos.ParamByName('IVA').AsString:=IvaS;
        DMMedicamentos.QInsertarMedicamentosPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMMedicamentos.QInsertarMedicamentosPesos.ParamByName('NUMERO').AsFloat:=4;
        DMMedicamentos.QInsertarMedicamentosPesos.Execute;

        Imp4 :=Imp4/CambioMed;
        ImporteS:= FormatFloat('###,##0.00', Imp4);
        Total_Con_Iva4:= Total_Con_Iva4/CambioMed;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva4);
        Iva4:= Total_Con_Iva4-Imp4;
        IvaS:=FormatFloat('###,##0.00', Iva4);

        // Insertando en la lista de Materiales Dolares
        DMMedicamentos.QInsertarMedicamentosDolares.ParamByName('CODIGO').Asfloat:=codigo;
        DMMedicamentos.QInsertarMedicamentosDolares.ParamByName('MEDICAMENTO').AsString:=Medicamento;
        DMMedicamentos.QInsertarMedicamentosDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMMedicamentos.QInsertarMedicamentosDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMMedicamentos.QInsertarMedicamentosDolares.ParamByName('IVA').AsString:=IvaS;
        DMMedicamentos.QInsertarMedicamentosDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMMedicamentos.QInsertarMedicamentosDolares.ParamByName('CAMBIO').AsFloat:=CambioMed;
        DMMedicamentos.QInsertarMedicamentosDolares.Execute;

      end;
    end;

    Synchronize(IniciarProgressBar);
  end;

  xls.Free;
  DM1.QEstadoPorActualizar.Execute;
  Synchronize(ActualizarGrids);
end;

procedure ThreadImportarMedicamentos.IniciarProgressBar;
var
posicion:Integer;
begin
   Fmain.cxProgressBar2.Properties.Min:=0;
   Fmain.cxProgressBar2.Properties.Max:=CantRowsMed-1;
   Fmain.cxProgressBar2.Position:=Fmain.cxProgressBar2.Position+1;
   posicion:=Trunc(Fmain.cxProgressBar2.Position);
   Fmain.cxLabel4.Caption:=  IntToStr(Posicion)+ ' de ' +IntToStr(CantRowsMed-1);
end;

procedure ThreadImportarMedicamentos.ActualizarGrids;
begin
   DMMedicamentos.TablaMedicamentos.open;
   DMMedicamentos.TablaMedicamentos.Refresh;
   DMMedicamentos.TablaMedicamentosPesos.open;
   DMMedicamentos.TablaMedicamentosPesos.Refresh;
   DMMedicamentos.TablaMedicamentosDolares.open;
   DMMedicamentos.TablaMedicamentosDolares.Refresh;
end;

function ThreadImportarMedicamentos.StringToPAnsiChar(stringVar : string) : PAnsiChar;
Var
  AnsString : AnsiString;
  InternalError : Boolean;
begin
  InternalError := false;
  Result := '';
  try
    if stringVar <> '' Then
    begin
       AnsString := AnsiString(StringVar);
       Result := PAnsiChar(PAnsiString(AnsString));
    end;
  Except
    InternalError := true;
  end;
  if InternalError or (String(Result) <> stringVar) then
  begin
    Raise Exception.Create('Conversion from string to PAnsiChar failed!');
  end;
end;


{ ThreadServicioDeImagenologia }

procedure ThreadImportarServicioDeImagenologia.Execute;
var
i:Integer;
Codigo: Double;
Descripcion,Grupo: string;
Iva,IvaOriginal, Total_Con_Iva,Importe: Double;

ImporteS,IvaS,Total_Con_IvaS:string;
Iva1,Iva2,Iva3,Iva4, Total_Con_Iva1,Total_Con_Iva2,Total_Con_Iva3,Total_Con_Iva4:Double;

xls: TXlsFile;
row: integer;
XF: integer;
cell: TCellValue;

Min1,Min2,Min3,Min4:Double;
Max1,Max2,Max3,Max4:Double;
Inc1,Inc2,Inc3,Inc4:Double;
Dec1,Dec2,Dec3,Dec4:Double;
Imp1,Imp2,Imp3,Imp4:Double;
Checkbox1,Checkbox2,Checkbox3,Checkbox4:Boolean;
CambioServImg:Double;
begin
  inherited;
  Sleep(100);
  CambioServImg:=StrToFloat(Fmain.cxTextEdit18.Text);

  Min1:= StrTofloat(Fmain.cxTextEdit1.Text);
  Max1:= StrTofloat(Fmain.cxTextEdit2.Text);
  Inc1:= StrTofloat(Fmain.cxTextEdit3.Text);

  Min2:= StrTofloat(Fmain.cxTextEdit4.Text);
  Max2:= StrTofloat(Fmain.cxTextEdit5.Text);
  Inc2:= StrTofloat(Fmain.cxTextEdit7.Text);

  Min3:= StrTofloat(Fmain.cxTextEdit8.Text);
  Max3:= StrTofloat(Fmain.cxTextEdit10.Text);
  Inc3:= StrTofloat(Fmain.cxTextEdit9.Text);

  Min4:= StrTofloat(Fmain.cxTextEdit11.Text);
  Max4:= StrTofloat(Fmain.cxTextEdit13.Text);
  Inc4:= StrTofloat(Fmain.cxTextEdit12.Text);

  Checkbox1:=Fmain.cxCheckBox1.Checked;
  Checkbox2:=Fmain.cxCheckBox2.Checked;
  Checkbox3:=Fmain.cxCheckBox3.Checked;
  Checkbox4:=Fmain.cxCheckBox4.Checked;

  IvaOriginal:=StrToFloat(Fmain.cxtextedit6.text);
  Iva:=StrtoFloat (Fmain.cxtextedit6.text)/100;

  DMServImg.QTruncateServImg.Execute;
  DMServImg.QTruncateServImgPesos.Execute;
  DMServImg.QTruncateServImgDolares.Execute;

  xls := TXlsFile.Create(TPath.Combine(TPath.GetDocumentsPath, OrigenServImg));
  CantRowsServImag := xls.RowCount;
  for row := 2 to xls.RowCount do
  begin
    try
      XF := -1;
      cell := xls.GetCellValueIndexed(row, 1, XF);
      Codigo := cell.AsNumber;
      cell := xls.GetCellValueIndexed(row, 2, XF);
      Descripcion :=cell.ToString;
      cell := xls.GetCellValueIndexed(row, 3, XF);
      Grupo := cell.ToString;
      cell := xls.GetCellValueIndexed(row, 4, XF);
      Importe := cell.AsNumber;
    except
      Continue;
    end;

    ImporteS:= FormatFloat('###,##0.00', Importe);
    Total_Con_Iva :=Importe * iva+Importe;
    Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva );
    IvaS:=FormatFloat('###,##0.00', Total_Con_Iva - importe);

    // insertando en la lista de materiales original .
    DMServImg.QInsertarServImg.ParamByName('CODIGO').AsFloat:=codigo;
    DMServImg.QInsertarServImg.ParamByName('DESCRIPCION').AsString:=Descripcion;
    DMServImg.QInsertarServImg.ParamByName('GRUPO').AsString:=Grupo;
    DMServImg.QInsertarServImg.ParamByName('IMPORTE').AsString:=ImporteS;
    DMServImg.QInsertarServImg.ParamByName('IVA').AsString:=IvaS;
    DMServImg.QInsertarServImg.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
    DMServImg.QInsertarServImg.Execute;



    // Buscando valores de incremento y decremento
    if CheckBox1 then     // 1
    begin
      if (Importe >=Min1) and (Importe <=Max1) then
      begin
        Imp1 :=Importe *Inc1;
        ImporteS:= FormatFloat('###,##0.00', Imp1);
        Total_Con_Iva1:=Imp1 * IVA+Imp1;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva1 );
        Iva1:=Total_Con_Iva1 - imp1;
        IvaS:=FormatFloat('###,##0.00', Iva1);

        // insertando en la lista de pesos con incremento.
        DMServImg.QInsertarServImgPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMServImg.QInsertarServImgPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMServImg.QInsertarServImgPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMServImg.QInsertarServImgPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMServImg.QInsertarServImgPesos.ParamByName('IVA').AsString:=IvaS;
        DMServImg.QInsertarServImgPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMServImg.QInsertarServImgPesos.ParamByName('NUMERO').AsFloat:=1;
        DMServImg.QInsertarServImgPesos.Execute;

        Imp1 :=Imp1/CambioServImg;
        ImporteS:= FormatFloat('###,##0.00', Imp1);
        Total_Con_Iva1:= Total_Con_Iva1/CambioServImg;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva1);
        Iva1:= Total_Con_Iva1-Imp1;
        IvaS:=FormatFloat('###,##0.00', Iva1);

        // Insertando en la lista de Materiales Dolares
        DMServImg.QInsertarServImgDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMServImg.QInsertarServImgDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMServImg.QInsertarServImgDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMServImg.QInsertarServImgDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMServImg.QInsertarServImgDolares.ParamByName('IVA').AsString:=IvaS;
        DMServImg.QInsertarServImgDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMServImg.QInsertarServImgDolares.ParamByName('CAMBIO').AsFloat:=CambioServImg;
        DMServImg.QInsertarServImgDolares.Execute;

      end;
    end;
    if CheckBox2 then     // 2
    begin
      if (Importe >=Min2) and (Importe <=Max2) then
      begin
        Imp2 :=Importe *Inc2;
        ImporteS:= FormatFloat('###,##0.00', Imp2);
        Total_Con_Iva2:=Imp2 * IVA+Imp2;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva2 );
        Iva2:=Total_Con_Iva2 - imp2;
        IvaS:=FormatFloat('###,##0.00', Iva2);

        // insertando en la lista de pesos con incremento.
        DMServImg.QInsertarServImgPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMServImg.QInsertarServImgPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMServImg.QInsertarServImgPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMServImg.QInsertarServImgPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMServImg.QInsertarServImgPesos.ParamByName('IVA').AsString:=IvaS;
        DMServImg.QInsertarServImgPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMServImg.QInsertarServImgPesos.ParamByName('NUMERO').AsFloat:=2;
        DMServImg.QInsertarServImgPesos.Execute;

        Imp2 :=Imp2/CambioServImg;
        ImporteS:= FormatFloat('###,##0.00', Imp2);
        Total_Con_Iva2:= Total_Con_Iva2/CambioServImg;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva2);
        Iva2:= Total_Con_Iva2-Imp2;
        IvaS:=FormatFloat('###,##0.00', Iva2);

        // Insertando en la lista de Materiales Dolares
        DMServImg.QInsertarServImgDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMServImg.QInsertarServImgDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMServImg.QInsertarServImgDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMServImg.QInsertarServImgDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMServImg.QInsertarServImgDolares.ParamByName('IVA').AsString:=IvaS;
        DMServImg.QInsertarServImgDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMServImg.QInsertarServImgDolares.ParamByName('CAMBIO').AsFloat:=CambioServImg;
        DMServImg.QInsertarServImgDolares.Execute;
      end;
    end;
    if CheckBox3 then     // 3
    begin
      if (Importe >=Min3) and (Importe <=Max3) then
      begin
        Imp3 :=Importe *Inc3;
        ImporteS:= FormatFloat('###,##0.00', Imp3);
        Total_Con_Iva3:=Imp3 * IVA+Imp3;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva3);
        Iva3:=Total_Con_Iva3 - imp3;
        IvaS:=FormatFloat('###,##0.00', Iva3);

        // insertando en la lista de pesos con incremento.
        DMServImg.QInsertarServImgPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMServImg.QInsertarServImgPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMServImg.QInsertarServImgPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMServImg.QInsertarServImgPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMServImg.QInsertarServImgPesos.ParamByName('IVA').AsString:=IvaS;
        DMServImg.QInsertarServImgPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMServImg.QInsertarServImgPesos.ParamByName('NUMERO').AsFloat:=3;
        DMServImg.QInsertarServImgPesos.Execute;

        Imp3 :=Imp3/CambioServImg;
        ImporteS:= FormatFloat('###,##0.00', Imp3);
        Total_Con_Iva3:= Total_Con_Iva3/CambioServImg;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva3);
        Iva3:= Total_Con_Iva3-Imp3;
        IvaS:=FormatFloat('###,##0.00', Iva3);

        // Insertando en la lista de Materiales Dolares
        DMServImg.QInsertarServImgDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMServImg.QInsertarServImgDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMServImg.QInsertarServImgDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMServImg.QInsertarServImgDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMServImg.QInsertarServImgDolares.ParamByName('IVA').AsString:=IvaS;
        DMServImg.QInsertarServImgDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMServImg.QInsertarServImgDolares.ParamByName('CAMBIO').AsFloat:=CambioServImg;
        DMServImg.QInsertarServImgDolares.Execute;

      end;
    end;
    if CheckBox4 then     // 4
    begin
      if (Importe >=Min4) and (Importe <=Max4) then
      begin
        Imp4 :=Importe *Inc4;
        ImporteS:= FormatFloat('###,##0.00', Imp4);
        Total_Con_Iva4:=Imp4 * IVA+Imp4;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva4);
        Iva4:=Total_Con_Iva4 - imp4;
        IvaS:=FormatFloat('###,##0.00', Iva4);

        // insertando en la lista de pesos con incremento.
        DMServImg.QInsertarServImgPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMServImg.QInsertarServImgPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMServImg.QInsertarServImgPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMServImg.QInsertarServImgPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMServImg.QInsertarServImgPesos.ParamByName('IVA').AsString:=IvaS;
        DMServImg.QInsertarServImgPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMServImg.QInsertarServImgPesos.ParamByName('NUMERO').AsFloat:=4;
        DMServImg.QInsertarServImgPesos.Execute;

        Imp4 :=Imp4/CambioServImg;
        ImporteS:= FormatFloat('###,##0.00', Imp4);
        Total_Con_Iva4:= Total_Con_Iva4/CambioServImg;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva4);
        Iva4:= Total_Con_Iva4-Imp4;
        IvaS:=FormatFloat('###,##0.00', Iva4);

        // Insertando en la lista de Materiales Dolares
        DMServImg.QInsertarServImgDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMServImg.QInsertarServImgDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMServImg.QInsertarServImgDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMServImg.QInsertarServImgDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMServImg.QInsertarServImgDolares.ParamByName('IVA').AsString:=IvaS;
        DMServImg.QInsertarServImgDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMServImg.QInsertarServImgDolares.ParamByName('CAMBIO').AsFloat:=CambioServImg;
        DMServImg.QInsertarServImgDolares.Execute;
      end;
    end;

    Synchronize(IniciarProgressBar);
  end;

  xls.Free;
  DM1.QEstadoPorActualizar.Execute;
  Synchronize(ActualizarGrids);
end;

procedure ThreadImportarServicioDeImagenologia.IniciarProgressBar;
var
posicion:Integer;
begin
   Fmain.cxProgressBar3.Properties.Min:=0;
   Fmain.cxProgressBar3.Properties.Max:=CantRowsServImag-1;
   Fmain.cxProgressBar3.Position:=Fmain.cxProgressBar3.Position+1;
   posicion:=Trunc(Fmain.cxProgressBar3.Position);
   Fmain.cxLabel48.Caption:=  IntToStr(Posicion)+ ' de ' +IntToStr(CantRowsServImag-1);
end;

procedure ThreadImportarServicioDeImagenologia.ActualizarGrids;
begin
   DMServImg.TablaServImg.open;
   DMServImg.TablaServImg.Refresh;
   DMServImg.TablaServImgPesos.open;
   DMServImg.TablaServImgPesos.Refresh;
   DMServImg.TablaServImgDolares.open;
   DMServImg.TablaServImgDolares.Refresh;
end;

function ThreadImportarServicioDeImagenologia.StringToPAnsiChar(stringVar: string): PAnsiChar;
var
  AnsString : AnsiString;
  InternalError : Boolean;
begin
  InternalError := false;
  Result := '';
  try
    if stringVar <> '' Then
    begin
       AnsString := AnsiString(StringVar);
       Result := PAnsiChar(PAnsiString(AnsString));
    end;
  Except
    InternalError := true;
  end;
  if InternalError or (String(Result) <> stringVar) then
  begin
    Raise Exception.Create('Conversion from string to PAnsiChar failed!');
  end;
end;


{ ThreadServicioDeHospital }

procedure ThreadImportarServicioDeHospital.Execute;
var
i:Integer;
Codigo: Double;
Descripcion,Grupo: string;
Iva,IvaOriginal, Total_Con_Iva,Importe: Double;

ImporteS,IvaS,Total_Con_IvaS:string;
Iva1,Iva2,Iva3,Iva4, Total_Con_Iva1,Total_Con_Iva2,Total_Con_Iva3,Total_Con_Iva4:Double;

xls: TXlsFile;
row: integer;
XF: integer;
cell: TCellValue;

Min1,Min2,Min3,Min4:Double;
Max1,Max2,Max3,Max4:Double;
Inc1,Inc2,Inc3,Inc4:Double;
Dec1,Dec2,Dec3,Dec4:Double;
Imp1,Imp2,Imp3,Imp4:Double;
Checkbox1,Checkbox2,Checkbox3,Checkbox4:Boolean;
CambioServHosp:Double;
begin
  inherited;
  Sleep(100);

  CambioServHosp:=StrToFloat(Fmain.cxTextEdit18.Text);

  Min1:= StrTofloat(Fmain.cxTextEdit1.Text);
  Max1:= StrTofloat(Fmain.cxTextEdit2.Text);
  Inc1:= StrTofloat(Fmain.cxTextEdit3.Text);

  Min2:= StrTofloat(Fmain.cxTextEdit4.Text);
  Max2:= StrTofloat(Fmain.cxTextEdit5.Text);
  Inc2:= StrTofloat(Fmain.cxTextEdit7.Text);

  Min3:= StrTofloat(Fmain.cxTextEdit8.Text);
  Max3:= StrTofloat(Fmain.cxTextEdit10.Text);
  Inc3:= StrTofloat(Fmain.cxTextEdit9.Text);

  Min4:= StrTofloat(Fmain.cxTextEdit11.Text);
  Max4:= StrTofloat(Fmain.cxTextEdit13.Text);
  Inc4:= StrTofloat(Fmain.cxTextEdit12.Text);

  Checkbox1:=Fmain.cxCheckBox1.Checked;
  Checkbox2:=Fmain.cxCheckBox2.Checked;
  Checkbox3:=Fmain.cxCheckBox3.Checked;
  Checkbox4:=Fmain.cxCheckBox4.Checked;

  IvaOriginal:=StrToFloat(Fmain.cxtextedit6.text);
  Iva:=StrtoFloat (Fmain.cxtextedit6.text)/100;

  DMServHosp.QTruncateServHosp.Execute;
  DMServHosp.QTruncateServHospPesos.Execute;
  DMServHosp.QTruncateServHospDolares.Execute;

  xls := TXlsFile.Create(TPath.Combine(TPath.GetDocumentsPath, OrigenServHosp));
  CantRowsServHosp := xls.RowCount;
  for row := 2 to CantRowsServHosp do
  begin
    try
      XF := -1;
      cell := xls.GetCellValueIndexed(row, 1, XF);
      Codigo := cell.AsNumber;
      cell := xls.GetCellValueIndexed(row, 2, XF);
      Descripcion :=cell.ToString;
      cell := xls.GetCellValueIndexed(row, 3, XF);
      Grupo := cell.ToString;
      cell := xls.GetCellValueIndexed(row, 4, XF);
      Importe := cell.AsNumber;

    except
      Continue;
    end;

    ImporteS:= FormatFloat('###,##0.00', Importe);
    Total_Con_Iva :=Importe * iva+Importe;
    Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva );
    IvaS:=FormatFloat('###,##0.00', Total_Con_Iva - importe);

    // insertando en la lista de materiales original .
    DMServHosp.QInsertarServHosp.ParamByName('CODIGO').AsFloat:=codigo;
    DMServHosp.QInsertarServHosp.ParamByName('DESCRIPCION').AsString:=Descripcion;
    DMServHosp.QInsertarServHosp.ParamByName('GRUPO').AsString:=Grupo;
    DMServHosp.QInsertarServHosp.ParamByName('IMPORTE').AsString:=ImporteS;
    DMServHosp.QInsertarServHosp.ParamByName('IVA').AsString:=IvaS;
    DMServHosp.QInsertarServHosp.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
    DMServHosp.QInsertarServHosp.Execute;

    // insertando en la lista de pesos con incremento.
    DMServHosp.QInsertarServHospPesos.ParamByName('CODIGO').AsFloat:=codigo;
    DMServHosp.QInsertarServHospPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
    DMServHosp.QInsertarServHospPesos.ParamByName('GRUPO').AsString:=Grupo;

    // Buscando valores de incremento y decremento
    if CheckBox1 then     // 1
    begin
      if (Importe >=Min1) and (Importe <=Max1) then
      begin
        Imp1 :=Importe *Inc1;
        ImporteS:= FormatFloat('###,##0.00', Imp1);
        Total_Con_Iva1:=Imp1 * IVA+Imp1;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva1 );
        Iva1:=Total_Con_Iva1 - imp1;
        IvaS:=FormatFloat('###,##0.00', Iva1);

        // insertando en la lista de pesos con incremento.
        DMServHosp.QInsertarServHospPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMServHosp.QInsertarServHospPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMServHosp.QInsertarServHospPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMServHosp.QInsertarServHospPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMServHosp.QInsertarServHospPesos.ParamByName('IVA').AsString:=IvaS;
        DMServHosp.QInsertarServHospPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMServHosp.QInsertarServHospPesos.ParamByName('NUMERO').AsFloat:=1;
        DMServHosp.QInsertarServHospPesos.Execute;

        Imp1 :=Imp1/CambioServHosp;
        ImporteS:= FormatFloat('###,##0.00', Imp1);
        Total_Con_Iva1:= Total_Con_Iva1/CambioServHosp;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva1);
        Iva1:= Total_Con_Iva1-Imp1;
        IvaS:=FormatFloat('###,##0.00', Iva1);

        // Insertando en la lista de Materiales Dolares
        DMServHosp.QInsertarServHospDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMServHosp.QInsertarServHospDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMServHosp.QInsertarServHospDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMServHosp.QInsertarServHospDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMServHosp.QInsertarServHospDolares.ParamByName('IVA').AsString:=IvaS;
        DMServHosp.QInsertarServHospDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMServHosp.QInsertarServHospDolares.ParamByName('CAMBIO').AsFloat:=CambioServHosp;
        DMServHosp.QInsertarServHospDolares.Execute;

      end;
    end;
    if CheckBox2 then     // 2
    begin
      if (Importe >=Min2) and (Importe <=Max2) then
      begin
        Imp2 :=Importe *Inc2;
        ImporteS:= FormatFloat('###,##0.00', Imp2);
        Total_Con_Iva2:=Imp2 * IVA+Imp2;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva2 );
        Iva2:=Total_Con_Iva2 - imp2;
        IvaS:=FormatFloat('###,##0.00', Iva2);

        // insertando en la lista de pesos con incremento.
        DMServHosp.QInsertarServHospPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMServHosp.QInsertarServHospPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMServHosp.QInsertarServHospPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMServHosp.QInsertarServHospPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMServHosp.QInsertarServHospPesos.ParamByName('IVA').AsString:=IvaS;
        DMServHosp.QInsertarServHospPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMServHosp.QInsertarServHospPesos.ParamByName('NUMERO').AsFloat:=2;
        DMServHosp.QInsertarServHospPesos.Execute;

        Imp2 :=Imp2/CambioServHosp;
        ImporteS:= FormatFloat('###,##0.00', Imp2);
        Total_Con_Iva2:= Total_Con_Iva2/CambioServHosp;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva2);
        Iva2:= Total_Con_Iva2-Imp2;
        IvaS:=FormatFloat('###,##0.00', Iva2);

        // Insertando en la lista de Materiales Dolares
        DMServHosp.QInsertarServHospDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMServHosp.QInsertarServHospDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMServHosp.QInsertarServHospDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMServHosp.QInsertarServHospDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMServHosp.QInsertarServHospDolares.ParamByName('IVA').AsString:=IvaS;
        DMServHosp.QInsertarServHospDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMServHosp.QInsertarServHospDolares.ParamByName('CAMBIO').AsFloat:=CambioServHosp;
        DMServHosp.QInsertarServHospDolares.Execute;
      end;
    end;
    if CheckBox3 then     // 3
    begin
      if (Importe >=Min3) and (Importe <=Max3) then
      begin
        Imp3 :=Importe *Inc3;
        ImporteS:= FormatFloat('###,##0.00', Imp3);
        Total_Con_Iva3:=Imp3 * IVA+Imp3;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva3 );
        Iva3:=Total_Con_Iva3 - imp3;
        IvaS:=FormatFloat('###,##0.00', Iva3);

        // insertando en la lista de pesos con incremento.
        DMServHosp.QInsertarServHospPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMServHosp.QInsertarServHospPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMServHosp.QInsertarServHospPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMServHosp.QInsertarServHospPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMServHosp.QInsertarServHospPesos.ParamByName('IVA').AsString:=IvaS;
        DMServHosp.QInsertarServHospPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMServHosp.QInsertarServHospPesos.ParamByName('NUMERO').AsFloat:=3;
        DMServHosp.QInsertarServHospPesos.Execute;

        Imp3 :=Imp3/CambioServHosp;
        ImporteS:= FormatFloat('###,##0.00', Imp3);
        Total_Con_Iva3:= Total_Con_Iva3/CambioServHosp;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva3);
        Iva3:= Total_Con_Iva3-Imp3;
        IvaS:=FormatFloat('###,##0.00', Iva3);

        // Insertando en la lista de Materiales Dolares
        DMServHosp.QInsertarServHospDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMServHosp.QInsertarServHospDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMServHosp.QInsertarServHospDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMServHosp.QInsertarServHospDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMServHosp.QInsertarServHospDolares.ParamByName('IVA').AsString:=IvaS;
        DMServHosp.QInsertarServHospDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMServHosp.QInsertarServHospDolares.ParamByName('CAMBIO').AsFloat:=CambioServHosp;
        DMServHosp.QInsertarServHospDolares.Execute;

      end;
    end;
    if CheckBox4 then     // 4
    begin
      if (Importe >=Min4) and (Importe <=Max4) then
      begin
        Imp4 :=Importe *Inc4;
        ImporteS:= FormatFloat('###,##0.00', Imp4);
        Total_Con_Iva4:=Imp4 * IVA+Imp4;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva4 );
        Iva4:=Total_Con_Iva4 - imp4;
        IvaS:=FormatFloat('###,##0.00', Iva4);

        // insertando en la lista de pesos con incremento.
        DMServHosp.QInsertarServHospPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMServHosp.QInsertarServHospPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMServHosp.QInsertarServHospPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMServHosp.QInsertarServHospPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMServHosp.QInsertarServHospPesos.ParamByName('IVA').AsString:=IvaS;
        DMServHosp.QInsertarServHospPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMServHosp.QInsertarServHospPesos.ParamByName('NUMERO').AsFloat:=4;
        DMServHosp.QInsertarServHospPesos.Execute;

        Imp4 :=Imp4/CambioServHosp;
        ImporteS:= FormatFloat('###,##0.00', Imp4);
        Total_Con_Iva1:= Total_Con_Iva4/CambioServHosp;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva4);
        Iva4:= Total_Con_Iva4-Imp4;
        IvaS:=FormatFloat('###,##0.00', Iva4);

        // Insertando en la lista de Materiales Dolares
        DMServHosp.QInsertarServHospDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMServHosp.QInsertarServHospDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMServHosp.QInsertarServHospDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMServHosp.QInsertarServHospDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMServHosp.QInsertarServHospDolares.ParamByName('IVA').AsString:=IvaS;
        DMServHosp.QInsertarServHospDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMServHosp.QInsertarServHospDolares.ParamByName('CAMBIO').AsFloat:=CambioServHosp;
        DMServHosp.QInsertarServHospDolares.Execute;

      end;
    end;

    Synchronize(IniciarProgressBar);
  end;

  xls.Free;
  DM1.QEstadoPorActualizar.Execute;
  Synchronize(ActualizarGrids);
end;

procedure ThreadImportarServicioDeHospital.IniciarProgressBar;
var
posicion:Integer;
begin
   Fmain.cxProgressBar4.Properties.Min:=0;
   Fmain.cxProgressBar4.Properties.Max:=CantRowsServHosp-1;
   Fmain.cxProgressBar4.Position:=Fmain.cxProgressBar4.Position+1;
   posicion:=Trunc(Fmain.cxProgressBar4.Position);
   Fmain.cxLabel1.Caption:=  IntToStr(Posicion)+ ' de ' +IntToStr(CantRowsServHosp-1);
end;

procedure ThreadImportarServicioDeHospital.ActualizarGrids;
begin
  DMServHosp.TablaServHosp.open;
  DMServHosp.TablaServHosp.Refresh;
  DMServHosp.TablaServHospPesos.open;
  DMServHosp.TablaServHospPesos.Refresh;
  DMServHosp.TablaServHospDolares.open;
  DMServHosp.TablaServHospDolares.Refresh;
end;

function ThreadImportarServicioDeHospital.StringToPAnsiChar(stringVar: string): PAnsiChar;
var
  AnsString : AnsiString;
  InternalError : Boolean;
begin
  InternalError := false;
  Result := '';
  try
    if stringVar <> '' Then
    begin
       AnsString := AnsiString(StringVar);
       Result := PAnsiChar(PAnsiString(AnsString));
    end;
  Except
    InternalError := true;
  end;
  if InternalError or (String(Result) <> stringVar) then
  begin
    Raise Exception.Create('Conversion from string to PAnsiChar failed!');
  end;
end;


{ ThreadImportarEquipoMedico }

procedure ThreadImportarEquipoMedico.Execute;
var
i:Integer;
Codigo: Double;
Descripcion,Grupo: string;
Iva,IvaOriginal, Total_Con_Iva,Importe: Double;

ImporteS,IvaS,Total_Con_IvaS:string;
Iva1,Iva2,Iva3,Iva4, Total_Con_Iva1,Total_Con_Iva2,Total_Con_Iva3,Total_Con_Iva4:Double;

xls: TXlsFile;
row: integer;
XF: integer;
cell: TCellValue;

Min1,Min2,Min3,Min4:Double;
Max1,Max2,Max3,Max4:Double;
Inc1,Inc2,Inc3,Inc4:Double;
Dec1,Dec2,Dec3,Dec4:Double;
Imp1,Imp2,Imp3,Imp4:Double;
Checkbox1,Checkbox2,Checkbox3,Checkbox4:Boolean;
CambioEquipoMed:Double;
begin
  inherited;
  Sleep(100);
  CambioEquipoMed:=StrToFloat(Fmain.cxTextEdit18.Text);

  Min1:= StrTofloat(Fmain.cxTextEdit1.Text);
  Max1:= StrTofloat(Fmain.cxTextEdit2.Text);
  Inc1:= StrTofloat(Fmain.cxTextEdit3.Text);

  Min2:= StrTofloat(Fmain.cxTextEdit4.Text);
  Max2:= StrTofloat(Fmain.cxTextEdit5.Text);
  Inc2:= StrTofloat(Fmain.cxTextEdit7.Text);

  Min3:= StrTofloat(Fmain.cxTextEdit8.Text);
  Max3:= StrTofloat(Fmain.cxTextEdit10.Text);
  Inc3:= StrTofloat(Fmain.cxTextEdit9.Text);

  Min4:= StrTofloat(Fmain.cxTextEdit11.Text);
  Max4:= StrTofloat(Fmain.cxTextEdit13.Text);
  Inc4:= StrTofloat(Fmain.cxTextEdit12.Text);

  Checkbox1:=Fmain.cxCheckBox1.Checked;
  Checkbox2:=Fmain.cxCheckBox2.Checked;
  Checkbox3:=Fmain.cxCheckBox3.Checked;
  Checkbox4:=Fmain.cxCheckBox4.Checked;

  IvaOriginal:=StrToFloat(Fmain.cxtextedit6.text);
  Iva:=StrtoFloat (Fmain.cxtextedit6.text)/100;

  DMEquipoMedico.QTruncateEquipoMed.Execute;
  DMEquipoMedico.QTruncateEquipoMedPesos.Execute;
  DMEquipoMedico.QTruncateEquipoMedDolares.Execute;

  xls := TXlsFile.Create(TPath.Combine(TPath.GetDocumentsPath, OrigenEquipoMed));
  CantRowsEquipoMed := xls.RowCount;
  for row := 2 to xls.RowCount do
  begin
    try
      XF := -1;
      cell := xls.GetCellValueIndexed(row, 1, XF);
      Codigo := cell.AsNumber;
      cell := xls.GetCellValueIndexed(row, 2, XF);
      Descripcion :=cell.ToString;
      cell := xls.GetCellValueIndexed(row, 3, XF);
      Grupo := cell.ToString;
      cell := xls.GetCellValueIndexed(row, 4, XF);
      Importe := cell.AsNumber;
    except
      Continue;
    end;

    ImporteS:= FormatFloat('###,##0.00', Importe);
    Total_Con_Iva :=Importe * iva+Importe;
    Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva );
    IvaS:=FormatFloat('###,##0.00', Total_Con_Iva - importe);

    // insertando en la lista de materiales original .
    DMEquipoMedico.QInsertarEquipoMed.ParamByName('CODIGO').AsFloat:=codigo;
    DMEquipoMedico.QInsertarEquipoMed.ParamByName('DESCRIPCION').AsString:=Descripcion;
    DMEquipoMedico.QInsertarEquipoMed.ParamByName('GRUPO').AsString:=Grupo;
    DMEquipoMedico.QInsertarEquipoMed.ParamByName('IMPORTE').AsString:=ImporteS;
    DMEquipoMedico.QInsertarEquipoMed.ParamByName('IVA').AsString:=IvaS;
    DMEquipoMedico.QInsertarEquipoMed.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
    DMEquipoMedico.QInsertarEquipoMed.Execute;

    // Buscando valores de incremento y decremento
    if CheckBox1 then     // 1
    begin
      if (Importe >=Min1) and (Importe <=Max1) then
      begin
        Imp1 :=Importe *Inc1;
        ImporteS:= FormatFloat('###,##0.00', Imp1);
        Total_Con_Iva1:=Imp1 * IVA+Imp1;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva1 );
        Iva1:=Total_Con_Iva1 - imp1;
        IvaS:=FormatFloat('###,##0.00', Iva1);

        // insertando en la lista de pesos con incremento.
        DMEquipoMedico.QInsertarEquipoMedPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMEquipoMedico.QInsertarEquipoMedPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMEquipoMedico.QInsertarEquipoMedPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMEquipoMedico.QInsertarEquipoMedPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMEquipoMedico.QInsertarEquipoMedPesos.ParamByName('IVA').AsString:=IvaS;
        DMEquipoMedico.QInsertarEquipoMedPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMEquipoMedico.QInsertarEquipoMedPesos.ParamByName('NUMERO').AsFloat:=1;
        DMEquipoMedico.QInsertarEquipoMedPesos.Execute;

        Imp1 :=Imp1/CambioEquipoMed;
        ImporteS:= FormatFloat('###,##0.00', Imp1);
        Total_Con_Iva1:= Total_Con_Iva1/CambioEquipoMed;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva1);
        Iva1:= Total_Con_Iva1-Imp1;
        IvaS:=FormatFloat('###,##0.00', Iva1);

        // Insertando en la lista de Materiales Dolares
        DMEquipoMedico.QInsertarEquipoMedDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMEquipoMedico.QInsertarEquipoMedDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMEquipoMedico.QInsertarEquipoMedDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMEquipoMedico.QInsertarEquipoMedDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMEquipoMedico.QInsertarEquipoMedDolares.ParamByName('IVA').AsString:=IvaS;
        DMEquipoMedico.QInsertarEquipoMedDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMEquipoMedico.QInsertarEquipoMedDolares.ParamByName('CAMBIO').AsFloat:=CambioEquipoMed;
        DMEquipoMedico.QInsertarEquipoMedDolares.Execute;

      end;
    end;
    if CheckBox2 then     // 2
    begin
      if (Importe >=Min2) and (Importe <=Max2) then
      begin
        Imp2 :=Importe *Inc2;
        ImporteS:= FormatFloat('###,##0.00', Imp2);
        Total_Con_Iva2:=Imp2 * IVA+Imp2;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva2 );
        Iva2:=Total_Con_Iva2 - imp2;
        IvaS:=FormatFloat('###,##0.00', Iva2);

        // insertando en la lista de pesos con incremento.
        DMEquipoMedico.QInsertarEquipoMedPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMEquipoMedico.QInsertarEquipoMedPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMEquipoMedico.QInsertarEquipoMedPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMEquipoMedico.QInsertarEquipoMedPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMEquipoMedico.QInsertarEquipoMedPesos.ParamByName('IVA').AsString:=IvaS;
        DMEquipoMedico.QInsertarEquipoMedPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMEquipoMedico.QInsertarEquipoMedPesos.ParamByName('NUMERO').AsFloat:=2;
        DMEquipoMedico.QInsertarEquipoMedPesos.Execute;

        Imp2 :=Imp2/CambioEquipoMed;
        ImporteS:= FormatFloat('###,##0.00', Imp2);
        Total_Con_Iva2:= Total_Con_Iva2/CambioEquipoMed;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva2);
        Iva2:= Total_Con_Iva2-Imp2;
        IvaS:=FormatFloat('###,##0.00', Iva2);

        // Insertando en la lista de Materiales Dolares
        DMEquipoMedico.QInsertarEquipoMedDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMEquipoMedico.QInsertarEquipoMedDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMEquipoMedico.QInsertarEquipoMedDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMEquipoMedico.QInsertarEquipoMedDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMEquipoMedico.QInsertarEquipoMedDolares.ParamByName('IVA').AsString:=IvaS;
        DMEquipoMedico.QInsertarEquipoMedDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMEquipoMedico.QInsertarEquipoMedDolares.ParamByName('CAMBIO').AsFloat:=CambioEquipoMed;
        DMEquipoMedico.QInsertarEquipoMedDolares.Execute;
      end;
    end;
    if CheckBox3 then     // 3
    begin
      if (Importe >=Min3) and (Importe <=Max3) then
      begin
        Imp3 :=Importe *Inc3;
        ImporteS:= FormatFloat('###,##0.00', Imp3);
        Total_Con_Iva3:=Imp3 * IVA+Imp3;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva3 );
        Iva3:=Total_Con_Iva3 - imp3;
        IvaS:=FormatFloat('###,##0.00', Iva3);

        // insertando en la lista de pesos con incremento.
        DMEquipoMedico.QInsertarEquipoMedPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMEquipoMedico.QInsertarEquipoMedPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMEquipoMedico.QInsertarEquipoMedPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMEquipoMedico.QInsertarEquipoMedPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMEquipoMedico.QInsertarEquipoMedPesos.ParamByName('IVA').AsString:=IvaS;
        DMEquipoMedico.QInsertarEquipoMedPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMEquipoMedico.QInsertarEquipoMedPesos.ParamByName('NUMERO').AsFloat:=3;
        DMEquipoMedico.QInsertarEquipoMedPesos.Execute;

        Imp3 :=Imp3/CambioEquipoMed;
        ImporteS:= FormatFloat('###,##0.00', Imp3);
        Total_Con_Iva3:= Total_Con_Iva3/CambioEquipoMed;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva3);
        Iva3:= Total_Con_Iva3-Imp3;
        IvaS:=FormatFloat('###,##0.00', Iva3);

        // Insertando en la lista de Materiales Dolares
        DMEquipoMedico.QInsertarEquipoMedDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMEquipoMedico.QInsertarEquipoMedDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMEquipoMedico.QInsertarEquipoMedDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMEquipoMedico.QInsertarEquipoMedDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMEquipoMedico.QInsertarEquipoMedDolares.ParamByName('IVA').AsString:=IvaS;
        DMEquipoMedico.QInsertarEquipoMedDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMEquipoMedico.QInsertarEquipoMedDolares.ParamByName('CAMBIO').AsFloat:=CambioEquipoMed;
        DMEquipoMedico.QInsertarEquipoMedDolares.Execute;
      end;
    end;
    if CheckBox4 then     // 4
    begin
      if (Importe >=Min4) and (Importe <=Max4) then
      begin
        Imp4 :=Importe *Inc4;
        ImporteS:= FormatFloat('###,##0.00', Imp4);
        Total_Con_Iva4:=Imp4 * IVA+Imp4;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva4 );
        Iva4:=Total_Con_Iva4 - imp4;
        IvaS:=FormatFloat('###,##0.00', Iva4);

        // insertando en la lista de pesos con incremento.
        DMEquipoMedico.QInsertarEquipoMedPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMEquipoMedico.QInsertarEquipoMedPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMEquipoMedico.QInsertarEquipoMedPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMEquipoMedico.QInsertarEquipoMedPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMEquipoMedico.QInsertarEquipoMedPesos.ParamByName('IVA').AsString:=IvaS;
        DMEquipoMedico.QInsertarEquipoMedPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMEquipoMedico.QInsertarEquipoMedPesos.ParamByName('NUMERO').AsFloat:=4;
        DMEquipoMedico.QInsertarEquipoMedPesos.Execute;

        Imp4 :=Imp4/CambioEquipoMed;
        ImporteS:= FormatFloat('###,##0.00', Imp4);
        Total_Con_Iva4:= Total_Con_Iva4/CambioEquipoMed;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva4);
        Iva4:= Total_Con_Iva4-Imp4;
        IvaS:=FormatFloat('###,##0.00', Iva4);

        // Insertando en la lista de Materiales Dolares
        DMEquipoMedico.QInsertarEquipoMedDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMEquipoMedico.QInsertarEquipoMedDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMEquipoMedico.QInsertarEquipoMedDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMEquipoMedico.QInsertarEquipoMedDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMEquipoMedico.QInsertarEquipoMedDolares.ParamByName('IVA').AsString:=IvaS;
        DMEquipoMedico.QInsertarEquipoMedDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMEquipoMedico.QInsertarEquipoMedDolares.ParamByName('CAMBIO').AsFloat:=CambioEquipoMed;
        DMEquipoMedico.QInsertarEquipoMedDolares.Execute;

      end;
    end;

    Synchronize(IniciarProgressBar);
  end;

  xls.Free;
  DM1.QEstadoPorActualizar.Execute;
  Synchronize(ActualizarGrids);
end;

procedure ThreadImportarEquipoMedico.IniciarProgressBar;
var
posicion:Integer;
begin
   Fmain.cxProgressBar5.Properties.Min:=0;
   Fmain.cxProgressBar5.Properties.Max:=CantRowsEquipoMed-1;
   Fmain.cxProgressBar5.Position:=Fmain.cxProgressBar5.Position+1;
   posicion:=Trunc(Fmain.cxProgressBar5.Position);
   Fmain.cxLabel3.Caption:=  IntToStr(Posicion)+ ' de ' +IntToStr(CantRowsEquipoMed-1);
end;

procedure ThreadImportarEquipoMedico.ActualizarGrids;
begin
  DMEquipoMedico.TablaEquipoMedico.open;
  DMEquipoMedico.TablaEquipoMedico.Refresh;
  DMEquipoMedico.TablaEquipoMedPesos.open;
  DMEquipoMedico.TablaEquipoMedPesos.Refresh;
  DMEquipoMedico.TablaEquipoMedDolares.open;
  DMEquipoMedico.TablaEquipoMedDolares.Refresh;
end;

function ThreadImportarEquipoMedico.StringToPAnsiChar(stringVar: string): PAnsiChar;
var
  AnsString : AnsiString;
  InternalError : Boolean;
begin
  InternalError := false;
  Result := '';
  try
    if stringVar <> '' Then
    begin
       AnsString := AnsiString(StringVar);
       Result := PAnsiChar(PAnsiString(AnsString));
    end;
  Except
    InternalError := true;
  end;
  if InternalError or (String(Result) <> stringVar) then
  begin
    Raise Exception.Create('Conversion from string to PAnsiChar failed!');
  end;
end;


{ ThreadImportarServicioDeLaboratorio }

procedure ThreadImportarServicioDeLaboratorio.Execute;
var
i:Integer;
Codigo: Double;
Descripcion,Grupo: string;
Iva,IvaOriginal, Total_Con_Iva,Importe: Double;

ImporteS,IvaS,Total_Con_IvaS:string;
Iva1,Iva2,Iva3,Iva4, Total_Con_Iva1,Total_Con_Iva2,Total_Con_Iva3,Total_Con_Iva4:Double;

xls: TXlsFile;
row: integer;
XF: integer;
cell: TCellValue;

Min1,Min2,Min3,Min4:Double;
Max1,Max2,Max3,Max4:Double;
Inc1,Inc2,Inc3,Inc4:Double;
Dec1,Dec2,Dec3,Dec4:Double;
Imp1,Imp2,Imp3,Imp4:Double;
Checkbox1,Checkbox2,Checkbox3,Checkbox4:Boolean;
CambioServLab:Double;
begin
  inherited;
  Sleep(100);
  CambioServLab:=StrToFloat(Fmain.cxTextEdit18.Text);

  Min1:= StrTofloat(Fmain.cxTextEdit1.Text);
  Max1:= StrTofloat(Fmain.cxTextEdit2.Text);
  Inc1:= StrTofloat(Fmain.cxTextEdit3.Text);

  Min2:= StrTofloat(Fmain.cxTextEdit4.Text);
  Max2:= StrTofloat(Fmain.cxTextEdit5.Text);
  Inc2:= StrTofloat(Fmain.cxTextEdit7.Text);

  Min3:= StrTofloat(Fmain.cxTextEdit8.Text);
  Max3:= StrTofloat(Fmain.cxTextEdit10.Text);
  Inc3:= StrTofloat(Fmain.cxTextEdit9.Text);

  Min4:= StrTofloat(Fmain.cxTextEdit11.Text);
  Max4:= StrTofloat(Fmain.cxTextEdit13.Text);
  Inc4:= StrTofloat(Fmain.cxTextEdit12.Text);

  Checkbox1:=Fmain.cxCheckBox1.Checked;
  Checkbox2:=Fmain.cxCheckBox2.Checked;
  Checkbox3:=Fmain.cxCheckBox3.Checked;
  Checkbox4:=Fmain.cxCheckBox4.Checked;

  IvaOriginal:=StrToFloat(Fmain.cxtextedit6.text);
  Iva:=StrtoFloat (Fmain.cxtextedit6.text)/100;

  DMServLab.QTruncateServLab.Execute;
  DMServLab.QTruncateServLabPesos.Execute;
  DMServLab.QTruncateServLabDolares.Execute;

  xls := TXlsFile.Create(TPath.Combine(TPath.GetDocumentsPath, OrigenServLab));
  CantRowsServLab := xls.RowCount;
  for row := 2 to CantRowsServLab do
  begin
    try
      XF := -1;
      cell := xls.GetCellValueIndexed(row, 1, XF);
      Codigo := cell.AsNumber;
      cell := xls.GetCellValueIndexed(row, 2, XF);
      Descripcion :=cell.ToString;
      cell := xls.GetCellValueIndexed(row, 3, XF);
      Grupo := cell.ToString;
      cell := xls.GetCellValueIndexed(row, 4, XF);
      Importe := cell.AsNumber;
    except
      Continue;
    end;

    ImporteS:= FormatFloat('###,##0.00', Importe);
    Total_Con_Iva :=Importe * iva+Importe;
    Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva );
    IvaS:=FormatFloat('###,##0.00', Total_Con_Iva - importe);

    // insertando en la lista de materiales original .
    DMServLab.QInsertarServLab.ParamByName('CODIGO').AsFloat:=codigo;
    DMServLab.QInsertarServLab.ParamByName('DESCRIPCION').AsString:=Descripcion;
    DMServLab.QInsertarServLab.ParamByName('GRUPO').AsString:=Grupo;
    DMServLab.QInsertarServLab.ParamByName('IMPORTE').AsString:=ImporteS;
    DMServLab.QInsertarServLab.ParamByName('IVA').AsString:=IvaS;
    DMServLab.QInsertarServLab.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
    DMServLab.QInsertarServLab.Execute;

    // insertando en la lista de pesos con incremento.
    DMServLab.QInsertarServLabPesos.ParamByName('CODIGO').AsFloat:=codigo;
    DMServLab.QInsertarServLabPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
    DMServLab.QInsertarServLabPesos.ParamByName('GRUPO').AsString:=Grupo;

    // Buscando valores de incremento y decremento
    if CheckBox1 then     // 1
    begin
      if (Importe >=Min1) and (Importe <=Max1) then
      begin
        Imp1 :=Importe *Inc1;
        ImporteS:= FormatFloat('###,##0.00', Imp1);
        Total_Con_Iva1:=Imp1 * IVA+Imp1;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva1 );
        Iva1:=Total_Con_Iva1 - imp1;
        IvaS:=FormatFloat('###,##0.00', Iva1);

        // insertando en la lista de pesos con incremento.
        DMServLab.QInsertarServLabPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMServLab.QInsertarServLabPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMServLab.QInsertarServLabPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMServLab.QInsertarServLabPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMServLab.QInsertarServLabPesos.ParamByName('IVA').AsString:=IvaS;
        DMServLab.QInsertarServLabPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMServLab.QInsertarServLabPesos.ParamByName('NUMERO').AsFloat:=1;
        DMServLab.QInsertarServLabPesos.Execute;

        Imp1 :=Imp1/CambioServLab;
        ImporteS:= FormatFloat('###,##0.00', Imp1);
        Total_Con_Iva1:= Total_Con_Iva1/CambioServLab;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva1);
        Iva1:= Total_Con_Iva1-Imp1;
        IvaS:=FormatFloat('###,##0.00', Iva1);

        // Insertando en la lista de Materiales Dolares
        DMServLab.QInsertarServLabDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMServLab.QInsertarServLabDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMServLab.QInsertarServLabDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMServLab.QInsertarServLabDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMServLab.QInsertarServLabDolares.ParamByName('IVA').AsString:=IvaS;
        DMServLab.QInsertarServLabDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMServLab.QInsertarServLabDolares.ParamByName('CAMBIO').AsFloat:=CambioServLab;
        DMServLab.QInsertarServLabDolares.Execute;

      end;
    end;
    if CheckBox2 then     // 2
    begin
      if (Importe >=Min2) and (Importe <=Max2) then
      begin
        Imp2 :=Importe *Inc2;
        ImporteS:= FormatFloat('###,##0.00', Imp2);
        Total_Con_Iva2:=Imp2 * IVA+Imp2;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva2 );
        Iva2:=Total_Con_Iva2 - imp2;
        IvaS:=FormatFloat('###,##0.00', Iva2);

        // insertando en la lista de pesos con incremento.
        DMServLab.QInsertarServLabPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMServLab.QInsertarServLabPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMServLab.QInsertarServLabPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMServLab.QInsertarServLabPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMServLab.QInsertarServLabPesos.ParamByName('IVA').AsString:=IvaS;
        DMServLab.QInsertarServLabPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMServLab.QInsertarServLabPesos.ParamByName('NUMERO').AsFloat:=2;
        DMServLab.QInsertarServLabPesos.Execute;

        Imp2 :=Imp2/CambioServLab;
        ImporteS:= FormatFloat('###,##0.00', Imp2);
        Total_Con_Iva2:= Total_Con_Iva2/CambioServLab;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva2);
        Iva2:= Total_Con_Iva2-Imp2;
        IvaS:=FormatFloat('###,##0.00', Iva2);

        // Insertando en la lista de Materiales Dolares
        DMServLab.QInsertarServLabDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMServLab.QInsertarServLabDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMServLab.QInsertarServLabDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMServLab.QInsertarServLabDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMServLab.QInsertarServLabDolares.ParamByName('IVA').AsString:=IvaS;
        DMServLab.QInsertarServLabDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMServLab.QInsertarServLabDolares.ParamByName('CAMBIO').AsFloat:=CambioServLab;
        DMServLab.QInsertarServLabDolares.Execute;
      end;
    end;
    if CheckBox3 then     // 3
    begin
      if (Importe >=Min3) and (Importe <=Max3) then
      begin
        Imp3 :=Importe *Inc3;
        ImporteS:= FormatFloat('###,##0.00', Imp3);
        Total_Con_Iva3:=Imp3 * IVA+Imp3;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva3 );
        Iva3:=Total_Con_Iva3 - imp3;
        IvaS:=FormatFloat('###,##0.00', Iva3);

        // insertando en la lista de pesos con incremento.
        DMServLab.QInsertarServLabPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMServLab.QInsertarServLabPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMServLab.QInsertarServLabPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMServLab.QInsertarServLabPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMServLab.QInsertarServLabPesos.ParamByName('IVA').AsString:=IvaS;
        DMServLab.QInsertarServLabPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMServLab.QInsertarServLabPesos.ParamByName('NUMERO').AsFloat:=3;
        DMServLab.QInsertarServLabPesos.Execute;

        Imp3 :=Imp3/CambioServLab;
        ImporteS:= FormatFloat('###,##0.00', Imp3);
        Total_Con_Iva3:= Total_Con_Iva3/CambioServLab;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva3);
        Iva3:= Total_Con_Iva3-Imp3;
        IvaS:=FormatFloat('###,##0.00', Iva3);

        // Insertando en la lista de Materiales Dolares
        DMServLab.QInsertarServLabDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMServLab.QInsertarServLabDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMServLab.QInsertarServLabDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMServLab.QInsertarServLabDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMServLab.QInsertarServLabDolares.ParamByName('IVA').AsString:=IvaS;
        DMServLab.QInsertarServLabDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMServLab.QInsertarServLabDolares.ParamByName('CAMBIO').AsFloat:=CambioServLab;
        DMServLab.QInsertarServLabDolares.Execute;

      end;
    end;
    if CheckBox4 then     // 4
    begin
      if (Importe >=Min4) and (Importe <=Max4) then
      begin
        Imp4 :=Importe *Inc4;
        ImporteS:= FormatFloat('###,##0.00', Imp4);
        Total_Con_Iva4:=Imp4 * IVA+Imp4;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva4 );
        Iva4:=Total_Con_Iva4 - imp4;
        IvaS:=FormatFloat('###,##0.00', Iva4);

        // insertando en la lista de pesos con incremento.
        DMServLab.QInsertarServLabPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMServLab.QInsertarServLabPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMServLab.QInsertarServLabPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMServLab.QInsertarServLabPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMServLab.QInsertarServLabPesos.ParamByName('IVA').AsString:=IvaS;
        DMServLab.QInsertarServLabPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMServLab.QInsertarServLabPesos.ParamByName('NUMERO').AsFloat:=3;
        DMServLab.QInsertarServLabPesos.Execute;

        Imp4 :=Imp4/CambioServLab;
        ImporteS:= FormatFloat('###,##0.00', Imp4);
        Total_Con_Iva3:= Total_Con_Iva4/CambioServLab;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva4);
        Iva4:= Total_Con_Iva4-Imp4;
        IvaS:=FormatFloat('###,##0.00', Iva4);

        // Insertando en la lista de Materiales Dolares
        DMServLab.QInsertarServLabDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMServLab.QInsertarServLabDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMServLab.QInsertarServLabDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMServLab.QInsertarServLabDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMServLab.QInsertarServLabDolares.ParamByName('IVA').AsString:=IvaS;
        DMServLab.QInsertarServLabDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMServLab.QInsertarServLabDolares.ParamByName('CAMBIO').AsFloat:=CambioServLab;
        DMServLab.QInsertarServLabDolares.Execute;

      end;
    end;

    Synchronize(IniciarProgressBar);
  end;

  xls.Free;
  DM1.QEstadoPorActualizar.Execute;
  Synchronize(ActualizarGrids);
end;

procedure ThreadImportarServicioDeLaboratorio.IniciarProgressBar;
var
posicion:Integer;
begin
   Fmain.cxProgressBar6.Properties.Min:=0;
   Fmain.cxProgressBar6.Properties.Max:=CantRowsServLab-1;
   Fmain.cxProgressBar6.Position:=Fmain.cxProgressBar6.Position+1;
   posicion:=Trunc(Fmain.cxProgressBar6.Position);
   Fmain.cxLabel47.Caption:=  IntToStr(Posicion)+ ' de ' +IntToStr(CantRowsServLab-1);
end;

procedure ThreadImportarServicioDeLaboratorio.ActualizarGrids;
begin
  DMServLab.TablaServLab.open;
  DMServLab.TablaServLab.Refresh;
  DMServLab.TablaServLabPesos.open;
  DMServLab.TablaServLabPesos.Refresh;
  DMServLab.TablaServLabDolares.open;
  DMServLab.TablaServLabDolares.Refresh;
end;

function ThreadImportarServicioDeLaboratorio.StringToPAnsiChar( stringVar: string): PAnsiChar;
var
  AnsString : AnsiString;
  InternalError : Boolean;
begin
  InternalError := false;
  Result := '';
  try
    if stringVar <> '' Then
    begin
       AnsString := AnsiString(StringVar);
       Result := PAnsiChar(PAnsiString(AnsString));
    end;
  Except
    InternalError := true;
  end;
  if InternalError or (String(Result) <> stringVar) then
  begin
    Raise Exception.Create('Conversion from string to PAnsiChar failed!');
  end;
end;


{ ThreadImportarServicioMedico }

procedure ThreadImportarServicioMedico.Execute;
var
i:Integer;
Codigo: Double;
Descripcion,Grupo: string;
Iva,IvaOriginal, Total_Con_Iva,Importe: Double;

ImporteS,IvaS,Total_Con_IvaS:string;
Iva1,Iva2,Iva3,Iva4, Total_Con_Iva1,Total_Con_Iva2,Total_Con_Iva3,Total_Con_Iva4:Double;

xls: TXlsFile;
row: integer;
XF: integer;
cell: TCellValue;

Min1,Min2,Min3,Min4:Double;
Max1,Max2,Max3,Max4:Double;
Inc1,Inc2,Inc3,Inc4:Double;
Dec1,Dec2,Dec3,Dec4:Double;
Imp1,Imp2,Imp3,Imp4:Double;
Checkbox1,Checkbox2,Checkbox3,Checkbox4:Boolean;
CambioServMed:Double;
begin
  inherited;
  Sleep(100);
  CambioServMed:=StrToFloat(Fmain.cxTextEdit18.Text);

  Min1:= StrTofloat(Fmain.cxTextEdit1.Text);
  Max1:= StrTofloat(Fmain.cxTextEdit2.Text);
  Inc1:= StrTofloat(Fmain.cxTextEdit3.Text);

  Min2:= StrTofloat(Fmain.cxTextEdit4.Text);
  Max2:= StrTofloat(Fmain.cxTextEdit5.Text);
  Inc2:= StrTofloat(Fmain.cxTextEdit7.Text);

  Min3:= StrTofloat(Fmain.cxTextEdit8.Text);
  Max3:= StrTofloat(Fmain.cxTextEdit10.Text);
  Inc3:= StrTofloat(Fmain.cxTextEdit9.Text);

  Min4:= StrTofloat(Fmain.cxTextEdit11.Text);
  Max4:= StrTofloat(Fmain.cxTextEdit13.Text);
  Inc4:= StrTofloat(Fmain.cxTextEdit12.Text);

  Checkbox1:=Fmain.cxCheckBox1.Checked;
  Checkbox2:=Fmain.cxCheckBox2.Checked;
  Checkbox3:=Fmain.cxCheckBox3.Checked;
  Checkbox4:=Fmain.cxCheckBox4.Checked;

  IvaOriginal:=StrToFloat(Fmain.cxtextedit6.text);
  Iva:=StrtoFloat (Fmain.cxtextedit6.text)/100;

  DMServMed.QTruncateServMed.Execute;
  DMServMed.QTruncateServMedPesos.Execute;
  DMServMed.QTruncateServMedDolares.Execute;

  xls := TXlsFile.Create(TPath.Combine(TPath.GetDocumentsPath, OrigenServMed));
  CantRowsServMed := xls.RowCount;
  for row := 2 to CantRowsServMed do
  begin
    try
      XF := -1;
      cell := xls.GetCellValueIndexed(row, 1, XF);
      Codigo := cell.AsNumber;
      cell := xls.GetCellValueIndexed(row, 2, XF);
      Descripcion :=cell.ToString;
      cell := xls.GetCellValueIndexed(row, 3, XF);
      Grupo := cell.ToString;
      cell := xls.GetCellValueIndexed(row, 4, XF);
      Importe := cell.AsNumber;
    except
      Continue;
    end;

    ImporteS:= FormatFloat('###,##0.00', Importe);
    Total_Con_Iva :=Importe * iva+Importe;
    Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva );
    IvaS:=FormatFloat('###,##0.00', Total_Con_Iva - importe);

    // insertando en la lista de materiales original .
    DMServMed.QInsertarServMed.ParamByName('CODIGO').AsFloat:=codigo;
    DMServMed.QInsertarServMed.ParamByName('DESCRIPCION').AsString:=Descripcion;
    DMServMed.QInsertarServMed.ParamByName('GRUPO').AsString:=Grupo;
    DMServMed.QInsertarServMed.ParamByName('IMPORTE').AsString:=ImporteS;
    DMServMed.QInsertarServMed.ParamByName('IVA').AsString:=IvaS;
    DMServMed.QInsertarServMed.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
    DMServMed.QInsertarServMed.Execute;



    // Buscando valores de incremento y decremento
    if CheckBox1 then     // 1
    begin
      if (Importe >=Min1) and (Importe <=Max1) then
      begin
        Imp1 :=Importe *Inc1;
        ImporteS:= FormatFloat('###,##0.00', Imp1);
        Total_Con_Iva1:=Imp1 * IVA+Imp1;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva1 );
        Iva1:=Total_Con_Iva1 - imp1;
        IvaS:=FormatFloat('###,##0.00', Iva1);

        // insertando en la lista de pesos con incremento.
        DMServMed.QInsertarServMedPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMServMed.QInsertarServMedPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMServMed.QInsertarServMedPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMServMed.QInsertarServMedPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMServMed.QInsertarServMedPesos.ParamByName('IVA').AsString:=IvaS;
        DMServMed.QInsertarServMedPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMServMed.QInsertarServMedPesos.ParamByName('NUMERO').AsFloat:=1;
        DMServMed.QInsertarServMedPesos.Execute;

        Imp1 :=Imp1/CambioServMed;
        ImporteS:= FormatFloat('###,##0.00', Imp1);
        Total_Con_Iva1:= Total_Con_Iva1/CambioServMed;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva1);
        Iva1:= Total_Con_Iva1-Imp1;
        IvaS:=FormatFloat('###,##0.00', Iva1);

        // Insertando en la lista de Materiales Dolares
        DMServMed.QInsertarServMedDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMServMed.QInsertarServMedDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMServMed.QInsertarServMedDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMServMed.QInsertarServMedDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMServMed.QInsertarServMedDolares.ParamByName('IVA').AsString:=IvaS;
        DMServMed.QInsertarServMedDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMServMed.QInsertarServMedDolares.ParamByName('CAMBIO').AsFloat:=CambioServMed;
        DMServMed.QInsertarServMedDolares.Execute;

      end;
    end;
    if CheckBox2 then     // 2
    begin
      if (Importe >=Min2) and (Importe <=Max2) then
      begin
        Imp2 :=Importe *Inc2;
        ImporteS:= FormatFloat('###,##0.00', Imp2);
        Total_Con_Iva2:=Imp2 * IVA+Imp2;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva2 );
        Iva2:=Total_Con_Iva2 - imp2;
        IvaS:=FormatFloat('###,##0.00', Iva2);

        // insertando en la lista de pesos con incremento.
        DMServMed.QInsertarServMedPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMServMed.QInsertarServMedPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMServMed.QInsertarServMedPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMServMed.QInsertarServMedPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMServMed.QInsertarServMedPesos.ParamByName('IVA').AsString:=IvaS;
        DMServMed.QInsertarServMedPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMServMed.QInsertarServMedPesos.ParamByName('NUMERO').AsFloat:=2;
        DMServMed.QInsertarServMedPesos.Execute;

        Imp2 :=Imp2/CambioServMed;
        ImporteS:= FormatFloat('###,##0.00', Imp2);
        Total_Con_Iva2:= Total_Con_Iva2/CambioServMed;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva2);
        Iva2:= Total_Con_Iva2-Imp2;
        IvaS:=FormatFloat('###,##0.00', Iva2);

        // Insertando en la lista de Materiales Dolares
        DMServMed.QInsertarServMedDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMServMed.QInsertarServMedDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMServMed.QInsertarServMedDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMServMed.QInsertarServMedDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMServMed.QInsertarServMedDolares.ParamByName('IVA').AsString:=IvaS;
        DMServMed.QInsertarServMedDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMServMed.QInsertarServMedDolares.ParamByName('CAMBIO').AsFloat:=CambioServMed;
        DMServMed.QInsertarServMedDolares.Execute;
      end;
    end;
    if CheckBox3 then     // 3
    begin
      if (Importe >=Min3) and (Importe <=Max3) then
      begin
        Imp3 :=Importe *Inc3;
        ImporteS:= FormatFloat('###,##0.00', Imp3);
        Total_Con_Iva3:=Imp3 * IVA+Imp3;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva3 );
        Iva3:=Total_Con_Iva3 - imp3;
        IvaS:=FormatFloat('###,##0.00', Iva3);

        // insertando en la lista de pesos con incremento.
        DMServMed.QInsertarServMedPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMServMed.QInsertarServMedPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMServMed.QInsertarServMedPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMServMed.QInsertarServMedPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMServMed.QInsertarServMedPesos.ParamByName('IVA').AsString:=IvaS;
        DMServMed.QInsertarServMedPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMServMed.QInsertarServMedPesos.ParamByName('NUMERO').AsFloat:=3;
        DMServMed.QInsertarServMedPesos.Execute;

        Imp3 :=Imp3/CambioServMed;
        ImporteS:= FormatFloat('###,##0.00', Imp3);
        Total_Con_Iva3:= Total_Con_Iva3/CambioServMed;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva3);
        Iva3:= Total_Con_Iva3-Imp3;
        IvaS:=FormatFloat('###,##0.00', Iva3);

        // Insertando en la lista de Materiales Dolares
        DMServMed.QInsertarServMedDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMServMed.QInsertarServMedDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMServMed.QInsertarServMedDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMServMed.QInsertarServMedDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMServMed.QInsertarServMedDolares.ParamByName('IVA').AsString:=IvaS;
        DMServMed.QInsertarServMedDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMServMed.QInsertarServMedDolares.ParamByName('CAMBIO').AsFloat:=CambioServMed;
        DMServMed.QInsertarServMedDolares.Execute;

      end;
    end;
    if CheckBox4 then     // 4
    begin
      if (Importe >=Min4) and (Importe <=Max4) then
      begin
        Imp4 :=Importe *Inc4;
        ImporteS:= FormatFloat('###,##0.00', Imp4);
        Total_Con_Iva4:=Imp4 * IVA+Imp4;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva4 );
        Iva4:=Total_Con_Iva4 - imp4;
        IvaS:=FormatFloat('###,##0.00', Iva4);

        // insertando en la lista de pesos con incremento.
        DMServMed.QInsertarServMedPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMServMed.QInsertarServMedPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMServMed.QInsertarServMedPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMServMed.QInsertarServMedPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMServMed.QInsertarServMedPesos.ParamByName('IVA').AsString:=IvaS;
        DMServMed.QInsertarServMedPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMServMed.QInsertarServMedPesos.ParamByName('NUMERO').AsFloat:=4;
        DMServMed.QInsertarServMedPesos.Execute;

        Imp4 :=Imp4/CambioServMed;
        ImporteS:= FormatFloat('###,##0.00', Imp4);
        Total_Con_Iva4:= Total_Con_Iva4/CambioServMed;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva4);
        Iva4:= Total_Con_Iva4-Imp4;
        IvaS:=FormatFloat('###,##0.00', Iva4);

        // Insertando en la lista de Materiales Dolares
        DMServMed.QInsertarServMedDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMServMed.QInsertarServMedDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMServMed.QInsertarServMedDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMServMed.QInsertarServMedDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMServMed.QInsertarServMedDolares.ParamByName('IVA').AsString:=IvaS;
        DMServMed.QInsertarServMedDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMServMed.QInsertarServMedDolares.ParamByName('CAMBIO').AsFloat:=CambioServMed;
        DMServMed.QInsertarServMedDolares.Execute;

      end;
    end;

    Synchronize(IniciarProgressBar);
  end;

  xls.Free;
  DM1.QEstadoPorActualizar.Execute;
  Synchronize(ActualizarGrids);
end;

procedure ThreadImportarServicioMedico.IniciarProgressBar;
var
posicion:Integer;
begin
   Fmain.cxProgressBar7.Properties.Min:=0;
   Fmain.cxProgressBar7.Properties.Max:=CantRowsServMed -1;
   Fmain.cxProgressBar7.Position:=Fmain.cxProgressBar7.Position+1;
   posicion:=Trunc(Fmain.cxProgressBar7.Position);
   Fmain.cxLabel49.Caption:=  IntToStr(Posicion)+ ' de ' +IntToStr(CantRowsServMed-1);
end;

procedure ThreadImportarServicioMedico.ActualizarGrids;
begin
  DMServMed.TablaServMed.open;
  DMServMed.TablaServMed.Refresh;
  DMServMed.TablaServMedPesos.open;
  DMServMed.TablaServMedPesos.Refresh;
  DMServMed.TablaServMedDolares.open;
  DMServMed.TablaServMedDolares.Refresh;
end;

function ThreadImportarServicioMedico.StringToPAnsiChar(stringVar: string): PAnsiChar;
var
  AnsString : AnsiString;
  InternalError : Boolean;
begin
  InternalError := false;
  Result := '';
  try
    if stringVar <> '' Then
    begin
       AnsString := AnsiString(StringVar);
       Result := PAnsiChar(PAnsiString(AnsString));
    end;
  Except
    InternalError := true;
  end;
  if InternalError or (String(Result) <> stringVar) then
  begin
    Raise Exception.Create('Conversion from string to PAnsiChar failed!');
  end;
end;


{ ThreadImportarTerapiaIntensiva }

procedure ThreadImportarTerapiaIntensiva.Execute;
var
i:Integer;
Codigo: Double;
Descripcion,Grupo: string;
Iva,IvaOriginal, Total_Con_Iva,Importe: Double;

ImporteS,IvaS,Total_Con_IvaS:string;
Iva1,Iva2,Iva3,Iva4, Total_Con_Iva1,Total_Con_Iva2,Total_Con_Iva3,Total_Con_Iva4:Double;

xls: TXlsFile;
row: integer;
XF: integer;
cell: TCellValue;

Min1,Min2,Min3,Min4:Double;
Max1,Max2,Max3,Max4:Double;
Inc1,Inc2,Inc3,Inc4:Double;
Dec1,Dec2,Dec3,Dec4:Double;
Imp1,Imp2,Imp3,Imp4:Double;
Checkbox1,Checkbox2,Checkbox3,Checkbox4:Boolean;
CambioTerInt:Double;
begin
  inherited;
  Sleep(100);
  CambioTerInt:=StrToFloat(Fmain.cxTextEdit18.Text);

  Min1:= StrTofloat(Fmain.cxTextEdit1.Text);
  Max1:= StrTofloat(Fmain.cxTextEdit2.Text);
  Inc1:= StrTofloat(Fmain.cxTextEdit3.Text);

  Min2:= StrTofloat(Fmain.cxTextEdit4.Text);
  Max2:= StrTofloat(Fmain.cxTextEdit5.Text);
  Inc2:= StrTofloat(Fmain.cxTextEdit7.Text);

  Min3:= StrTofloat(Fmain.cxTextEdit8.Text);
  Max3:= StrTofloat(Fmain.cxTextEdit10.Text);
  Inc3:= StrTofloat(Fmain.cxTextEdit9.Text);

  Min4:= StrTofloat(Fmain.cxTextEdit11.Text);
  Max4:= StrTofloat(Fmain.cxTextEdit13.Text);
  Inc4:= StrTofloat(Fmain.cxTextEdit12.Text);

  Checkbox1:=Fmain.cxCheckBox1.Checked;
  Checkbox2:=Fmain.cxCheckBox2.Checked;
  Checkbox3:=Fmain.cxCheckBox3.Checked;
  Checkbox4:=Fmain.cxCheckBox4.Checked;

  IvaOriginal:=StrToFloat(Fmain.cxtextedit6.text);
  Iva:=StrtoFloat (Fmain.cxtextedit6.text)/100;

  DMTerInt.QTruncateTerInt.Execute;
  DMTerInt.QTruncateTerIntPesos.Execute;
  DMTerInt.QTruncateTerIntDolares.Execute;

  xls := TXlsFile.Create(TPath.Combine(TPath.GetDocumentsPath, OrigenTerapiaInt));
  CantRowsTerapiaInt := xls.RowCount;
  for row := 2 to CantRowsTerapiaInt do
  begin
    try
      XF := -1;
      cell := xls.GetCellValueIndexed(row, 1, XF);
      Codigo := cell.AsNumber;
      cell := xls.GetCellValueIndexed(row, 2, XF);
      Descripcion :=cell.ToString;
      cell := xls.GetCellValueIndexed(row, 3, XF);
      Grupo := cell.ToString;
      cell := xls.GetCellValueIndexed(row, 4, XF);
      Importe := cell.AsNumber;

    except
      Continue;
    end;

    ImporteS:= FormatFloat('###,##0.00', Importe);
    Total_Con_Iva :=Importe * iva+Importe;
    Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva );
    IvaS:=FormatFloat('###,##0.00', Total_Con_Iva - importe);

    // insertando en la lista de materiales original .
    DMTerInt.QInsertarTerInt.ParamByName('CODIGO').AsFloat:=codigo;
    DMTerInt.QInsertarTerInt.ParamByName('DESCRIPCION').AsString:=Descripcion;
    DMTerInt.QInsertarTerInt.ParamByName('GRUPO').AsString:=Grupo;
    DMTerInt.QInsertarTerInt.ParamByName('IMPORTE').AsString:=ImporteS;
    DMTerInt.QInsertarTerInt.ParamByName('IVA').AsString:=IvaS;
    DMTerInt.QInsertarTerInt.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
    DMTerInt.QInsertarTerInt.Execute;



    // Buscando valores de incremento y decremento
    if CheckBox1 then     // 1
    begin
      if (Importe >=Min1) and (Importe <=Max1) then
      begin
        Imp1 :=Importe *Inc1;
        ImporteS:= FormatFloat('###,##0.00', Imp1);
        Total_Con_Iva1:=Imp1 * IVA+Imp1;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva1 );
        Iva1:=Total_Con_Iva1 - imp1;
        IvaS:=FormatFloat('###,##0.00', Iva1);

        // insertando en la lista de pesos con incremento.
        DMTerInt.QInsertarTerIntPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMTerInt.QInsertarTerIntPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMTerInt.QInsertarTerIntPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMTerInt.QInsertarTerIntPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMTerInt.QInsertarTerIntPesos.ParamByName('IVA').AsString:=IvaS;
        DMTerInt.QInsertarTerIntPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMTerInt.QInsertarTerIntPesos.ParamByName('NUMERO').AsFloat:=1;
        DMTerInt.QInsertarTerIntPesos.Execute;

        Imp1 :=Imp1/CambioTerInt;
        ImporteS:= FormatFloat('###,##0.00', Imp1);
        Total_Con_Iva1:= Total_Con_Iva1/CambioTerInt;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva1);
        Iva1:= Total_Con_Iva1-Imp1;
        IvaS:=FormatFloat('###,##0.00', Iva1);

        // Insertando en la lista de Materiales Dolares
        DMTerInt.QInsertarTerIntDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMTerInt.QInsertarTerIntDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMTerInt.QInsertarTerIntDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMTerInt.QInsertarTerIntDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMTerInt.QInsertarTerIntDolares.ParamByName('IVA').AsString:=IvaS;
        DMTerInt.QInsertarTerIntDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMTerInt.QInsertarTerIntDolares.ParamByName('CAMBIO').AsFloat:=CambioTerInt;
        DMTerInt.QInsertarTerIntDolares.Execute;

      end;
    end;
    if CheckBox2 then     // 2
    begin
      if (Importe >=Min2) and (Importe <=Max2) then
      begin
        Imp2 :=Importe *Inc2;
        ImporteS:= FormatFloat('###,##0.00', Imp2);
        Total_Con_Iva2:=Imp2 * IVA+Imp2;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva2 );
        Iva2:=Total_Con_Iva2 - imp2;
        IvaS:=FormatFloat('###,##0.00', Iva2);

        // insertando en la lista de pesos con incremento.
        DMTerInt.QInsertarTerIntPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMTerInt.QInsertarTerIntPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMTerInt.QInsertarTerIntPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMTerInt.QInsertarTerIntPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMTerInt.QInsertarTerIntPesos.ParamByName('IVA').AsString:=IvaS;
        DMTerInt.QInsertarTerIntPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMTerInt.QInsertarTerIntPesos.ParamByName('NUMERO').AsFloat:=2;
        DMTerInt.QInsertarTerIntPesos.Execute;

        Imp2 :=Imp2/CambioTerInt;
        ImporteS:= FormatFloat('###,##0.00', Imp2);
        Total_Con_Iva2:= Total_Con_Iva2/CambioTerInt;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva2);
        Iva2:= Total_Con_Iva2-Imp2;
        IvaS:=FormatFloat('###,##0.00', Iva2);

        // Insertando en la lista de Materiales Dolares
        DMTerInt.QInsertarTerIntDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMTerInt.QInsertarTerIntDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMTerInt.QInsertarTerIntDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMTerInt.QInsertarTerIntDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMTerInt.QInsertarTerIntDolares.ParamByName('IVA').AsString:=IvaS;
        DMTerInt.QInsertarTerIntDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMTerInt.QInsertarTerIntDolares.ParamByName('CAMBIO').AsFloat:=CambioTerInt;
        DMTerInt.QInsertarTerIntDolares.Execute;
      end;
    end;
    if CheckBox3 then     // 3
    begin
      if (Importe >=Min3) and (Importe <=Max3) then
      begin
        Imp3 :=Importe *Inc3;
        ImporteS:= FormatFloat('###,##0.00', Imp3);
        Total_Con_Iva2:=Imp3 * IVA+Imp3;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva3 );
        Iva3:=Total_Con_Iva3 - imp3;
        IvaS:=FormatFloat('###,##0.00', Iva3);

        // insertando en la lista de pesos con incremento.
        DMTerInt.QInsertarTerIntPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMTerInt.QInsertarTerIntPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMTerInt.QInsertarTerIntPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMTerInt.QInsertarTerIntPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMTerInt.QInsertarTerIntPesos.ParamByName('IVA').AsString:=IvaS;
        DMTerInt.QInsertarTerIntPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMTerInt.QInsertarTerIntPesos.ParamByName('NUMERO').AsFloat:=3;
        DMTerInt.QInsertarTerIntPesos.Execute;

        Imp3 :=Imp3/CambioTerInt;
        ImporteS:= FormatFloat('###,##0.00', Imp3);
        Total_Con_Iva3:= Total_Con_Iva3/CambioTerInt;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva3);
        Iva3:= Total_Con_Iva3-Imp3;
        IvaS:=FormatFloat('###,##0.00', Iva3);

        // Insertando en la lista de Materiales Dolares
        DMTerInt.QInsertarTerIntDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMTerInt.QInsertarTerIntDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMTerInt.QInsertarTerIntDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMTerInt.QInsertarTerIntDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMTerInt.QInsertarTerIntDolares.ParamByName('IVA').AsString:=IvaS;
        DMTerInt.QInsertarTerIntDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMTerInt.QInsertarTerIntDolares.ParamByName('CAMBIO').AsFloat:=CambioTerInt;
        DMTerInt.QInsertarTerIntDolares.Execute;

      end;
    end;
    if CheckBox4 then     // 4
    begin
      if (Importe >=Min4) and (Importe <=Max4) then
      begin
        Imp4 :=Importe *Inc4;
        ImporteS:= FormatFloat('###,##0.00', Imp4);
        Total_Con_Iva4:=Imp4 * IVA+Imp4;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva4 );
        Iva4:=Total_Con_Iva3 - imp4;
        IvaS:=FormatFloat('###,##0.00', Iva4);

        // insertando en la lista de pesos con incremento.
        DMTerInt.QInsertarTerIntPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMTerInt.QInsertarTerIntPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMTerInt.QInsertarTerIntPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMTerInt.QInsertarTerIntPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMTerInt.QInsertarTerIntPesos.ParamByName('IVA').AsString:=IvaS;
        DMTerInt.QInsertarTerIntPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMTerInt.QInsertarTerIntPesos.ParamByName('NUMERO').AsFloat:=4;
        DMTerInt.QInsertarTerIntPesos.Execute;

        Imp4 :=Imp4/CambioTerInt;
        ImporteS:= FormatFloat('###,##0.00', Imp4);
        Total_Con_Iva4:= Total_Con_Iva4/CambioTerInt;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva4);
        Iva4:= Total_Con_Iva4-Imp4;
        IvaS:=FormatFloat('###,##0.00', Iva4);

        // Insertando en la lista de Materiales Dolares
        DMTerInt.QInsertarTerIntDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMTerInt.QInsertarTerIntDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMTerInt.QInsertarTerIntDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMTerInt.QInsertarTerIntDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMTerInt.QInsertarTerIntDolares.ParamByName('IVA').AsString:=IvaS;
        DMTerInt.QInsertarTerIntDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMTerInt.QInsertarTerIntDolares.ParamByName('CAMBIO').AsFloat:=CambioTerInt;
        DMTerInt.QInsertarTerIntDolares.Execute;

      end;
    end;

    Synchronize(IniciarProgressBar);
  end;

  xls.Free;
  DM1.QEstadoPorActualizar.Execute;
  Synchronize(ActualizarGrids);
end;

procedure ThreadImportarTerapiaIntensiva.IniciarProgressBar;
var
posicion:Integer;
begin
   Fmain.cxProgressBar8.Properties.Min:=0;
   Fmain.cxProgressBar8.Properties.Max:=CantRowsTerapiaInt -1;
   Fmain.cxProgressBar8.Position:=Fmain.cxProgressBar8.Position+1;
   posicion:=Trunc(Fmain.cxProgressBar8.Position);
   Fmain.cxLabel50.Caption:=  IntToStr(Posicion)+ ' de ' +IntToStr(CantRowsTerapiaInt-1);
end;

procedure ThreadImportarTerapiaIntensiva.ActualizarGrids;
begin
  DMTerInt.TablaTerInt.open;
  DMTerInt.TablaTerInt.Refresh;
  DMTerInt.TablaTerIntPesos.open;
  DMTerInt.TablaTerIntPesos.Refresh;
  DMTerInt.TablaTerIntDolares.open;
  DMTerInt.TablaTerIntDolares.Refresh;
end;

function ThreadImportarTerapiaIntensiva.StringToPAnsiChar(stringVar: string): PAnsiChar;
var
  AnsString : AnsiString;
  InternalError : Boolean;
begin
  InternalError := false;
  Result := '';
  try
    if stringVar <> '' Then
    begin
       AnsString := AnsiString(StringVar);
       Result := PAnsiChar(PAnsiString(AnsString));
    end;
  Except
    InternalError := true;
  end;
  if InternalError or (String(Result) <> stringVar) then
  begin
    Raise Exception.Create('Conversion from string to PAnsiChar failed!');
  end;
end;


{ ThreadImportarTrasladoEnAmbulancia }

procedure ThreadImportarTrasladoEnAmbulancia.Execute;
var
i:Integer;
Codigo: Double;
Descripcion,Grupo: string;
Iva,IvaOriginal, Total_Con_Iva,Importe: Double;

ImporteS,IvaS,Total_Con_IvaS:string;
Iva1,Iva2,Iva3,Iva4, Total_Con_Iva1,Total_Con_Iva2,Total_Con_Iva3,Total_Con_Iva4:Double;

xls: TXlsFile;
row: integer;
XF: integer;
cell: TCellValue;

Min1,Min2,Min3,Min4:Double;
Max1,Max2,Max3,Max4:Double;
Inc1,Inc2,Inc3,Inc4:Double;
Dec1,Dec2,Dec3,Dec4:Double;
Imp1,Imp2,Imp3,Imp4:Double;
Checkbox1,Checkbox2,Checkbox3,Checkbox4:Boolean;
CambioTrasAmb:Double;
begin
  inherited;
  Sleep(100);
  CambioTrasAmb:=StrToFloat(Fmain.cxTextEdit18.Text);

  Min1:= StrTofloat(Fmain.cxTextEdit1.Text);
  Max1:= StrTofloat(Fmain.cxTextEdit2.Text);
  Inc1:= StrTofloat(Fmain.cxTextEdit3.Text);

  Min2:= StrTofloat(Fmain.cxTextEdit4.Text);
  Max2:= StrTofloat(Fmain.cxTextEdit5.Text);
  Inc2:= StrTofloat(Fmain.cxTextEdit7.Text);

  Min3:= StrTofloat(Fmain.cxTextEdit8.Text);
  Max3:= StrTofloat(Fmain.cxTextEdit10.Text);
  Inc3:= StrTofloat(Fmain.cxTextEdit9.Text);

  Min4:= StrTofloat(Fmain.cxTextEdit11.Text);
  Max4:= StrTofloat(Fmain.cxTextEdit13.Text);
  Inc4:= StrTofloat(Fmain.cxTextEdit12.Text);

  Checkbox1:=Fmain.cxCheckBox1.Checked;
  Checkbox2:=Fmain.cxCheckBox2.Checked;
  Checkbox3:=Fmain.cxCheckBox3.Checked;
  Checkbox4:=Fmain.cxCheckBox4.Checked;

  IvaOriginal:=StrToFloat(Fmain.cxtextedit6.text);
  Iva:=StrtoFloat (Fmain.cxtextedit6.text)/100;

  DMTrasAmb.QTruncateTrasAmb.Execute;
  DMTrasAmb.QTruncateTrasAmbPesos.Execute;
  DMTrasAmb.QTruncateTrasAmbDolares.Execute;

  xls := TXlsFile.Create(TPath.Combine(TPath.GetDocumentsPath, OrigenTrasAmb));
  CantRowsTrasAmb := xls.RowCount;
  for row := 2 to CantRowsTrasAmb do
  begin
    try
      XF := -1;
      cell := xls.GetCellValueIndexed(row, 1, XF);
      Codigo := cell.AsNumber;
      cell := xls.GetCellValueIndexed(row, 2, XF);
      Descripcion :=cell.ToString;
      cell := xls.GetCellValueIndexed(row, 3, XF);
      Grupo := cell.ToString;
      cell := xls.GetCellValueIndexed(row, 4, XF);
      Importe := cell.AsNumber;
    except
      Continue;
    end;

    ImporteS:= FormatFloat('###,##0.00', Importe);
    Total_Con_Iva :=Importe * iva+Importe;
    Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva );
    IvaS:=FormatFloat('###,##0.00', Total_Con_Iva - importe);

    // insertando en la lista de materiales original .
    DMTrasAmb.QInsertarTrasAmb.ParamByName('CODIGO').AsFloat:=codigo;
    DMTrasAmb.QInsertarTrasAmb.ParamByName('DESCRIPCION').AsString:=Descripcion;
    DMTrasAmb.QInsertarTrasAmb.ParamByName('GRUPO').AsString:=Grupo;
    DMTrasAmb.QInsertarTrasAmb.ParamByName('IMPORTE').AsString:=ImporteS;
    DMTrasAmb.QInsertarTrasAmb.ParamByName('IVA').AsString:=IvaS;
    DMTrasAmb.QInsertarTrasAmb.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
    DMTrasAmb.QInsertarTrasAmb.Execute;



    // Buscando valores de incremento y decremento
    if CheckBox1 then     // 1
    begin
      if (Importe >=Min1) and (Importe <=Max1) then
      begin
        Imp1 :=Importe *Inc1;
        ImporteS:= FormatFloat('###,##0.00', Imp1);
        Total_Con_Iva1:=Imp1 * IVA+Imp1;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva1 );
        Iva1:=Total_Con_Iva1 - imp1;
        IvaS:=FormatFloat('###,##0.00', Iva1);

        // insertando en la lista de pesos con incremento.
        DMTrasAmb.QInsertarTrasAmbPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMTrasAmb.QInsertarTrasAmbPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMTrasAmb.QInsertarTrasAmbPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMTrasAmb.QInsertarTrasAmbPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMTrasAmb.QInsertarTrasAmbPesos.ParamByName('IVA').AsString:=IvaS;
        DMTrasAmb.QInsertarTrasAmbPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMTrasAmb.QInsertarTrasAmbPesos.ParamByName('NUMERO').AsFloat:=1;
        DMTrasAmb.QInsertarTrasAmbPesos.Execute;

        Imp1 :=Imp1/CambioTrasAmb;
        ImporteS:= FormatFloat('###,##0.00', Imp1);
        Total_Con_Iva1:= Total_Con_Iva1/CambioTrasAmb;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva1);
        Iva1:= Total_Con_Iva1-Imp1;
        IvaS:=FormatFloat('###,##0.00', Iva1);

        // Insertando en la lista de Materiales Dolares
        DMTrasAmb.QInsertarTrasAmbDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMTrasAmb.QInsertarTrasAmbDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMTrasAmb.QInsertarTrasAmbDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMTrasAmb.QInsertarTrasAmbDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMTrasAmb.QInsertarTrasAmbDolares.ParamByName('IVA').AsString:=IvaS;
        DMTrasAmb.QInsertarTrasAmbDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMTrasAmb.QInsertarTrasAmbDolares.ParamByName('CAMBIO').AsFloat:=CambioTrasAmb;
        DMTrasAmb.QInsertarTrasAmbDolares.Execute;

      end;
    end;
    if CheckBox2 then     // 2
    begin
      if (Importe >=Min2) and (Importe <=Max2) then
      begin
        Imp2 :=Importe *Inc2;
        ImporteS:= FormatFloat('###,##0.00', Imp2);
        Total_Con_Iva2:=Imp2 * IVA+Imp2;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva2 );
        Iva2:=Total_Con_Iva2 - imp2;
        IvaS:=FormatFloat('###,##0.00', Iva2);

        // insertando en la lista de pesos con incremento.
        DMTrasAmb.QInsertarTrasAmbPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMTrasAmb.QInsertarTrasAmbPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMTrasAmb.QInsertarTrasAmbPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMTrasAmb.QInsertarTrasAmbPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMTrasAmb.QInsertarTrasAmbPesos.ParamByName('IVA').AsString:=IvaS;
        DMTrasAmb.QInsertarTrasAmbPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMTrasAmb.QInsertarTrasAmbPesos.ParamByName('NUMERO').AsFloat:=2;
        DMTrasAmb.QInsertarTrasAmbPesos.Execute;

        Imp2 :=Imp2/CambioTrasAmb;
        ImporteS:= FormatFloat('###,##0.00', Imp2);
        Total_Con_Iva2:= Total_Con_Iva2/CambioTrasAmb;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva2);
        Iva2:= Total_Con_Iva1-Imp2;
        IvaS:=FormatFloat('###,##0.00', Iva2);

        // Insertando en la lista de Materiales Dolares
        DMTrasAmb.QInsertarTrasAmbDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMTrasAmb.QInsertarTrasAmbDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMTrasAmb.QInsertarTrasAmbDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMTrasAmb.QInsertarTrasAmbDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMTrasAmb.QInsertarTrasAmbDolares.ParamByName('IVA').AsString:=IvaS;
        DMTrasAmb.QInsertarTrasAmbDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMTrasAmb.QInsertarTrasAmbDolares.ParamByName('CAMBIO').AsFloat:=CambioTrasAmb;
        DMTrasAmb.QInsertarTrasAmbDolares.Execute;
      end;
    end;
    if CheckBox3 then     // 3
    begin
      if (Importe >=Min3) and (Importe <=Max3) then
      begin
        Imp3 :=Importe *Inc3;
        ImporteS:= FormatFloat('###,##0.00', Imp3);
        Total_Con_Iva3:=Imp3 * IVA+Imp3;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva3 );
        Iva3:=Total_Con_Iva2 - imp3;
        IvaS:=FormatFloat('###,##0.00', Iva3);

        // insertando en la lista de pesos con incremento.
        DMTrasAmb.QInsertarTrasAmbPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMTrasAmb.QInsertarTrasAmbPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMTrasAmb.QInsertarTrasAmbPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMTrasAmb.QInsertarTrasAmbPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMTrasAmb.QInsertarTrasAmbPesos.ParamByName('IVA').AsString:=IvaS;
        DMTrasAmb.QInsertarTrasAmbPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMTrasAmb.QInsertarTrasAmbPesos.ParamByName('NUMERO').AsFloat:=3;
        DMTrasAmb.QInsertarTrasAmbPesos.Execute;

        Imp3 :=Imp3/CambioTrasAmb;
        ImporteS:= FormatFloat('###,##0.00', Imp3);
        Total_Con_Iva3:= Total_Con_Iva3/CambioTrasAmb;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva3);
        Iva3:= Total_Con_Iva1-Imp3;
        IvaS:=FormatFloat('###,##0.00', Iva3);

        // Insertando en la lista de Materiales Dolares
        DMTrasAmb.QInsertarTrasAmbDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMTrasAmb.QInsertarTrasAmbDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMTrasAmb.QInsertarTrasAmbDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMTrasAmb.QInsertarTrasAmbDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMTrasAmb.QInsertarTrasAmbDolares.ParamByName('IVA').AsString:=IvaS;
        DMTrasAmb.QInsertarTrasAmbDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMTrasAmb.QInsertarTrasAmbDolares.ParamByName('CAMBIO').AsFloat:=CambioTrasAmb;
        DMTrasAmb.QInsertarTrasAmbDolares.Execute;

      end;
    end;
    if CheckBox4 then     // 4
    begin
      if (Importe >=Min4) and (Importe <=Max4) then
      begin
        Imp4 :=Importe *Inc4;
        ImporteS:= FormatFloat('###,##0.00', Imp4);
        Total_Con_Iva4:=Imp4 * IVA+Imp4;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva4 );
        Iva4:=Total_Con_Iva2 - imp4;
        IvaS:=FormatFloat('###,##0.00', Iva4);

        // insertando en la lista de pesos con incremento.
        DMTrasAmb.QInsertarTrasAmbPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMTrasAmb.QInsertarTrasAmbPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMTrasAmb.QInsertarTrasAmbPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMTrasAmb.QInsertarTrasAmbPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMTrasAmb.QInsertarTrasAmbPesos.ParamByName('IVA').AsString:=IvaS;
        DMTrasAmb.QInsertarTrasAmbPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMTrasAmb.QInsertarTrasAmbPesos.ParamByName('NUMERO').AsFloat:=4;
        DMTrasAmb.QInsertarTrasAmbPesos.Execute;

        Imp4 :=Imp4/CambioTrasAmb;
        ImporteS:= FormatFloat('###,##0.00', Imp4);
        Total_Con_Iva4:= Total_Con_Iva4/CambioTrasAmb;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva4);
        Iva4:= Total_Con_Iva1-Imp4;
        IvaS:=FormatFloat('###,##0.00', Iva4);

        // Insertando en la lista de Materiales Dolares
        DMTrasAmb.QInsertarTrasAmbDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMTrasAmb.QInsertarTrasAmbDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMTrasAmb.QInsertarTrasAmbDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMTrasAmb.QInsertarTrasAmbDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMTrasAmb.QInsertarTrasAmbDolares.ParamByName('IVA').AsString:=IvaS;
        DMTrasAmb.QInsertarTrasAmbDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMTrasAmb.QInsertarTrasAmbDolares.ParamByName('CAMBIO').AsFloat:=CambioTrasAmb;
        DMTrasAmb.QInsertarTrasAmbDolares.Execute;

      end;
    end;

    Synchronize(IniciarProgressBar);
  end;

  xls.Free;
  DM1.QEstadoPorActualizar.Execute;
  Synchronize(ActualizarGrids);
end;

procedure ThreadImportarTrasladoEnAmbulancia.IniciarProgressBar;
var
posicion:Integer;
begin
   Fmain.cxProgressBar9.Properties.Min:=0;
   Fmain.cxProgressBar9.Properties.Max:=CantRowsTrasAmb -1;
   Fmain.cxProgressBar9.Position:=Fmain.cxProgressBar9.Position+1;
   posicion:=Trunc(Fmain.cxProgressBar9.Position);
   Fmain.cxLabel60.Caption:=  IntToStr(Posicion)+ ' de ' +IntToStr(CantRowsTrasAmb-1);
end;

procedure ThreadImportarTrasladoEnAmbulancia.ActualizarGrids;
begin
  DMTrasAmb.TablaTrasAmb.open;
  DMTrasAmb.TablaTrasAmb.Refresh;
  DMTrasAmb.TablaTrasAmbPesos.open;
  DMTrasAmb.TablaTrasAmbPesos.Refresh;
  DMTrasAmb.TablaTrasAmbDolares.open;
  DMTrasAmb.TablaTrasAmbDolares.Refresh;
end;

function ThreadImportarTrasladoEnAmbulancia.StringToPAnsiChar(stringVar: string): PAnsiChar;
var
  AnsString : AnsiString;
  InternalError : Boolean;
begin
  InternalError := false;
  Result := '';
  try
    if stringVar <> '' Then
    begin
       AnsString := AnsiString(StringVar);
       Result := PAnsiChar(PAnsiString(AnsString));
    end;
  Except
    InternalError := true;
  end;
  if InternalError or (String(Result) <> stringVar) then
  begin
    Raise Exception.Create('Conversion from string to PAnsiChar failed!');
  end;
end;


{ ThreadImportarCamaraHiperbarica }

procedure ThreadImportarCamaraHiperbarica.Execute;
var
i:Integer;
Codigo: Double;
Descripcion,Grupo: string;
Iva,IvaOriginal, Total_Con_Iva,Importe: Double;

ImporteS,IvaS,Total_Con_IvaS:string;
Iva1,Iva2,Iva3,Iva4, Total_Con_Iva1,Total_Con_Iva2,Total_Con_Iva3,Total_Con_Iva4:Double;

xls: TXlsFile;
row: integer;
XF: integer;
cell: TCellValue;

Min1,Min2,Min3,Min4:Double;
Max1,Max2,Max3,Max4:Double;
Inc1,Inc2,Inc3,Inc4:Double;
Dec1,Dec2,Dec3,Dec4:Double;
Imp1,Imp2,Imp3,Imp4:Double;
Checkbox1,Checkbox2,Checkbox3,Checkbox4:Boolean;
CambioCamHiper:Double;
begin
  inherited;
  Sleep(100);
  CambioCamHiper:=StrToFloat(Fmain.cxTextEdit18.Text);

  Min1:= StrTofloat(Fmain.cxTextEdit1.Text);
  Max1:= StrTofloat(Fmain.cxTextEdit2.Text);
  Inc1:= StrTofloat(Fmain.cxTextEdit3.Text);

  Min2:= StrTofloat(Fmain.cxTextEdit4.Text);
  Max2:= StrTofloat(Fmain.cxTextEdit5.Text);
  Inc2:= StrTofloat(Fmain.cxTextEdit7.Text);

  Min3:= StrTofloat(Fmain.cxTextEdit8.Text);
  Max3:= StrTofloat(Fmain.cxTextEdit10.Text);
  Inc3:= StrTofloat(Fmain.cxTextEdit9.Text);

  Min4:= StrTofloat(Fmain.cxTextEdit11.Text);
  Max4:= StrTofloat(Fmain.cxTextEdit13.Text);
  Inc4:= StrTofloat(Fmain.cxTextEdit12.Text);

  Checkbox1:=Fmain.cxCheckBox1.Checked;
  Checkbox2:=Fmain.cxCheckBox2.Checked;
  Checkbox3:=Fmain.cxCheckBox3.Checked;
  Checkbox4:=Fmain.cxCheckBox4.Checked;

  IvaOriginal:=StrToFloat(Fmain.cxtextedit6.text);
  Iva:=StrtoFloat (Fmain.cxtextedit6.text)/100;

  DMCamHiper.QTruncateCamHiper.Execute;
  DMCamHiper.QTruncateCamHiperPesos.Execute;
  DMCamHiper.QTruncateCamHiperDolares.Execute;

  xls := TXlsFile.Create(TPath.Combine(TPath.GetDocumentsPath, OrigenCamHiper));
  CantRowsCamHiper := xls.RowCount;
  for row := 2 to CantRowsCamHiper do
  begin
    try
      XF := -1;
      cell := xls.GetCellValueIndexed(row, 1, XF);
      Codigo := cell.AsNumber;
      cell := xls.GetCellValueIndexed(row, 2, XF);
      Descripcion :=cell.ToString;
      cell := xls.GetCellValueIndexed(row, 3, XF);
      Grupo := cell.ToString;
      cell := xls.GetCellValueIndexed(row, 4, XF);
      Importe := cell.AsNumber;
    except
      Continue;
    end;

    ImporteS:= FormatFloat('###,##0.00', Importe);
    Total_Con_Iva :=Importe * iva+Importe;
    Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva );
    IvaS:=FormatFloat('###,##0.00', Total_Con_Iva - importe);

    // insertando en la lista de materiales original .
    DMCamHiper.QInsertarCamHiper.ParamByName('CODIGO').AsFloat:=codigo;
    DMCamHiper.QInsertarCamHiper.ParamByName('DESCRIPCION').AsString:=Descripcion;
    DMCamHiper.QInsertarCamHiper.ParamByName('GRUPO').AsString:=Grupo;
    DMCamHiper.QInsertarCamHiper.ParamByName('IMPORTE').AsString:=ImporteS;
    DMCamHiper.QInsertarCamHiper.ParamByName('IVA').AsString:=IvaS;
    DMCamHiper.QInsertarCamHiper.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
    DMCamHiper.QInsertarCamHiper.Execute;



    // Buscando valores de incremento y decremento
    if CheckBox1 then     // 1
    begin
      if (Importe >=Min1) and (Importe <=Max1) then
      begin
        Imp1 :=Importe *Inc1;
        ImporteS:= FormatFloat('###,##0.00', Imp1);
        Total_Con_Iva1:=Imp1 * IVA+Imp1;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva1 );
        Iva1:=Total_Con_Iva1 - imp1;
        IvaS:=FormatFloat('###,##0.00', Iva1);

        // insertando en la lista de pesos con incremento.
        DMCamHiper.QInsertarCamHiperPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMCamHiper.QInsertarCamHiperPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMCamHiper.QInsertarCamHiperPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMCamHiper.QInsertarCamHiperPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMCamHiper.QInsertarCamHiperPesos.ParamByName('IVA').AsString:=IvaS;
        DMCamHiper.QInsertarCamHiperPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMCamHiper.QInsertarCamHiperPesos.ParamByName('NUMERO').AsFloat:=1;
        DMCamHiper.QInsertarCamHiperPesos.Execute;

        Imp1 :=Imp1/CambioCamHiper;
        ImporteS:= FormatFloat('###,##0.00', Imp1);
        Total_Con_Iva1:= Total_Con_Iva1/CambioCamHiper;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva1);
        Iva1:= Total_Con_Iva1-Imp1;
        IvaS:=FormatFloat('###,##0.00', Iva1);

        // Insertando en la lista de Materiales Dolares
        DMCamHiper.QInsertarCamHiperDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMCamHiper.QInsertarCamHiperDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMCamHiper.QInsertarCamHiperDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMCamHiper.QInsertarCamHiperDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMCamHiper.QInsertarCamHiperDolares.ParamByName('IVA').AsString:=IvaS;
        DMCamHiper.QInsertarCamHiperDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMCamHiper.QInsertarCamHiperDolares.ParamByName('CAMBIO').AsFloat:=CambioCamHiper;
        DMCamHiper.QInsertarCamHiperDolares.Execute;

      end;
    end;
    if CheckBox2 then     // 2
    begin
      if (Importe >=Min2) and (Importe <=Max2) then
      begin
        Imp2 :=Importe *Inc2;
        ImporteS:= FormatFloat('###,##0.00', Imp2);
        Total_Con_Iva2:=Imp2 * IVA+Imp2;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva2 );
        Iva2:=Total_Con_Iva2 - imp2;
        IvaS:=FormatFloat('###,##0.00', Iva2);

        // insertando en la lista de pesos con incremento.
        DMCamHiper.QInsertarCamHiperPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMCamHiper.QInsertarCamHiperPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMCamHiper.QInsertarCamHiperPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMCamHiper.QInsertarCamHiperPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMCamHiper.QInsertarCamHiperPesos.ParamByName('IVA').AsString:=IvaS;
        DMCamHiper.QInsertarCamHiperPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMCamHiper.QInsertarCamHiperPesos.ParamByName('NUMERO').AsFloat:=2;
        DMCamHiper.QInsertarCamHiperPesos.Execute;

        Imp2 :=Imp2/CambioCamHiper;
        ImporteS:= FormatFloat('###,##0.00', Imp2);
        Total_Con_Iva2:= Total_Con_Iva2/CambioCamHiper;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva2);
        Iva2:= Total_Con_Iva2-Imp2;
        IvaS:=FormatFloat('###,##0.00', Iva2);

        // Insertando en la lista de Materiales Dolares
        DMCamHiper.QInsertarCamHiperDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMCamHiper.QInsertarCamHiperDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMCamHiper.QInsertarCamHiperDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMCamHiper.QInsertarCamHiperDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMCamHiper.QInsertarCamHiperDolares.ParamByName('IVA').AsString:=IvaS;
        DMCamHiper.QInsertarCamHiperDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMCamHiper.QInsertarCamHiperDolares.ParamByName('CAMBIO').AsFloat:=CambioCamHiper;
        DMCamHiper.QInsertarCamHiperDolares.Execute;
      end;
    end;
    if CheckBox3 then     // 3
    begin
      if (Importe >=Min3) and (Importe <=Max3) then
      begin
        Imp3 :=Importe *Inc3;
        ImporteS:= FormatFloat('###,##0.00', Imp3);
        Total_Con_Iva3:=Imp3 * IVA+Imp3;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva3 );
        Iva3:=Total_Con_Iva3 - imp3;
        IvaS:=FormatFloat('###,##0.00', Iva3);

        // insertando en la lista de pesos con incremento.
        DMCamHiper.QInsertarCamHiperPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMCamHiper.QInsertarCamHiperPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMCamHiper.QInsertarCamHiperPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMCamHiper.QInsertarCamHiperPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMCamHiper.QInsertarCamHiperPesos.ParamByName('IVA').AsString:=IvaS;
        DMCamHiper.QInsertarCamHiperPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMCamHiper.QInsertarCamHiperPesos.ParamByName('NUMERO').AsFloat:=2;
        DMCamHiper.QInsertarCamHiperPesos.Execute;

        Imp3 :=Imp3/CambioCamHiper;
        ImporteS:= FormatFloat('###,##0.00', Imp3);
        Total_Con_Iva3:= Total_Con_Iva3/CambioCamHiper;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva3);
        Iva3:= Total_Con_Iva3-Imp3;
        IvaS:=FormatFloat('###,##0.00', Iva2);

        // Insertando en la lista de Materiales Dolares
        DMCamHiper.QInsertarCamHiperDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMCamHiper.QInsertarCamHiperDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMCamHiper.QInsertarCamHiperDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMCamHiper.QInsertarCamHiperDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMCamHiper.QInsertarCamHiperDolares.ParamByName('IVA').AsString:=IvaS;
        DMCamHiper.QInsertarCamHiperDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMCamHiper.QInsertarCamHiperDolares.ParamByName('CAMBIO').AsFloat:=CambioCamHiper;
        DMCamHiper.QInsertarCamHiperDolares.Execute;

      end;
    end;
    if CheckBox4 then     // 4
    begin
      if (Importe >=Min4) and (Importe <=Max4) then
      begin
        Imp4 :=Importe *Inc4;
        ImporteS:= FormatFloat('###,##0.00', Imp4);
        Total_Con_Iva4:=Imp4 * IVA+Imp4;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva4 );
        Iva4:=Total_Con_Iva4 - imp4;
        IvaS:=FormatFloat('###,##0.00', Iva4);

        // insertando en la lista de pesos con incremento.
        DMCamHiper.QInsertarCamHiperPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMCamHiper.QInsertarCamHiperPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMCamHiper.QInsertarCamHiperPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMCamHiper.QInsertarCamHiperPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMCamHiper.QInsertarCamHiperPesos.ParamByName('IVA').AsString:=IvaS;
        DMCamHiper.QInsertarCamHiperPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMCamHiper.QInsertarCamHiperPesos.ParamByName('NUMERO').AsFloat:=4;
        DMCamHiper.QInsertarCamHiperPesos.Execute;

        Imp4 :=Imp4/CambioCamHiper;
        ImporteS:= FormatFloat('###,##0.00', Imp4);
        Total_Con_Iva4:= Total_Con_Iva4/CambioCamHiper;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva4);
        Iva4:= Total_Con_Iva4-Imp4;
        IvaS:=FormatFloat('###,##0.00', Iva4);

        // Insertando en la lista de Materiales Dolares
        DMCamHiper.QInsertarCamHiperDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMCamHiper.QInsertarCamHiperDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMCamHiper.QInsertarCamHiperDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMCamHiper.QInsertarCamHiperDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMCamHiper.QInsertarCamHiperDolares.ParamByName('IVA').AsString:=IvaS;
        DMCamHiper.QInsertarCamHiperDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMCamHiper.QInsertarCamHiperDolares.ParamByName('CAMBIO').AsFloat:=CambioCamHiper;
        DMCamHiper.QInsertarCamHiperDolares.Execute;

      end;
    end;

    Synchronize(IniciarProgressBar);
  end;

  xls.Free;
  DM1.QEstadoPorActualizar.Execute;
  Synchronize(ActualizarGrids);
end;

procedure ThreadImportarCamaraHiperbarica.IniciarProgressBar;
var
posicion:Integer;
begin
   Fmain.cxProgressBar10.Properties.Min:=0;
   Fmain.cxProgressBar10.Properties.Max:=CantRowsCamHiper -1;
   Fmain.cxProgressBar10.Position:=Fmain.cxProgressBar10.Position+1;
   posicion:=Trunc(Fmain.cxProgressBar10.Position);
   Fmain.cxLabel62.Caption:=  IntToStr(Posicion)+ ' de ' +IntToStr(CantRowsCamHiper-1);
end;

procedure ThreadImportarCamaraHiperbarica.ActualizarGrids;
begin
  DMCamHiper.TablaCamHiper.open;
  DMCamHiper.TablaCamHiper.Refresh;
  DMCamHiper.TablaCamHiperPesos.open;
  DMCamHiper.TablaCamHiperPesos.Refresh;
  DMCamHiper.TablaCamHiperDolares.open;
  DMCamHiper.TablaCamHiperDolares.Refresh;
end;

function ThreadImportarCamaraHiperbarica.StringToPAnsiChar(stringVar: string): PAnsiChar;
var
  AnsString : AnsiString;
  InternalError : Boolean;
begin
  InternalError := false;
  Result := '';
  try
    if stringVar <> '' Then
    begin
       AnsString := AnsiString(StringVar);
       Result := PAnsiChar(PAnsiString(AnsString));
    end;
  Except
    InternalError := true;
  end;
  if InternalError or (String(Result) <> stringVar) then
  begin
    Raise Exception.Create('Conversion from string to PAnsiChar failed!');
  end;
end;


{ ThreadImportarMedicinaNuclear }

procedure ThreadImportarMedicinaNuclear.Execute;
var
i:Integer;
Codigo: Double;
Descripcion,Grupo: string;
Iva,IvaOriginal, Total_Con_Iva,Importe: Double;

ImporteS,IvaS,Total_Con_IvaS:string;
Iva1,Iva2,Iva3,Iva4, Total_Con_Iva1,Total_Con_Iva2,Total_Con_Iva3,Total_Con_Iva4:Double;

xls: TXlsFile;
row: integer;
XF: integer;
cell: TCellValue;

Min1,Min2,Min3,Min4:Double;
Max1,Max2,Max3,Max4:Double;
Inc1,Inc2,Inc3,Inc4:Double;
Dec1,Dec2,Dec3,Dec4:Double;
Imp1,Imp2,Imp3,Imp4:Double;
Checkbox1,Checkbox2,Checkbox3,Checkbox4:Boolean;
CambioMedNuc:Double;
begin
  inherited;
  Sleep(100);
  CambioMedNuc:=StrToFloat(Fmain.cxTextEdit18.Text);

  Min1:= StrTofloat(Fmain.cxTextEdit1.Text);
  Max1:= StrTofloat(Fmain.cxTextEdit2.Text);
  Inc1:= StrTofloat(Fmain.cxTextEdit3.Text);

  Min2:= StrTofloat(Fmain.cxTextEdit4.Text);
  Max2:= StrTofloat(Fmain.cxTextEdit5.Text);
  Inc2:= StrTofloat(Fmain.cxTextEdit7.Text);

  Min3:= StrTofloat(Fmain.cxTextEdit8.Text);
  Max3:= StrTofloat(Fmain.cxTextEdit10.Text);
  Inc3:= StrTofloat(Fmain.cxTextEdit9.Text);

  Min4:= StrTofloat(Fmain.cxTextEdit11.Text);
  Max4:= StrTofloat(Fmain.cxTextEdit13.Text);
  Inc4:= StrTofloat(Fmain.cxTextEdit12.Text);

  Checkbox1:=Fmain.cxCheckBox1.Checked;
  Checkbox2:=Fmain.cxCheckBox2.Checked;
  Checkbox3:=Fmain.cxCheckBox3.Checked;
  Checkbox4:=Fmain.cxCheckBox4.Checked;

  IvaOriginal:=StrToFloat(Fmain.cxtextedit6.text);
  Iva:=StrtoFloat (Fmain.cxtextedit6.text)/100;

  DMMedNuc.QTruncateMedNuc.Execute;
  DMMedNuc.QTruncateMedNucPesos.Execute;
  DMMedNuc.QTruncateMedNucDolares.Execute;

  xls := TXlsFile.Create(TPath.Combine(TPath.GetDocumentsPath, OrigenMedNuc));
  CantRowsMedNuc := xls.RowCount;
  for row := 2 to CantRowsMedNuc do
  begin
    try
      XF := -1;
      cell := xls.GetCellValueIndexed(row, 1, XF);
      Codigo := cell.AsNumber;
      cell := xls.GetCellValueIndexed(row, 2, XF);
      Descripcion :=cell.ToString;
      cell := xls.GetCellValueIndexed(row, 3, XF);
      Grupo := cell.ToString;
      cell := xls.GetCellValueIndexed(row, 4, XF);
      Importe := cell.AsNumber;
    except
      Continue;
    end;

    ImporteS:= FormatFloat('###,##0.00', Importe);
    Total_Con_Iva :=Importe * iva+Importe;
    Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva );
    IvaS:=FormatFloat('###,##0.00', Total_Con_Iva - importe);

    // insertando en la lista de materiales original .
    DMMedNuc.QInsertarMedNuc.ParamByName('CODIGO').AsFloat:=codigo;
    DMMedNuc.QInsertarMedNuc.ParamByName('DESCRIPCION').AsString:=Descripcion;
    DMMedNuc.QInsertarMedNuc.ParamByName('GRUPO').AsString:=Grupo;
    DMMedNuc.QInsertarMedNuc.ParamByName('IMPORTE').AsString:=ImporteS;
    DMMedNuc.QInsertarMedNuc.ParamByName('IVA').AsString:=IvaS;
    DMMedNuc.QInsertarMedNuc.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
    DMMedNuc.QInsertarMedNuc.Execute;

    // insertando en la lista de pesos con incremento.
    DMMedNuc.QInsertarMedNucPesos.ParamByName('CODIGO').AsFloat:=codigo;
    DMMedNuc.QInsertarMedNucPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
    DMMedNuc.QInsertarMedNucPesos.ParamByName('GRUPO').AsString:=Grupo;

    // Buscando valores de incremento y decremento
    if CheckBox1 then     // 1
    begin
      if (Importe >=Min1) and (Importe <=Max1) then
      begin
        Imp1 :=Importe *Inc1;
        ImporteS:= FormatFloat('###,##0.00', Imp1);
        Total_Con_Iva1:=Imp1 * IVA+Imp1;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva1 );
        Iva1:=Total_Con_Iva1 - imp1;
        IvaS:=FormatFloat('###,##0.00', Iva1);

        // insertando en la lista de pesos con incremento.
        DMMedNuc.QInsertarMedNucPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMMedNuc.QInsertarMedNucPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMMedNuc.QInsertarMedNucPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMMedNuc.QInsertarMedNucPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMMedNuc.QInsertarMedNucPesos.ParamByName('IVA').AsString:=IvaS;
        DMMedNuc.QInsertarMedNucPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMMedNuc.QInsertarMedNucPesos.ParamByName('NUMERO').AsFloat:=1;
        DMMedNuc.QInsertarMedNucPesos.Execute;

        Imp1 :=Imp1/CambioMedNuc;
        ImporteS:= FormatFloat('###,##0.00', Imp1);
        Total_Con_Iva1:= Total_Con_Iva1/CambioMedNuc;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva1);
        Iva1:= Total_Con_Iva1-Imp1;
        IvaS:=FormatFloat('###,##0.00', Iva1);

        // Insertando en la lista de Materiales Dolares
        DMMedNuc.QInsertarMedNucDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMMedNuc.QInsertarMedNucDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMMedNuc.QInsertarMedNucDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMMedNuc.QInsertarMedNucDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMMedNuc.QInsertarMedNucDolares.ParamByName('IVA').AsString:=IvaS;
        DMMedNuc.QInsertarMedNucDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMMedNuc.QInsertarMedNucDolares.ParamByName('CAMBIO').AsFloat:=CambioMedNuc;
        DMMedNuc.QInsertarMedNucDolares.Execute;

      end;
    end;
    if CheckBox2 then     // 2
    begin
      if (Importe >=Min2) and (Importe <=Max2) then
      begin
        Imp2 :=Importe *Inc2;
        ImporteS:= FormatFloat('###,##0.00', Imp2);
        Total_Con_Iva2:=Imp2 * IVA+Imp2;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva2 );
        Iva2:=Total_Con_Iva2 - imp2;
        IvaS:=FormatFloat('###,##0.00', Iva2);

        // insertando en la lista de pesos con incremento.
        DMMedNuc.QInsertarMedNucPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMMedNuc.QInsertarMedNucPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMMedNuc.QInsertarMedNucPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMMedNuc.QInsertarMedNucPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMMedNuc.QInsertarMedNucPesos.ParamByName('IVA').AsString:=IvaS;
        DMMedNuc.QInsertarMedNucPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMMedNuc.QInsertarMedNucPesos.ParamByName('NUMERO').AsFloat:=2;
        DMMedNuc.QInsertarMedNucPesos.Execute;

        Imp2 :=Imp2/CambioMedNuc;
        ImporteS:= FormatFloat('###,##0.00', Imp2);
        Total_Con_Iva2:= Total_Con_Iva2/CambioMedNuc;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva2);
        Iva2:= Total_Con_Iva2-Imp2;
        IvaS:=FormatFloat('###,##0.00', Iva2);

        // Insertando en la lista de Materiales Dolares
        DMMedNuc.QInsertarMedNucDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMMedNuc.QInsertarMedNucDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMMedNuc.QInsertarMedNucDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMMedNuc.QInsertarMedNucDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMMedNuc.QInsertarMedNucDolares.ParamByName('IVA').AsString:=IvaS;
        DMMedNuc.QInsertarMedNucDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMMedNuc.QInsertarMedNucDolares.ParamByName('CAMBIO').AsFloat:=CambioMedNuc;
        DMMedNuc.QInsertarMedNucDolares.Execute;
      end;
    end;
    if CheckBox3 then     // 3
    begin
      if (Importe >=Min3) and (Importe <=Max3) then
      begin
        Imp3 :=Importe *Inc3;
        ImporteS:= FormatFloat('###,##0.00', Imp3);
        Total_Con_Iva3:=Imp3 * IVA+Imp3;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva3 );
        Iva3:=Total_Con_Iva3 - imp3;
        IvaS:=FormatFloat('###,##0.00', Iva3);

        // insertando en la lista de pesos con incremento.
        DMMedNuc.QInsertarMedNucPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMMedNuc.QInsertarMedNucPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMMedNuc.QInsertarMedNucPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMMedNuc.QInsertarMedNucPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMMedNuc.QInsertarMedNucPesos.ParamByName('IVA').AsString:=IvaS;
        DMMedNuc.QInsertarMedNucPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMMedNuc.QInsertarMedNucPesos.ParamByName('NUMERO').AsFloat:=3;
        DMMedNuc.QInsertarMedNucPesos.Execute;

        Imp3 :=Imp3/CambioMedNuc;
        ImporteS:= FormatFloat('###,##0.00', Imp3);
        Total_Con_Iva3:= Total_Con_Iva3/CambioMedNuc;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva3);
        Iva3:= Total_Con_Iva3-Imp3;
        IvaS:=FormatFloat('###,##0.00', Iva3);

        // Insertando en la lista de Materiales Dolares
        DMMedNuc.QInsertarMedNucDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMMedNuc.QInsertarMedNucDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMMedNuc.QInsertarMedNucDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMMedNuc.QInsertarMedNucDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMMedNuc.QInsertarMedNucDolares.ParamByName('IVA').AsString:=IvaS;
        DMMedNuc.QInsertarMedNucDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMMedNuc.QInsertarMedNucDolares.ParamByName('CAMBIO').AsFloat:=CambioMedNuc;
        DMMedNuc.QInsertarMedNucDolares.Execute;

      end;
    end;
    if CheckBox4 then     // 4
    begin
      if (Importe >=Min4) and (Importe <=Max4) then
      begin
        Imp4 :=Importe *Inc4;
        ImporteS:= FormatFloat('###,##0.00', Imp4);
        Total_Con_Iva4:=Imp4 * IVA+Imp4;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva4 );
        Iva4:=Total_Con_Iva4 - imp4;
        IvaS:=FormatFloat('###,##0.00', Iva4);

        // insertando en la lista de pesos con incremento.
        DMMedNuc.QInsertarMedNucPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMMedNuc.QInsertarMedNucPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMMedNuc.QInsertarMedNucPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMMedNuc.QInsertarMedNucPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMMedNuc.QInsertarMedNucPesos.ParamByName('IVA').AsString:=IvaS;
        DMMedNuc.QInsertarMedNucPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMMedNuc.QInsertarMedNucPesos.ParamByName('NUMERO').AsFloat:=4;
        DMMedNuc.QInsertarMedNucPesos.Execute;

        Imp4 :=Imp4/CambioMedNuc;
        ImporteS:= FormatFloat('###,##0.00', Imp4);
        Total_Con_Iva4:= Total_Con_Iva4/CambioMedNuc;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva4);
        Iva4:= Total_Con_Iva4-Imp4;
        IvaS:=FormatFloat('###,##0.00', Iva4);

        // Insertando en la lista de Materiales Dolares
        DMMedNuc.QInsertarMedNucDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMMedNuc.QInsertarMedNucDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMMedNuc.QInsertarMedNucDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMMedNuc.QInsertarMedNucDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMMedNuc.QInsertarMedNucDolares.ParamByName('IVA').AsString:=IvaS;
        DMMedNuc.QInsertarMedNucDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMMedNuc.QInsertarMedNucDolares.ParamByName('CAMBIO').AsFloat:=CambioMedNuc;
        DMMedNuc.QInsertarMedNucDolares.Execute;

      end;
    end;

    Synchronize(IniciarProgressBar);
  end;

  xls.Free;
  DM1.QEstadoPorActualizar.Execute;
  Synchronize(ActualizarGrids);
end;

procedure ThreadImportarMedicinaNuclear.IniciarProgressBar;
var
posicion:Integer;
begin
   Fmain.cxProgressBar11.Properties.Min:=0;
   Fmain.cxProgressBar11.Properties.Max:=CantRowsMedNuc -1;
   Fmain.cxProgressBar11.Position:=Fmain.cxProgressBar11.Position+1;
   posicion:=Trunc(Fmain.cxProgressBar11.Position);
   Fmain.cxLabel64.Caption:=  IntToStr(Posicion)+ ' de ' +IntToStr(CantRowsMedNuc-1);
end;

procedure ThreadImportarMedicinaNuclear.ActualizarGrids;
begin
  DMMedNuc.TablaMedNuc.open;
  DMMedNuc.TablaMedNuc.Refresh;
  DMMedNuc.TablaMedNucPesos.open;
  DMMedNuc.TablaMedNucPesos.Refresh;
  DMMedNuc.TablaMedNucDolares.open;
  DMMedNuc.TablaMedNucDolares.Refresh;
end;

function ThreadImportarMedicinaNuclear.StringToPAnsiChar(stringVar: string): PAnsiChar;
var
  AnsString : AnsiString;
  InternalError : Boolean;
begin
  InternalError := false;
  Result := '';
  try
    if stringVar <> '' Then
    begin
       AnsString := AnsiString(StringVar);
       Result := PAnsiChar(PAnsiString(AnsString));
    end;
  Except
    InternalError := true;
  end;
  if InternalError or (String(Result) <> stringVar) then
  begin
    Raise Exception.Create('Conversion from string to PAnsiChar failed!');
  end;
end;


{ ThreadImportarMembresia }

procedure ThreadImportarMembresia.Execute;
var
i:Integer;
Codigo: Double;
Descripcion,Grupo: string;
Iva,IvaOriginal, Total_Con_Iva,Importe: Double;

ImporteS,IvaS,Total_Con_IvaS:string;
Iva1,Iva2,Iva3,Iva4, Total_Con_Iva1,Total_Con_Iva2,Total_Con_Iva3,Total_Con_Iva4:Double;

xls: TXlsFile;
row: integer;
XF: integer;
cell: TCellValue;

Min1,Min2,Min3,Min4:Double;
Max1,Max2,Max3,Max4:Double;
Inc1,Inc2,Inc3,Inc4:Double;
Dec1,Dec2,Dec3,Dec4:Double;
Imp1,Imp2,Imp3,Imp4:Double;
Checkbox1,Checkbox2,Checkbox3,Checkbox4:Boolean;
CambioMembresia:Double;
begin
  inherited;
  Sleep(100);
  CambioMembresia:=StrToFloat(Fmain.cxTextEdit18.Text);

  Min1:= StrTofloat(Fmain.cxTextEdit1.Text);
  Max1:= StrTofloat(Fmain.cxTextEdit2.Text);
  Inc1:= StrTofloat(Fmain.cxTextEdit3.Text);

  Min2:= StrTofloat(Fmain.cxTextEdit4.Text);
  Max2:= StrTofloat(Fmain.cxTextEdit5.Text);
  Inc2:= StrTofloat(Fmain.cxTextEdit7.Text);

  Min3:= StrTofloat(Fmain.cxTextEdit8.Text);
  Max3:= StrTofloat(Fmain.cxTextEdit10.Text);
  Inc3:= StrTofloat(Fmain.cxTextEdit9.Text);

  Min4:= StrTofloat(Fmain.cxTextEdit11.Text);
  Max4:= StrTofloat(Fmain.cxTextEdit13.Text);
  Inc4:= StrTofloat(Fmain.cxTextEdit12.Text);

  Checkbox1:=Fmain.cxCheckBox1.Checked;
  Checkbox2:=Fmain.cxCheckBox2.Checked;
  Checkbox3:=Fmain.cxCheckBox3.Checked;
  Checkbox4:=Fmain.cxCheckBox4.Checked;

  IvaOriginal:=StrToFloat(Fmain.cxtextedit6.text);
  Iva:=StrtoFloat (Fmain.cxtextedit6.text)/100;

  DMMembresia.QTruncateMemb.Execute;
  DMMembresia.QTruncateMembPesos.Execute;
  DMMembresia.QTruncateMembDolares.Execute;

  xls := TXlsFile.Create(TPath.Combine(TPath.GetDocumentsPath, OrigenMembresia));
  CantRowsMembresia := xls.RowCount;
  for row := 2 to CantRowsMembresia do
  begin
    try
      XF := -1;
      cell := xls.GetCellValueIndexed(row, 1, XF);
      Codigo := cell.AsNumber;
      cell := xls.GetCellValueIndexed(row, 2, XF);
      Descripcion :=cell.ToString;
      cell := xls.GetCellValueIndexed(row, 3, XF);
      Grupo := cell.ToString;
      cell := xls.GetCellValueIndexed(row, 4, XF);
      Importe := cell.AsNumber;
    except
      Continue;
    end;

    ImporteS:= FormatFloat('###,##0.00', Importe);
    Total_Con_Iva :=Importe * iva+Importe;
    Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva );
    IvaS:=FormatFloat('###,##0.00', Total_Con_Iva - importe);

    // insertando en la lista de materiales original .
    DMMembresia.QInsertarMemb.ParamByName('CODIGO').AsFloat:=codigo;
    DMMembresia.QInsertarMemb.ParamByName('DESCRIPCION').AsString:=Descripcion;
    DMMembresia.QInsertarMemb.ParamByName('GRUPO').AsString:=Grupo;
    DMMembresia.QInsertarMemb.ParamByName('IMPORTE').AsString:=ImporteS;
    DMMembresia.QInsertarMemb.ParamByName('IVA').AsString:=IvaS;
    DMMembresia.QInsertarMemb.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
    DMMembresia.QInsertarMemb.Execute;


    // Buscando valores de incremento y decremento
    if CheckBox1 then     // 1
    begin
      if (Importe >=Min1) and (Importe <=Max1) then
      begin
        Imp1 :=Importe *Inc1;
        ImporteS:= FormatFloat('###,##0.00', Imp1);
        Total_Con_Iva1:=Imp1 * IVA+Imp1;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva1 );
        Iva1:=Total_Con_Iva1 - imp1;
        IvaS:=FormatFloat('###,##0.00', Iva1);

        // insertando en la lista de pesos con incremento.
        DMMembresia.QInsertarMembPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMMembresia.QInsertarMembPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMMembresia.QInsertarMembPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMMembresia.QInsertarMembPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMMembresia.QInsertarMembPesos.ParamByName('IVA').AsString:=IvaS;
        DMMembresia.QInsertarMembPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMMembresia.QInsertarMembPesos.ParamByName('NUMERO').AsFloat:=1;
        DMMembresia.QInsertarMembPesos.Execute;

        Imp1 :=Imp1/CambioMembresia;
        ImporteS:= FormatFloat('###,##0.00', Imp1);
        Total_Con_Iva1:= Total_Con_Iva1/CambioMembresia;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva1);
        Iva1:= Total_Con_Iva1-Imp1;
        IvaS:=FormatFloat('###,##0.00', Iva1);

        // Insertando en la lista de Materiales Dolares
        DMMembresia.QInsertarMembDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMMembresia.QInsertarMembDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMMembresia.QInsertarMembDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMMembresia.QInsertarMembDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMMembresia.QInsertarMembDolares.ParamByName('IVA').AsString:=IvaS;
        DMMembresia.QInsertarMembDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMMembresia.QInsertarMembDolares.ParamByName('CAMBIO').AsFloat:=CambioMembresia;
        DMMembresia.QInsertarMembDolares.Execute;

      end;
    end;
    if CheckBox2 then     // 2
    begin
      if (Importe >=Min2) and (Importe <=Max2) then
      begin
        Imp2 :=Importe *Inc2;
        ImporteS:= FormatFloat('###,##0.00', Imp2);
        Total_Con_Iva2:=Imp2 * IVA+Imp2;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva2);
        Iva2:=Total_Con_Iva2 - imp2;
        IvaS:=FormatFloat('###,##0.00', Iva2);

        // insertando en la lista de pesos con incremento.
        DMMembresia.QInsertarMembPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMMembresia.QInsertarMembPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMMembresia.QInsertarMembPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMMembresia.QInsertarMembPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMMembresia.QInsertarMembPesos.ParamByName('IVA').AsString:=IvaS;
        DMMembresia.QInsertarMembPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMMembresia.QInsertarMembPesos.ParamByName('NUMERO').AsFloat:=2;
        DMMembresia.QInsertarMembPesos.Execute;

        Imp2 :=Imp2/CambioMembresia;
        ImporteS:= FormatFloat('###,##0.00', Imp2);
        Total_Con_Iva2:= Total_Con_Iva2/CambioMembresia;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva2);
        Iva2:= Total_Con_Iva2-Imp2;
        IvaS:=FormatFloat('###,##0.00', Iva2);

        // Insertando en la lista de Materiales Dolares
        DMMembresia.QInsertarMembDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMMembresia.QInsertarMembDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMMembresia.QInsertarMembDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMMembresia.QInsertarMembDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMMembresia.QInsertarMembDolares.ParamByName('IVA').AsString:=IvaS;
        DMMembresia.QInsertarMembDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMMembresia.QInsertarMembDolares.ParamByName('CAMBIO').AsFloat:=CambioMembresia;
        DMMembresia.QInsertarMembDolares.Execute;
      end;
    end;
    if CheckBox3 then     // 3
    begin
      if (Importe >=Min3) and (Importe <=Max3) then
      begin
        Imp3 :=Importe *Inc3;
        ImporteS:= FormatFloat('###,##0.00', Imp3);
        Total_Con_Iva3:=Imp3 * IVA+Imp3;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva3);
        Iva3:=Total_Con_Iva3 - imp3;
        IvaS:=FormatFloat('###,##0.00', Iva3);

        // insertando en la lista de pesos con incremento.
        DMMembresia.QInsertarMembPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMMembresia.QInsertarMembPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMMembresia.QInsertarMembPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMMembresia.QInsertarMembPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMMembresia.QInsertarMembPesos.ParamByName('IVA').AsString:=IvaS;
        DMMembresia.QInsertarMembPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMMembresia.QInsertarMembPesos.ParamByName('NUMERO').AsFloat:=3;
        DMMembresia.QInsertarMembPesos.Execute;

        Imp3 :=Imp3/CambioMembresia;
        ImporteS:= FormatFloat('###,##0.00', Imp3);
        Total_Con_Iva3:= Total_Con_Iva3/CambioMembresia;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva3);
        Iva3:= Total_Con_Iva3-Imp3;
        IvaS:=FormatFloat('###,##0.00', Iva3);

        // Insertando en la lista de Materiales Dolares
        DMMembresia.QInsertarMembDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMMembresia.QInsertarMembDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMMembresia.QInsertarMembDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMMembresia.QInsertarMembDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMMembresia.QInsertarMembDolares.ParamByName('IVA').AsString:=IvaS;
        DMMembresia.QInsertarMembDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMMembresia.QInsertarMembDolares.ParamByName('CAMBIO').AsFloat:=CambioMembresia;
        DMMembresia.QInsertarMembDolares.Execute;

      end;
    end;
    if CheckBox4 then     // 4
    begin
      if (Importe >=Min4) and (Importe <=Max4) then
      begin
        Imp4 :=Importe *Inc4;
        ImporteS:= FormatFloat('###,##0.00', Imp4);
        Total_Con_Iva4:=Imp4 * IVA+Imp4;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva4);
        Iva4:=Total_Con_Iva4 - imp4;
        IvaS:=FormatFloat('###,##0.00', Iva4);

        // insertando en la lista de pesos con incremento.
        DMMembresia.QInsertarMembPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMMembresia.QInsertarMembPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMMembresia.QInsertarMembPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMMembresia.QInsertarMembPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMMembresia.QInsertarMembPesos.ParamByName('IVA').AsString:=IvaS;
        DMMembresia.QInsertarMembPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMMembresia.QInsertarMembPesos.ParamByName('NUMERO').AsFloat:=4;
        DMMembresia.QInsertarMembPesos.Execute;

        Imp4 :=Imp4/CambioMembresia;
        ImporteS:= FormatFloat('###,##0.00', Imp4);
        Total_Con_Iva4:= Total_Con_Iva4/CambioMembresia;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva4);
        Iva4:= Total_Con_Iva4-Imp4;
        IvaS:=FormatFloat('###,##0.00', Iva4);

        // Insertando en la lista de Materiales Dolares
        DMMembresia.QInsertarMembDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMMembresia.QInsertarMembDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMMembresia.QInsertarMembDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMMembresia.QInsertarMembDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMMembresia.QInsertarMembDolares.ParamByName('IVA').AsString:=IvaS;
        DMMembresia.QInsertarMembDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMMembresia.QInsertarMembDolares.ParamByName('CAMBIO').AsFloat:=CambioMembresia;
        DMMembresia.QInsertarMembDolares.Execute;

      end;
    end;

    Synchronize(IniciarProgressBar);
  end;

  xls.Free;
  DM1.QEstadoPorActualizar.Execute;
  Synchronize(ActualizarGrids);
end;

procedure ThreadImportarMembresia.IniciarProgressBar;
var
posicion:Integer;
begin
   Fmain.cxProgressBar12.Properties.Min:=0;
   Fmain.cxProgressBar12.Properties.Max:=CantRowsMembresia -1;
   Fmain.cxProgressBar12.Position:=Fmain.cxProgressBar12.Position+1;
   posicion:=Trunc(Fmain.cxProgressBar12.Position);
   Fmain.cxLabel66.Caption:=  IntToStr(Posicion)+ ' de ' +IntToStr(CantRowsMembresia-1);
end;

procedure ThreadImportarMembresia.ActualizarGrids;
begin
  DMMembresia.TablaMemb.open;
  DMMembresia.TablaMemb.Refresh;
  DMMembresia.TablaMembPesos.open;
  DMMembresia.TablaMembPesos.Refresh;
  DMMembresia.TablaMembDolares.open;
  DMMembresia.TablaMembDolares.Refresh;
end;

function ThreadImportarMembresia.StringToPAnsiChar(stringVar: string): PAnsiChar;
var
  AnsString : AnsiString;
  InternalError : Boolean;
begin
  InternalError := false;
  Result := '';
  try
    if stringVar <> '' Then
    begin
       AnsString := AnsiString(StringVar);
       Result := PAnsiChar(PAnsiString(AnsString));
    end;
  Except
    InternalError := true;
  end;
  if InternalError or (String(Result) <> stringVar) then
  begin
    Raise Exception.Create('Conversion from string to PAnsiChar failed!');
  end;
end;


{ ThreadImportarPaquetes }

procedure ThreadImportarPaquetes.Execute;
var
i:Integer;
Codigo: Double;
Descripcion,Grupo: string;
Iva,IvaOriginal, Total_Con_Iva,Importe: Double;

ImporteS,IvaS,Total_Con_IvaS:string;
Iva1,Iva2,Iva3,Iva4, Total_Con_Iva1,Total_Con_Iva2,Total_Con_Iva3,Total_Con_Iva4:Double;

xls: TXlsFile;
row: integer;
XF: integer;
cell: TCellValue;

Min1,Min2,Min3,Min4:Double;
Max1,Max2,Max3,Max4:Double;
Inc1,Inc2,Inc3,Inc4:Double;
Dec1,Dec2,Dec3,Dec4:Double;
Imp1,Imp2,Imp3,Imp4:Double;
Checkbox1,Checkbox2,Checkbox3,Checkbox4:Boolean;
CambioPaquetes:Double;
begin
  inherited;
  Sleep(100);
  CambioPaquetes:=StrToFloat(Fmain.cxTextEdit18.Text);

  Min1:= StrTofloat(Fmain.cxTextEdit1.Text);
  Max1:= StrTofloat(Fmain.cxTextEdit2.Text);
  Inc1:= StrTofloat(Fmain.cxTextEdit3.Text);

  Min2:= StrTofloat(Fmain.cxTextEdit4.Text);
  Max2:= StrTofloat(Fmain.cxTextEdit5.Text);
  Inc2:= StrTofloat(Fmain.cxTextEdit7.Text);

  Min3:= StrTofloat(Fmain.cxTextEdit8.Text);
  Max3:= StrTofloat(Fmain.cxTextEdit10.Text);
  Inc3:= StrTofloat(Fmain.cxTextEdit9.Text);

  Min4:= StrTofloat(Fmain.cxTextEdit11.Text);
  Max4:= StrTofloat(Fmain.cxTextEdit13.Text);
  Inc4:= StrTofloat(Fmain.cxTextEdit12.Text);

  Checkbox1:=Fmain.cxCheckBox1.Checked;
  Checkbox2:=Fmain.cxCheckBox2.Checked;
  Checkbox3:=Fmain.cxCheckBox3.Checked;
  Checkbox4:=Fmain.cxCheckBox4.Checked;

  IvaOriginal:=StrToFloat(Fmain.cxtextedit6.text);
  Iva:=StrtoFloat (Fmain.cxtextedit6.text)/100;

  DMPaquetes.QTruncatePaq.Execute;
  DMPaquetes.QTruncatePaqPesos.Execute;
  DMPaquetes.QTruncatePaqDolares.Execute;

  xls := TXlsFile.Create(TPath.Combine(TPath.GetDocumentsPath, OrigenPaquetes));
  CantRowsPaquetes := xls.RowCount;
  for row := 2 to CantRowsPaquetes do
  begin
    try
      XF := -1;
      cell := xls.GetCellValueIndexed(row, 1, XF);
      Codigo := cell.AsNumber;
      cell := xls.GetCellValueIndexed(row, 2, XF);
      Descripcion :=cell.ToString;
      cell := xls.GetCellValueIndexed(row, 3, XF);
      Grupo := cell.ToString;
      cell := xls.GetCellValueIndexed(row, 4, XF);
      Importe := cell.AsNumber;
    except
      Continue;
    end;

    ImporteS:= FormatFloat('###,##0.00', Importe);
    Total_Con_Iva :=Importe * iva+Importe;
    Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva );
    IvaS:=FormatFloat('###,##0.00', Total_Con_Iva - importe);

    // insertando en la lista de materiales original .
    DMPaquetes.QInsertarPaq.ParamByName('CODIGO').AsFloat:=codigo;
    DMPaquetes.QInsertarPaq.ParamByName('DESCRIPCION').AsString:=Descripcion;
    DMPaquetes.QInsertarPaq.ParamByName('GRUPO').AsString:=Grupo;
    DMPaquetes.QInsertarPaq.ParamByName('IMPORTE').AsString:=ImporteS;
    DMPaquetes.QInsertarPaq.ParamByName('IVA').AsString:=IvaS;
    DMPaquetes.QInsertarPaq.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
    DMPaquetes.QInsertarPaq.Execute;



    // Buscando valores de incremento y decremento
    if CheckBox1 then     // 1
    begin
      if (Importe >=Min1) and (Importe <=Max1) then
      begin
        Imp1 :=Importe *Inc1;
        ImporteS:= FormatFloat('###,##0.00', Imp1);
        Total_Con_Iva1:=Imp1 * IVA+Imp1;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva1 );
        Iva1:=Total_Con_Iva1 - imp1;
        IvaS:=FormatFloat('###,##0.00', Iva1);

        // insertando en la lista de pesos con incremento.
        DMPaquetes.QInsertarPaqPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMPaquetes.QInsertarPaqPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMPaquetes.QInsertarPaqPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMPaquetes.QInsertarPaqPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMPaquetes.QInsertarPaqPesos.ParamByName('IVA').AsString:=IvaS;
        DMPaquetes.QInsertarPaqPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMPaquetes.QInsertarPaqPesos.ParamByName('NUMERO').AsFloat:=1;
        DMPaquetes.QInsertarPaqPesos.Execute;

        Imp1 :=Imp1/CambioPaquetes;
        ImporteS:= FormatFloat('###,##0.00', Imp1);
        Total_Con_Iva1:= Total_Con_Iva1/CambioPaquetes;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva1);
        Iva1:= Total_Con_Iva1-Imp1;
        IvaS:=FormatFloat('###,##0.00', Iva1);

        // Insertando en la lista de Materiales Dolares
        DMPaquetes.QInsertarPaqDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMPaquetes.QInsertarPaqDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMPaquetes.QInsertarPaqDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMPaquetes.QInsertarPaqDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMPaquetes.QInsertarPaqDolares.ParamByName('IVA').AsString:=IvaS;
        DMPaquetes.QInsertarPaqDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMPaquetes.QInsertarPaqDolares.ParamByName('CAMBIO').AsFloat:=CambioPaquetes;
        DMPaquetes.QInsertarPaqDolares.Execute;

      end;
    end;
    if CheckBox2 then     // 2
    begin
      if (Importe >=Min2) and (Importe <=Max2) then
      begin
        Imp2 :=Importe *Inc2;
        ImporteS:= FormatFloat('###,##0.00', Imp2);
        Total_Con_Iva2:=Imp2 * IVA+Imp2;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva2 );
        Iva2:=Total_Con_Iva2 - imp2;
        IvaS:=FormatFloat('###,##0.00', Iva2);

        // insertando en la lista de pesos con incremento.
        DMPaquetes.QInsertarPaqPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMPaquetes.QInsertarPaqPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMPaquetes.QInsertarPaqPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMPaquetes.QInsertarPaqPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMPaquetes.QInsertarPaqPesos.ParamByName('IVA').AsString:=IvaS;
        DMPaquetes.QInsertarPaqPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMPaquetes.QInsertarPaqPesos.ParamByName('NUMERO').AsFloat:=2;
        DMPaquetes.QInsertarPaqPesos.Execute;

        Imp2 :=Imp2/CambioPaquetes;
        ImporteS:= FormatFloat('###,##0.00', Imp2);
        Total_Con_Iva2:= Total_Con_Iva2/CambioPaquetes;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva2);
        Iva2:= Total_Con_Iva2-Imp2;
        IvaS:=FormatFloat('###,##0.00', Iva2);

        // Insertando en la lista de Materiales Dolares
        DMPaquetes.QInsertarPaqDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMPaquetes.QInsertarPaqDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMPaquetes.QInsertarPaqDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMPaquetes.QInsertarPaqDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMPaquetes.QInsertarPaqDolares.ParamByName('IVA').AsString:=IvaS;
        DMPaquetes.QInsertarPaqDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMPaquetes.QInsertarPaqDolares.ParamByName('CAMBIO').AsFloat:=CambioPaquetes;
        DMPaquetes.QInsertarPaqDolares.Execute;
      end;
    end;
    if CheckBox3 then     // 3
    begin
      if (Importe >=Min3) and (Importe <=Max3) then
      begin
        Imp3 :=Importe *Inc3;
        ImporteS:= FormatFloat('###,##0.00', Imp3);
        Total_Con_Iva3:=Imp3 * IVA+Imp3;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva3 );
        Iva3:=Total_Con_Iva3 - imp3;
        IvaS:=FormatFloat('###,##0.00', Iva3);

        // insertando en la lista de pesos con incremento.
        DMPaquetes.QInsertarPaqPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMPaquetes.QInsertarPaqPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMPaquetes.QInsertarPaqPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMPaquetes.QInsertarPaqPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMPaquetes.QInsertarPaqPesos.ParamByName('IVA').AsString:=IvaS;
        DMPaquetes.QInsertarPaqPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMPaquetes.QInsertarPaqPesos.ParamByName('NUMERO').AsFloat:=3;
        DMPaquetes.QInsertarPaqPesos.Execute;

        Imp3 :=Imp3/CambioPaquetes;
        ImporteS:= FormatFloat('###,##0.00', Imp3);
        Total_Con_Iva3:= Total_Con_Iva3/CambioPaquetes;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva3);
        Iva3:= Total_Con_Iva3-Imp3;
        IvaS:=FormatFloat('###,##0.00', Iva3);

        // Insertando en la lista de Materiales Dolares
        DMPaquetes.QInsertarPaqDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMPaquetes.QInsertarPaqDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMPaquetes.QInsertarPaqDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMPaquetes.QInsertarPaqDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMPaquetes.QInsertarPaqDolares.ParamByName('IVA').AsString:=IvaS;
        DMPaquetes.QInsertarPaqDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMPaquetes.QInsertarPaqDolares.ParamByName('CAMBIO').AsFloat:=CambioPaquetes;
        DMPaquetes.QInsertarPaqDolares.Execute;

      end;
    end;
    if CheckBox4 then     // 4
    begin
      if (Importe >=Min4) and (Importe <=Max4) then
      begin
        Imp4 :=Importe *Inc4;
        ImporteS:= FormatFloat('###,##0.00', Imp4);
        Total_Con_Iva4:=Imp4 * IVA+Imp4;
        Total_Con_IvaS:= FormatFloat('###,##0.00', Total_Con_Iva4 );
        Iva4:=Total_Con_Iva4 - imp4;
        IvaS:=FormatFloat('###,##0.00', Iva4);

        // insertando en la lista de pesos con incremento.
        DMPaquetes.QInsertarPaqPesos.ParamByName('CODIGO').AsFloat:=codigo;
        DMPaquetes.QInsertarPaqPesos.ParamByName('DESCRIPCION').AsString:=DESCRIPCION;
        DMPaquetes.QInsertarPaqPesos.ParamByName('GRUPO').AsString:=Grupo;
        DMPaquetes.QInsertarPaqPesos.ParamByName('IMPORTE').AsString:=ImporteS;
        DMPaquetes.QInsertarPaqPesos.ParamByName('IVA').AsString:=IvaS;
        DMPaquetes.QInsertarPaqPesos.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMPaquetes.QInsertarPaqPesos.ParamByName('NUMERO').AsFloat:=4;
        DMPaquetes.QInsertarPaqPesos.Execute;

        Imp4 :=Imp4/CambioPaquetes;
        ImporteS:= FormatFloat('###,##0.00', Imp4);
        Total_Con_Iva4:= Total_Con_Iva4/CambioPaquetes;
        Total_Con_IvaS:=FormatFloat('###,##0.00', Total_Con_Iva4);
        Iva4:= Total_Con_Iva4-Imp4;
        IvaS:=FormatFloat('###,##0.00', Iva4);

        // Insertando en la lista de Materiales Dolares
        DMPaquetes.QInsertarPaqDolares.ParamByName('CODIGO').AsFloat:=codigo;
        DMPaquetes.QInsertarPaqDolares.ParamByName('DESCRIPCION').AsString:=Descripcion;
        DMPaquetes.QInsertarPaqDolares.ParamByName('GRUPO').AsString:=Grupo;
        DMPaquetes.QInsertarPaqDolares.ParamByName('IMPORTE').AsString:=ImporteS;
        DMPaquetes.QInsertarPaqDolares.ParamByName('IVA').AsString:=IvaS;
        DMPaquetes.QInsertarPaqDolares.ParamByName('TOTAL_CON_IVA').AsString:=Total_Con_IvaS;
        DMPaquetes.QInsertarPaqDolares.ParamByName('CAMBIO').AsFloat:=CambioPaquetes;
        DMPaquetes.QInsertarPaqDolares.Execute;

      end;
    end;

    Synchronize(IniciarProgressBar);
  end;

  xls.Free;
  DM1.QEstadoPorActualizar.Execute;
  Synchronize(ActualizarGrids);
end;

procedure ThreadImportarPaquetes.IniciarProgressBar;
var
posicion:Integer;
begin
   Fmain.cxProgressBar13.Properties.Min:=0;
   Fmain.cxProgressBar13.Properties.Max:=CantRowsPaquetes -1;
   Fmain.cxProgressBar13.Position:=Fmain.cxProgressBar13.Position+1;
   posicion:=Trunc(Fmain.cxProgressBar13.Position);
   Fmain.cxLabel68.Caption:=  IntToStr(Posicion)+ ' de ' +IntToStr(CantRowsPaquetes-1);
end;

procedure ThreadImportarPaquetes.ActualizarGrids;
begin
  DMPaquetes.TablaPaq.open;
  DMPaquetes.TablaPaq.Refresh;
  DMPaquetes.TablaPaqPesos.open;
  DMPaquetes.TablaPaqPesos.Refresh;
  DMPaquetes.TablaPaqDolares.open;
  DMPaquetes.TablaPaqDolares.Refresh;
end;

function ThreadImportarPaquetes.StringToPAnsiChar(stringVar: string): PAnsiChar;
var
  AnsString : AnsiString;
  InternalError : Boolean;
begin
  InternalError := false;
  Result := '';
  try
    if stringVar <> '' Then
    begin
       AnsString := AnsiString(StringVar);
       Result := PAnsiChar(PAnsiString(AnsString));
    end;
  Except
    InternalError := true;
  end;
  if InternalError or (String(Result) <> stringVar) then
  begin
    Raise Exception.Create('Conversion from string to PAnsiChar failed!');
  end;
end;


{ ThreadActualizarTablas }

procedure ThreadActualizarTablas.Execute;
begin
  inherited;
  Synchronize(ActualizarGrids);

end;

procedure ThreadActualizarTablas.ActualizarGrids;
begin
  DmMateriales.TablaMateriales.Open;
  DmMateriales.TablaMateriales.Refresh;
  DmMateriales.TablaMaterialesPesos.Open;
  DmMateriales.TablaMaterialesPesos.Refresh;
  DmMateriales.TablaMaterialesDolares.Open;
  DmMateriales.TablaMaterialesDolares.Refresh;

  DmMedicamentos.TablaMedicamentos.open;
  DmMedicamentos.TablaMedicamentos.Refresh;
  DmMedicamentos.TablaMedicamentosPesos.open;
  DmMedicamentos.TablaMedicamentosPesos.Refresh;
  DmMedicamentos.TablaMedicamentosDolares.open;
  DmMedicamentos.TablaMedicamentosDolares.Refresh;

  DMServImg.TablaServImg.open;
  DMServImg.TablaServImg.Refresh;
  DMServImg.TablaServImgPesos.open;
  DMServImg.TablaServImgPesos.Refresh;
  DMServImg.TablaServImgDolares.open;
  DMServImg.TablaServImgDolares.Refresh;

  DMServHosp.TablaServHosp.open;
  DMServHosp.TablaServHosp.Refresh;
  DMServHosp.TablaServHospPesos.open;
  DMServHosp.TablaServHospPesos.Refresh;
  DMServHosp.TablaServHospDolares.open;
  DMServHosp.TablaServHospDolares.Refresh;

  DMEquipoMedico.TablaEquipoMedico.open;
  DMEquipoMedico.TablaEquipoMedico.Refresh;
  DMEquipoMedico.TablaEquipoMedPesos.open;
  DMEquipoMedico.TablaEquipoMedPesos.Refresh;
  DMEquipoMedico.TablaEquipoMedDolares.open;
  DMEquipoMedico.TablaEquipoMedDolares.Refresh;

  DMServLab.TablaServLab.open;
  DMServLab.TablaServLab.Refresh;
  DMServLab.TablaServLabPesos.open;
  DMServLab.TablaServLabPesos.Refresh;
  DMServLab.TablaServLabDolares.open;
  DMServLab.TablaServLabDolares.Refresh;

  DMServMed.TablaServMed.open;
  DMServMed.TablaServMed.Refresh;
  DMServMed.TablaServMedPesos.open;
  DMServMed.TablaServMedPesos.Refresh;
  DMServMed.TablaServMedDolares.open;
  DMServMed.TablaServMedDolares.Refresh;

  DMTerInt.TablaTerInt.open;
  DMTerInt.TablaTerInt.Refresh;
  DMTerInt.TablaTerIntPesos.open;
  DMTerInt.TablaTerIntPesos.Refresh;
  DMTerInt.TablaTerIntDolares.open;
  DMTerInt.TablaTerIntDolares.Refresh;

  DMTrasAmb.TablaTrasAmb.open;
  DMTrasAmb.TablaTrasAmb.Refresh;
  DMTrasAmb.TablaTrasAmbPesos.open;
  DMTrasAmb.TablaTrasAmbPesos.Refresh;
  DMTrasAmb.TablaTrasAmbDolares.open;
  DMTrasAmb.TablaTrasAmbDolares.Refresh;

  DMCamHiper.TablaCamHiper.open;
  DMCamHiper.TablaCamHiper.Refresh;
  DMCamHiper.TablaCamHiperPesos.open;
  DMCamHiper.TablaCamHiperPesos.Refresh;
  DMCamHiper.TablaCamHiperDolares.open;
  DMCamHiper.TablaCamHiperDolares.Refresh;

  DMMedNuc.TablaMedNuc.open;
  DMMedNuc.TablaMedNuc.Refresh;
  DMMedNuc.TablaMedNucPesos.open;
  DMMedNuc.TablaMedNucPesos.Refresh;
  DMMedNuc.TablaMedNucDolares.open;
  DMMedNuc.TablaMedNucDolares.Refresh;

  DMMembresia.TablaMemb.open;
  DMMembresia.TablaMemb.Refresh;
  DMMembresia.TablaMembPesos.open;
  DMMembresia.TablaMembPesos.Refresh;
  DMMembresia.TablaMembDolares.open;
  DMMembresia.TablaMembDolares.Refresh;

  DMPaquetes.TablaPaq.open;
  DMPaquetes.TablaPaq.Refresh;
  DMPaquetes.TablaPaqPesos.open;
  DMPaquetes.TablaPaqPesos.Refresh;
  DMPaquetes.TablaPaqDolares.open;
  DMPaquetes.TablaPaqDolares.Refresh;
end;

procedure ThreadActualizarTablas.Mostrar;
begin

end;

procedure ThreadActualizarTablas.Ocultar;
begin

end;


{ ThreadREportes }

procedure ThreadREportes.Execute;
var
altura:Integer;
PrimeraTabla:Boolean;
begin
  inherited;
  CargarExcelaBd;

  PaginaActual:=0;
  Fmain.HPDF.FileName := 'done'; // Set out filename

  Fmain.HPDF.LoadFromFile('D:\Proyectos Mexico\HospitalGalenia\Reporte\Plantilla.pdf');    // Load an existing PDF file

  Fmain.HPDF.BeginDoc;
  AddHeader;

  PrimeraTabla:=True;
  if PrimeraTabla then
  begin
    AlturaActual:= 480;
    PrimeraTabla:=False;
  end;

  CrearTabla('Servicio de Hospital',303);
//  CrearTabla('Ambulancia');

  Fmain.HPDF.EndDoc;

  Application.Terminate;

end;

procedure ThreadREportes.CargarExcelaBd;
var
xls: TXlsFile;
row: integer;
col: integer;
XF: integer;
cell: TCellValue;
CantRows:Integer;

Contenido:string;
ColCodigo:integer;
ColDescriocion:integer;
ColCantidad:integer;
ColPrecioUnitario:integer;
ColDescuento:integer;
ColFecha:Integer;

Descripcion,Catalogo,empresa:string;
Codigo:Double;
CodigoSalida:string;
Cantidad:Double;
CantidadSalida:string;
PrecioUnitario:Double;
PrecioUnitarioSalida:string;
Descuento:Double;
DescuentoSalida:string;

salida:string;

fecha:string;
begin

  xls := TXlsFile.Create(TPath.Combine(TPath.GetDocumentsPath, Excel));
  CantRows := xls.RowCount;

// // encabezado
//  cell := xls.GetCellValueIndexed(3, 16, XF);
//  empresa:=cell.AsString;
//  Memo1.Lines.Add('Empresa : '+empresa);
//  Memo1.Lines.Add(#13);
//
//  cell := xls.GetCellValueIndexed(6, 17, XF);
//  empresa:=cell.AsString;
//  Memo1.Lines.Add('Direccion : '+empresa);
//  Memo1.Lines.Add(#13);
//
//  cell := xls.GetCellValueIndexed(8, 17, XF);
//  empresa:=cell.AsString;
//  Memo1.Lines.Add('Numero : '+empresa);
//  Memo1.Lines.Add(#13);
//
//  cell := xls.GetCellValueIndexed(14, 47, XF);
//  empresa:=cell.AsString;
//  Memo1.Lines.Add('Numero de atencion : '+empresa);
//  Memo1.Lines.Add(#13);
//
//  cell := xls.GetCellValueIndexed(17, 46, XF);
//  empresa:=cell.AsString;
//  Memo1.Lines.Add('Numero de cuenta : '+empresa);
//  Memo1.Lines.Add(#13);
//
//  cell := xls.GetCellValueIndexed(22, 7, XF);
//  empresa:=cell.AsString;
//  Memo1.Lines.Add('Fecha de entrada : '+empresa);
//  Memo1.Lines.Add(#13);
//
//  cell := xls.GetCellValueIndexed(24, 7, XF);
//  empresa:=cell.AsString;
//  Memo1.Lines.Add('Fecha de salida : '+empresa);
//  Memo1.Lines.Add(#13);
//
//  cell := xls.GetCellValueIndexed(26, 7, XF);
//  empresa:=cell.AsString;
//  Memo1.Lines.Add('Medico : '+empresa);
//  Memo1.Lines.Add(#13);
//
//  cell := xls.GetCellValueIndexed(22, 38, XF);
//  empresa:=cell.AsString;
//  Memo1.Lines.Add('Edad : '+empresa);
//  Memo1.Lines.Add(#13);
//
//  cell := xls.GetCellValueIndexed(24, 38, XF);
//  empresa:=cell.AsString;
//  Memo1.Lines.Add('Tipo de Atencion : '+empresa);
//  Memo1.Lines.Add(#13);



  for col := 1 to 52 do
  begin
    try

      XF := -1;
      cell := xls.GetCellValueIndexed(30, col, XF);
      Contenido:=cell.AsString;
      if Contenido ='Codigo' then
      begin
     //  Memo1.Lines.Add('Codigo: '+IntToStr(col));
       ColCodigo:=col;
      end;
      if Contenido ='Descripción' then
      begin
     //  Memo1.Lines.Add('Descripción: '+IntToStr(col));
       ColDescriocion:=col;
      end;
      if Contenido ='Cantidad' then
      begin
    //   Memo1.Lines.Add('Cantidad: '+IntToStr(col));
       ColCantidad:=col;
      end;
      if Contenido ='P. unitario' then
      begin
   //    Memo1.Lines.Add('P. unitario: '+IntToStr(col));
       ColPrecioUnitario:=col;
      end;
      if Contenido ='Descto' then
      begin
   //    Memo1.Lines.Add('Descuento: '+IntToStr(col));
       ColDescuento:=col;
      end;
      if Contenido ='Fh del ítem' then
      begin
    //   Memo1.Lines.Add('Fecha: '+IntToStr(col));
       ColFecha:=col;
      end;

    except

    end;
  end;

  DMCuenta.QTruncateCuentaOriginal.Execute;

  for row := 28 to xls.RowCount do
  begin
    CantRowsExcel:=xls.RowCount;
    Synchronize(IniciarProgressBar);
    try
      XF := -1;

      // catalogo
      try
        cell := xls.GetCellValueIndexed(row, 5, XF);
        Catalogo := cell.AsString;

      except on E: Exception do
      end;

      //  codigo
      cell := xls.GetCellValueIndexed(row, ColCodigo, XF);
      Codigo := cell.AsNumber;
      CodigoSalida:= FormatFloat('########', Codigo);

      //Descripcion
      cell := xls.GetCellValueIndexed(row, ColDescriocion, XF);
      Descripcion := cell.AsString;

      // cantidad
      cell := xls.GetCellValueIndexed(row, ColCantidad, XF);
      Cantidad := cell.AsNumber;
      CantidadSalida:= FormatFloat('#####', Cantidad);

      //  fecha
      cell := xls.GetCellValue(row, ColFecha, XF);
      fecha := cell.AsString;

      // Servicio De Imagenología
      // Material Médico
      // Medicamentos
      // Servicio Hospital
      // Equipo Medico


      DMCuenta.QInsertarCuentaOriginal.ParamByName('CATALOGO').AsString:= Catalogo;
      DMCuenta.QInsertarCuentaOriginal.ParamByName('CODIGO').AsString:=CodigoSalida;
      DMCuenta.QInsertarCuentaOriginal.ParamByName('DESCRIPCION').AsString:=Descripcion;
      DMCuenta.QInsertarCuentaOriginal.ParamByName('CANTIDAD').AsString:=CantidadSalida;
      DMCuenta.QInsertarCuentaOriginal.ParamByName('PRECIO_UNITARIO').AsString:=PrecioUnitarioSalida;
      DMCuenta.QInsertarCuentaOriginal.ParamByName('IMPORTE').AsString:= FormatFloat('###,##0.00', Cantidad*PrecioUnitario);
      DMCuenta.QInsertarCuentaOriginal.ParamByName('DESCUENTO').AsString:= DescuentoSalida;
      DMCuenta.QInsertarCuentaOriginal.ParamByName('SUBTOTAL').AsString:=FormatFloat('###,##0.00', Cantidad*PrecioUnitario-descuento);
      DMCuenta.QInsertarCuentaOriginal.ParamByName('IMPUESTO').AsString:= '1';
      DMCuenta.QInsertarCuentaOriginal.ParamByName('PRECIO_FINAL').AsString:= FormatFloat('###,##0.00', Cantidad*PrecioUnitario-descuento);
      DMCuenta.QInsertarCuentaOriginal.ParamByName('FECHA').AsString:= fecha;
      DMCuenta.QInsertarCuentaOriginal.Execute;


    except

    end;

  end;
  xls.Free;

end;

procedure ThreadREportes.IniciarProgressBar;
var
posicion:Integer;
begin
   Fmain.cxProgressBar15.Properties.Min:=28;
   Fmain.cxProgressBar15.Properties.Max:=CantRowsExcel -1;
   Fmain.cxProgressBar15.Position:=Fmain.cxProgressBar15.Position+1;
  // posicion:=Trunc(Fmain.cxProgressBar13.Position);
  // Fmain.cxLabel68.Caption:=  IntToStr(Posicion)+ ' de ' +IntToStr(CantRowsPaquetes-1);
end;


procedure ThreadREportes.CrearTabla(Grupo: string; CantReg: integer);
var
I,CantPag:Integer;
begin
     CantPag:=0;
    // Creando las Paginas necesarias
    for I := 1 to CantReg +16  do  // 45 es el totalque cabe en una hoja -
    begin
      if  (I = 45) or(I = 90) or(I = 135) or(I = 180) or(I = 225) or(I = 270) or(I = 315) or(I = 360) or(I = 405) or(I = 450) or
          (I = 495) or(I = 540) or(I = 585) or(I = 630) or(I = 675) or(I = 720) or(I = 765) or(I = 810) or(I = 855) or(I = 900) or
          (I = 945) or(I = 990) or(I = 1035) or(I = 1080) or(I = 1125) or(I = 1170) or(I = 1215) or(I = 1260) or(I = 1305) or(I = 1350)
      then
      begin
         AddPage;
         AddHeader;
         Inc(CantPag);
      end;
    end;

    // poner cursor pagina 1
    Fmain.HPDF.CurrentPageNumber:=0;

    for I := 1 to CantReg  do  // 45 es el totalque cabe en una hoja
    begin

      // poner el cursor en la siguiente pagina si toca
      if  (I = 45) or(I = 90) or(I = 135) or(I = 180) or(I = 225) or(I = 270) or(I = 315) or(I = 360) or(I = 405) or(I = 450) or
          (I = 495) or(I = 540) or(I = 585) or(I = 630) or(I = 675) or(I = 720) or(I = 765) or(I = 810) or(I = 855) or(I = 900) or
          (I = 945) or(I = 990) or(I = 1035) or(I = 1080) or(I = 1125) or(I = 1170) or(I = 1215) or(I = 1260) or(I = 1305) or(I = 1350)
      then
      begin
         Fmain.HPDF.CurrentPageNumber:=Fmain.HPDF.CurrentPageNumber+1;
         AlturaActual:= 480;
         Fmain.HPDF.CurrentPage.SetFont('MS Sans Serif',[], 26,0);
      end;

//      if I=1 then
//      begin
//         Grupo:='aaaaa';
//         DibujarLinea(AlturaActual,grupo);
//         AlturaActual:=IncFila(AlturaActual);
//               // insertando las filas
//      end;
//      if I=100then
//      begin
//         Grupo:='bbbbb';
//         DibujarLinea(AlturaActual,grupo);
//         AlturaActual:=IncFila(AlturaActual);
//      end;
//      if I=200 then
//      begin
//         Grupo:='ccccc';
//         DibujarLinea(AlturaActual,grupo);
//         AlturaActual:=IncFila(AlturaActual);
//      end;

      AlturaActual:=IncFila(AlturaActual);
      Fmain.HPDF.CurrentPage.TextOut(130, AlturaActual  , 0, IntToStr(i));
      Fmain.HPDF.CurrentPage.TextOut(280, AlturaActual  , 0, 'Descripción');
      Fmain.HPDF.CurrentPage.TextOut(580, AlturaActual  , 0, '1');
      Fmain.HPDF.CurrentPage.TextOut(700, AlturaActual  , 0, '1');
      Fmain.HPDF.CurrentPage.TextOut(890, AlturaActual  , 0, '2');
      Fmain.HPDF.CurrentPage.TextOut(1080, AlturaActual , 0, '2');
      Fmain.HPDF.CurrentPage.TextOut(1230, AlturaActual , 0, '2');
      Fmain.HPDF.CurrentPage.TextOut(1360, AlturaActual , 0, '2');
      Fmain.HPDF.CurrentPage.TextOut(1490, AlturaActual , 0, '2');
      Fmain.HPDF.CurrentPage.TextOut(1650, AlturaActual , 0, '33/33/33');

    end;


    // al final sacar los totales de cada tabla
    AlturaActual:=IncFila(AlturaActual);
    Fmain.HPDF.CurrentPage.SetFont('MS Sans Serif',[fsBold], 26,0);
    Fmain.HPDF.CurrentPage.TextOut(550, AlturaActual  , 0, 'Total('+'0.00'+')');
    Fmain.HPDF.CurrentPage.SetFont('MS Sans Serif',[], 26,0);
    Fmain.HPDF.CurrentPage.TextOut(700, AlturaActual  , 0, '0.00');
    Fmain.HPDF.CurrentPage.TextOut(890, AlturaActual  , 0, '0.00');
    Fmain.HPDF.CurrentPage.TextOut(1080, AlturaActual , 0, '0.00');
    Fmain.HPDF.CurrentPage.TextOut(1230, AlturaActual , 0, '0.00');
    Fmain.HPDF.CurrentPage.TextOut(1360, AlturaActual , 0, '0.00');
    Fmain.HPDF.CurrentPage.TextOut(1490, AlturaActual , 0, '0.00');
    AlturaActual:=IncFila(AlturaActual);


    //Totales Generales de la cuenta
    Fmain.HPDF.CurrentPage.SetFont('MS Sans Serif',[fsBold], 26,0);
    AlturaActual:=IncFila(AlturaActual);
    Fmain.HPDF.CurrentPage.TextOut(130, AlturaActual  , 0, 'Importe = '+'724,108.77');
    AlturaActual:=IncFila(AlturaActual);
    Fmain.HPDF.CurrentPage.TextOut(130, AlturaActual  , 0, 'Descuento de la cuenta = '+'00.00');
    AlturaActual:=IncFila(AlturaActual);
    Fmain.HPDF.CurrentPage.TextOut(130, AlturaActual  , 0, 'Descuento total = '+'00.00');
    AlturaActual:=IncFila(AlturaActual);
    Fmain.HPDF.CurrentPage.TextOut(130, AlturaActual  , 0, 'Deducible = '+'');
    AlturaActual:=IncFila(AlturaActual);
    Fmain.HPDF.CurrentPage.TextOut(130, AlturaActual  , 0, 'Coaseguro Hosp = '+'');
    AlturaActual:=IncFila(AlturaActual);
    Fmain.HPDF.CurrentPage.TextOut(130, AlturaActual  , 0, 'Coaseguro Hono. = '+'');
    AlturaActual:=IncFila(AlturaActual);
    Fmain.HPDF.CurrentPage.TextOut(130, AlturaActual  , 0, 'Coaseguro (Nivel) Hospital = '+'');
    AlturaActual:=IncFila(AlturaActual);
    Fmain.HPDF.CurrentPage.TextOut(130, AlturaActual  , 0, 'Importe - Descuentos = '+'724,108.77');
    AlturaActual:=IncFila(AlturaActual);
    Fmain.HPDF.CurrentPage.TextOut(130, AlturaActual  , 0, 'Iva 16% = '+'115,857.41');
    AlturaActual:=IncFila(AlturaActual);
    Fmain.HPDF.CurrentPage.TextOut(130, AlturaActual  , 0, 'Saldo total de la cuenta');
    AlturaActual:=IncFila(AlturaActual);
    Fmain.HPDF.CurrentPage.TextOut(130, AlturaActual  , 0, 'Cargos totales = '+'839,966.17');
    AlturaActual:=IncFila(AlturaActual);
    Fmain.HPDF.CurrentPage.TextOut(130, AlturaActual  , 0, 'Cargos totales = '+'839,966.17');
    AlturaActual:=IncFila(AlturaActual);
    Fmain.HPDF.CurrentPage.TextOut(130, AlturaActual  , 0, 'Cargos totales = '+'839,966.17');
    AlturaActual:=IncFila(AlturaActual);
    Fmain.HPDF.CurrentPage.TextOut(130, AlturaActual  , 0, 'Abonos totales (anticipos de pago) = '+'00.00');
    AlturaActual:=IncFila(AlturaActual);
    Fmain.HPDF.CurrentPage.TextOut(130, AlturaActual  , 0, 'Saldo Global (anticipos de pago) = '+'00.00');


end;

procedure ThreadREportes.DibujarLinea(Altura: Integer; Grupo: string);
var
nuevaPos:Integer;
begin
    Fmain.HPDF.CurrentPage.SetRGBStrokeColor($c0c0c0);
    Fmain.HPDF.CurrentPage.SetLineWidth( 40 );        // Set line width
    Fmain.HPDF.CurrentPage.MoveTo( 120, altura);
    Fmain.HPDF.CurrentPage.LineTo( 1797, altura );    // Draw line
    Fmain.HPDF.CurrentPage.Stroke;

    Fmain.HPDF.CurrentPage.SetFont('MS Sans Serif',[fsBold], 26,0);
    Fmain.HPDF.CurrentPage.TextOut(140, altura -60 , 0, Grupo);
    Fmain.HPDF.CurrentPage.SetFont('MS Sans Serif',[], 26,0);

    Fmain.HPDF.CurrentPage.TextOut(130, altura -15 , 0, 'Código');
    Fmain.HPDF.CurrentPage.TextOut(280, altura -15 , 0, 'Descripción');
    Fmain.HPDF.CurrentPage.TextOut(580, altura -15 , 0, 'Cantidad');
    Fmain.HPDF.CurrentPage.TextOut(700, altura -15 , 0, 'P. unitario');
    Fmain.HPDF.CurrentPage.TextOut(890, altura -15 , 0, 'Importe');
    Fmain.HPDF.CurrentPage.TextOut(1080, altura -15 , 0, 'Descto');
    Fmain.HPDF.CurrentPage.TextOut(1230, altura -15 , 0, 'Subtotal');
    Fmain.HPDF.CurrentPage.TextOut(1360, altura -15 , 0, 'Impuesto');
    Fmain.HPDF.CurrentPage.TextOut(1490, altura -15 , 0, 'Precio total');
    Fmain.HPDF.CurrentPage.TextOut(1650, altura -15 , 0, 'Fh del ítem');
    AlturaActual:= altura;
end;

procedure ThreadREportes.AddHeader;
begin
  Fmain.HPDF.CurrentPage.SetFont('MS Sans Serif',[], 26,0);

  Fmain.HPDF.CurrentPage.TextOut(850, 77, 0, 'Amazonia, S.A. De C.V.');
  Fmain.HPDF.CurrentPage.TextOut(770, 115, 0, 'Av. Tulum Esq. Av. Nizuc Mza. 1 Lte., 1 -');
  Fmain.HPDF.CurrentPage.TextOut(850, 153, 0, '+01 (998) 891-5200 / + ()');
  // numero de atencion
  Fmain.HPDF.CurrentPage.TextOut(1610, 205, 0, '125161');
  // numero de cuenta
  Fmain.HPDF.CurrentPage.TextOut(1610, 245, 0, '113104');
  // Paciente
  Fmain.HPDF.CurrentPage.TextOut(124, 244, 0, '113242 - Luis Enrique Guyet');
  //Fecha de Entrada
  Fmain.HPDF.CurrentPage.TextOut(365, 295, 0, '22/22/22');
  // Fecha de salida
  Fmain.HPDF.CurrentPage.TextOut(365, 337, 0, '11/31/04');
  // Medico
  Fmain.HPDF.CurrentPage.TextOut(365, 384, 0, 'Roberto De Jesús García Graullera');
end;

procedure ThreadREportes.AddPage;
var
 I : Integer;
 SourceDoc: THotPDF;
 DocLen: Integer;
begin
  SourceDoc := THotPDF.Create(nil);
    try
        DocLen := SourceDoc.LoadFromFile('D:\Proyectos Mexico\HospitalGalenia\Reporte\Plantilla - salva.pdf'); // Load first source document
        for I := 0 to DocLen - 1 do
        begin                                                                    // Copy all pages
            Fmain.HPDF.CopyPageFromDocument(SourceDoc, I, (Fmain.HPDF.PagesCount - 1));//  from first source
        end;
    finally
        SourceDoc.Free;
    end;
end;

function ThreadREportes.IncFila(Num: Integer): Integer;
begin
    Result:= num+40;
end;




//Mail
procedure TFmain.cxButton1Click(Sender: TObject);
var
IdMessage1: TIdMessage;
idSMTP1:TidSMTP;
//slLista : TstringList;
begin
   idSMTP1 := TIdSMTP.Create(Self);
   IdMessage1:=TIdMessage.Create(Self);

 //  slLista := TStringList.Create();
 //  slLista.Add( 'CUERPO DEL MENSAJE' );

   idSMTP1.Username := cxTextEdit21.Text;
   idSMTP1.Password := cxMaskEdit1.Text;
   idSMTP1.Host := cxTextEdit24.Text;
   idSmtp1.Port := StrToInt(cxTextEdit23.Text);
   //idSmtp1.AuthenticationType:=Atlogin;


   idMessage1.Clear;
   idMessage1.ContentType := 'text/html';
   idMessage1.FromList.EMailAddresses := cxTextEdit25.Text;
   idMessage1.Recipients.EMailAddresses := cxTextEdit26.Text;
   idMessage1.Subject := cxTextEdit27.Text;
   idMessage1.Body.AddStrings(cxMemo1.Lines);

   TIdAttachmentFile.Create( idMessage1.MessageParts, 'C:\catalogo precio medicamentos.xls' );
   TIdAttachmentFile.Create( idMessage1.MessageParts, 'C:\catalogo precio materiales.xls' );


   if not idSMTP1.Connected then
   idSMTP1.Connect;
   idSMTP1.Send(IdMessage1);


  // slLista.Free;
end;


 //FTP
procedure TFmain.cxButton19Click(Sender: TObject);
var
  FTP: TIdFTP;
  Archivo:string;
  i:integer;
begin
  // guardar configuracion

  if (cxTextEdit38.Text='') OR (cxTextEdit39.Text='') OR (cxTextEdit40.Text='') then
  begin
    ShowMessage('Debe llenar los parámetros de configuración primero');
  end
  else
  begin
    DM1.QGuardarConfFtp.ParamByName('Host').AsString:= cxTextEdit38.Text;
    DM1.QGuardarConfFtp.ParamByName('User').AsString:= cxTextEdit39.Text;
    DM1.QGuardarConfFtp.ParamByName('Pass').AsString:= cxTextEdit40.Text;
    DM1.QGuardarConfFtp.Execute;

    //VALUES(:Host, :User, :Pass);

    FTP := TIdFTP.Create( nil );
    FTP.Host := cxTextEdit38.Text;
    FTP.Username := cxTextEdit39.Text;
    FTP.Password := cxTextEdit40.Text;
    try
      FTP.Connect;
    except
      raise Exception.Create( 'No se ha podido conectar con el servidor ' + FTP.Host );
      Exit;
    end;

    cxProgressBar14.Properties.Min:=0;

    fileOpenDialog2.Execute;
    cxProgressBar14.Properties.Max:= fileOpenDialog2.Files.Count-1;

    for i:=0 to fileOpenDialog2.Files.Count-1 do
    begin
     cxProgressBar14.Position:=i;
     Archivo:=fileOpenDialog2.Files[i];
     FTP.Put( Archivo, ExtractFileName( Archivo ), False );
    end;

    //FTP.ChangeDir( '/misarchivos/copiaseguridad/' );

    FTP.Disconnect;
    FTP.Free;
  end;





end;



procedure TFmain.cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
  var
i: integer;
begin
//controlar entrada solo números y punto decimal
if ( StrScan('0123456789.' + chr(7) + chr(8), Key) = nil ) then Key := #0;
//cambiar punto decimal por coma
if key = ',' then key := '.';
//controlar entrada una sola coma
for i := 1 to length(cxTextEdit1.Text) do
if ( copy(cxTextEdit1.Text,i,1) = ',' ) and not ( StrScan(',', Key) = nil ) then Key := #0;
end;

procedure TFmain.cxTextEdit2KeyPress(Sender: TObject; var Key: Char);
  var
i: integer;
begin
//controlar entrada solo números y punto decimal
if ( StrScan('0123456789.' + chr(7) + chr(8), Key) = nil ) then Key := #0;
//cambiar punto decimal por coma
if key = ',' then key := '.';
//controlar entrada una sola coma
for i := 1 to length(cxTextEdit2.Text) do
if ( copy(cxTextEdit2.Text,i,1) = ',' ) and not ( StrScan(',', Key) = nil ) then Key := #0;
end;

procedure TFmain.cxTextEdit3KeyPress(Sender: TObject; var Key: Char);
var
i: integer;
begin
//controlar entrada solo números y punto decimal
if ( StrScan('0123456789.' + chr(7) + chr(8), Key) = nil ) then Key := #0;
//cambiar punto decimal por coma
if key = ',' then key := '.';
//controlar entrada una sola coma
for i := 1 to length(cxTextEdit3.Text) do
if ( copy(cxTextEdit3.Text,i,1) = ',' ) and not ( StrScan(',', Key) = nil ) then Key := #0;
end;

procedure TFmain.cxTextEdit4KeyPress(Sender: TObject; var Key: Char);
  var
i: integer;
begin
//controlar entrada solo números y punto decimal
if ( StrScan('0123456789.' + chr(7) + chr(8), Key) = nil ) then Key := #0;
//cambiar punto decimal por coma
if key = ',' then key := '.';
//controlar entrada una sola coma
for i := 1 to length(cxTextEdit4.Text) do
if ( copy(cxTextEdit4.Text,i,1) = ',' ) and not ( StrScan(',', Key) = nil ) then Key := #0;
end;

procedure TFmain.cxTextEdit5KeyPress(Sender: TObject; var Key: Char);
  var
i: integer;
begin
//controlar entrada solo números y punto decimal
if ( StrScan('0123456789.' + chr(7) + chr(8), Key) = nil ) then Key := #0;
//cambiar punto decimal por coma
if key = ',' then key := '.';
//controlar entrada una sola coma
for i := 1 to length(cxTextEdit5.Text) do
if ( copy(cxTextEdit5.Text,i,1) = ',' ) and not ( StrScan(',', Key) = nil ) then Key := #0;
end;

procedure TFmain.cxTextEdit6KeyPress(Sender: TObject; var Key: Char);
  var
i: integer;
begin
//controlar entrada solo números y punto decimal
if ( StrScan('0123456789.' + chr(7) + chr(8), Key) = nil ) then Key := #0;
//cambiar punto decimal por coma
if key = ',' then key := '.';
//controlar entrada una sola coma
for i := 1 to length(cxTextEdit6.Text) do
if ( copy(cxTextEdit6.Text,i,1) = ',' ) and not ( StrScan(',', Key) = nil ) then Key := #0;
end;

procedure TFmain.cxTextEdit7KeyPress(Sender: TObject; var Key: Char);
  var
i: integer;
begin
//controlar entrada solo números y punto decimal
if ( StrScan('0123456789.' + chr(7) + chr(8), Key) = nil ) then Key := #0;
//cambiar punto decimal por coma
if key = ',' then key := '.';
//controlar entrada una sola coma
for i := 1 to length(cxTextEdit7.Text) do
if ( copy(cxTextEdit7.Text,i,1) = ',' ) and not ( StrScan(',', Key) = nil ) then Key := #0;
end;

procedure TFmain.cxTextEdit8KeyPress(Sender: TObject; var Key: Char);
  var
i: integer;
begin
//controlar entrada solo números y punto decimal
if ( StrScan('0123456789.' + chr(7) + chr(8), Key) = nil ) then Key := #0;
//cambiar punto decimal por coma
if key = ',' then key := '.';
//controlar entrada una sola coma
for i := 1 to length(cxTextEdit8.Text) do
if ( copy(cxTextEdit8.Text,i,1) = ',' ) and not ( StrScan(',', Key) = nil ) then Key := #0;
end;

procedure TFmain.cxTextEdit9KeyPress(Sender: TObject; var Key: Char);
  var
i: integer;
begin
//controlar entrada solo números y punto decimal
if ( StrScan('0123456789.' + chr(7) + chr(8), Key) = nil ) then Key := #0;
//cambiar punto decimal por coma
if key = ',' then key := '.';
//controlar entrada una sola coma
for i := 1 to length(cxTextEdit9.Text) do
if ( copy(cxTextEdit9.Text,i,1) = ',' ) and not ( StrScan(',', Key) = nil ) then Key := #0;
end;

procedure TFmain.cxTextEdit10KeyPress(Sender: TObject; var Key: Char);
  var
i: integer;
begin
//controlar entrada solo números y punto decimal
if ( StrScan('0123456789.' + chr(7) + chr(8), Key) = nil ) then Key := #0;
//cambiar punto decimal por coma
if key = ',' then key := '.';
//controlar entrada una sola coma
for i := 1 to length(cxTextEdit10.Text) do
if ( copy(cxTextEdit10.Text,i,1) = ',' ) and not ( StrScan(',', Key) = nil ) then Key := #0;
end;

procedure TFmain.cxTextEdit11KeyPress(Sender: TObject; var Key: Char);
  var
i: integer;
begin
//controlar entrada solo números y punto decimal
if ( StrScan('0123456789.' + chr(7) + chr(8), Key) = nil ) then Key := #0;
//cambiar punto decimal por coma
if key = ',' then key := '.';
//controlar entrada una sola coma
for i := 1 to length(cxTextEdit11.Text) do
if ( copy(cxTextEdit11.Text,i,1) = ',' ) and not ( StrScan(',', Key) = nil ) then Key := #0;
end;

procedure TFmain.cxTextEdit12KeyPress(Sender: TObject; var Key: Char);
  var
i: integer;
begin
//controlar entrada solo números y punto decimal
if ( StrScan('0123456789.' + chr(7) + chr(8), Key) = nil ) then Key := #0;
//cambiar punto decimal por coma
if key = ',' then key := '.';
//controlar entrada una sola coma
for i := 1 to length(cxTextEdit12.Text) do
if ( copy(cxTextEdit12.Text,i,1) = ',' ) and not ( StrScan(',', Key) = nil ) then Key := #0;
end;

procedure TFmain.cxTextEdit13KeyPress(Sender: TObject; var Key: Char);
  var
i: integer;
begin
//controlar entrada solo números y punto decimal
if ( StrScan('0123456789.' + chr(7) + chr(8), Key) = nil ) then Key := #0;
//cambiar punto decimal por coma
if key = ',' then key := '.';
//controlar entrada una sola coma
for i := 1 to length(cxTextEdit13.Text) do
if ( copy(cxTextEdit13.Text,i,1) = ',' ) and not ( StrScan(',', Key) = nil ) then Key := #0;
end;

procedure TFmain.cxTextEdit14KeyPress(Sender: TObject; var Key: Char);
  var
i: integer;
begin
//controlar entrada solo números y punto decimal
if ( StrScan('0123456789.' + chr(7) + chr(8), Key) = nil ) then Key := #0;
//cambiar punto decimal por coma
if key = ',' then key := '.';
//controlar entrada una sola coma
for i := 1 to length(cxTextEdit14.Text) do
if ( copy(cxTextEdit14.Text,i,1) = ',' ) and not ( StrScan(',', Key) = nil ) then Key := #0;
end;

procedure TFmain.cxTextEdit15KeyPress(Sender: TObject; var Key: Char);
  var
i: integer;
begin
//controlar entrada solo números y punto decimal
if ( StrScan('0123456789.' + chr(7) + chr(8), Key) = nil ) then Key := #0;
//cambiar punto decimal por coma
if key = ',' then key := '.';
//controlar entrada una sola coma
for i := 1 to length(cxTextEdit15.Text) do
if ( copy(cxTextEdit15.Text,i,1) = ',' ) and not ( StrScan(',', Key) = nil ) then Key := #0;
end;

procedure TFmain.cxTextEdit16KeyPress(Sender: TObject; var Key: Char);
  var
i: integer;
begin
//controlar entrada solo números y punto decimal
if ( StrScan('0123456789.' + chr(7) + chr(8), Key) = nil ) then Key := #0;
//cambiar punto decimal por coma
if key = ',' then key := '.';
//controlar entrada una sola coma
for i := 1 to length(cxTextEdit16.Text) do
if ( copy(cxTextEdit16.Text,i,1) = ',' ) and not ( StrScan(',', Key) = nil ) then Key := #0;
end;

procedure TFmain.cxTextEdit17KeyPress(Sender: TObject; var Key: Char);
  var
i: integer;
begin
//controlar entrada solo números y punto decimal
if ( StrScan('0123456789.' + chr(7) + chr(8), Key) = nil ) then Key := #0;
//cambiar punto decimal por coma
if key = ',' then key := '.';
//controlar entrada una sola coma
for i := 1 to length(cxTextEdit17.Text) do
if ( copy(cxTextEdit17.Text,i,1) = ',' ) and not ( StrScan(',', Key) = nil ) then Key := #0;
end;

procedure TFmain.cxTextEdit18KeyPress(Sender: TObject; var Key: Char);
  var
i: integer;
begin
//controlar entrada solo números y punto decimal
if ( StrScan('0123456789.' + chr(7) + chr(8), Key) = nil ) then Key := #0;
//cambiar punto decimal por coma
if key = ',' then key := '.';
//controlar entrada una sola coma
for i := 1 to length(cxTextEdit18.Text) do
if ( copy(cxTextEdit18.Text,i,1) = ',' ) and not ( StrScan(',', Key) = nil ) then Key := #0;
end;


end.
