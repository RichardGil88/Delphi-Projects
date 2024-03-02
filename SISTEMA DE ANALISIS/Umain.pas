unit Umain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, AdvMenus, AdvMenuStylers, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxPC, cxControls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxCalendar, cxLookAndFeelPainters, StdCtrls,
  cxButtons, cxLookAndFeels, dxSkinsForm,
  dxNavBarCollns, dxNavBarBase, dxNavBar, dxSkinsdxBarPainter, dxBar,
  dxRibbon, cxContainer, cxGroupBox, cxTextEdit, AdvOfficeTabSet,
  AdvOfficeTabSetStylers, jpeg, ExtCtrls, dxSkinDarkRoom, dxSkinFoggy,
  dxSkinSeven, dxSkinSharp, dxSkinsdxStatusBarPainter, dxStatusBar,
  dxRibbonStatusBar, dxGDIPlusClasses,IniFiles, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver;

type
   TFmain = class(TForm)
    dxSkinController1: TdxSkinController;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarManager1Bar1: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem4: TdxBarSubItem;
    dxBarSubItem5: TdxBarSubItem;
    dxBarSubItem6: TdxBarSubItem;
    dxBarSubItem7: TdxBarSubItem;
    dxBarSubItem8: TdxBarSubItem;
    dxBarSubItem9: TdxBarSubItem;
    dxBarSubItem10: TdxBarSubItem;
    dxBarSubItem11: TdxBarSubItem;
    dxBarSubItem12: TdxBarSubItem;
    dxBarSubItem13: TdxBarSubItem;
    dxBarSubItem14: TdxBarSubItem;
    dxBarSubItem15: TdxBarSubItem;
    dxBarSubItem16: TdxBarSubItem;
    dxBarSubItem17: TdxBarSubItem;
    dxBarSubItem18: TdxBarSubItem;
    dxBarSubItem20: TdxBarSubItem;
    dxBarSubItem21: TdxBarSubItem;
    dxBarSubItem22: TdxBarSubItem;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarButton36: TdxBarButton;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarSubItem30: TdxBarSubItem;
    dxBarButton39: TdxBarButton;
    dxBarButton40: TdxBarButton;
    dxBarButton41: TdxBarButton;
    dxBarButton42: TdxBarButton;
    dxBarButton43: TdxBarButton;
    dxBarButton44: TdxBarButton;
    dxBarButton45: TdxBarButton;
    dxBarButton46: TdxBarButton;
    dxBarButton47: TdxBarButton;
    dxBarButton48: TdxBarButton;
    dxBarButton49: TdxBarButton;
    dxBarButton50: TdxBarButton;
    dxBarButton51: TdxBarButton;
    dxBarButton52: TdxBarButton;
    dxBarButton53: TdxBarButton;
    dxBarButton54: TdxBarButton;
    dxBarButton55: TdxBarButton;
    dxBarButton56: TdxBarButton;
    dxBarButton57: TdxBarButton;
    dxBarButton58: TdxBarButton;
    dxBarButton59: TdxBarButton;
    dxBarButton60: TdxBarButton;
    dxBarButton61: TdxBarButton;
    dxBarButton62: TdxBarButton;
    dxBarButton63: TdxBarButton;
    dxBarButton64: TdxBarButton;
    dxBarButton65: TdxBarButton;
    dxBarButton66: TdxBarButton;
    dxBarButton67: TdxBarButton;
    dxBarButton68: TdxBarButton;
    dxBarButton69: TdxBarButton;
    dxBarButton70: TdxBarButton;
    dxBarButton71: TdxBarButton;
    dxBarButton72: TdxBarButton;
    dxBarButton73: TdxBarButton;
    dxBarSubItem19: TdxBarSubItem;
    dxBarButton74: TdxBarButton;
    dxBarSubItem31: TdxBarSubItem;
    dxBarButton75: TdxBarButton;
    dxBarButton76: TdxBarButton;
    dxBarButton77: TdxBarButton;
    dxBarSubItem32: TdxBarSubItem;
    dxBarButton78: TdxBarButton;
    dxBarButton79: TdxBarButton;
    img1: TImage;
    dxBarButton80: TdxBarButton;
    dxBarSubItem34: TdxBarSubItem;
    dxBarButton81: TdxBarButton;
    dxBarButton82: TdxBarButton;
    dxBarSubItem35: TdxBarSubItem;
    dxBarButton83: TdxBarButton;
    dxBarButton84: TdxBarButton;
    dxBarButton85: TdxBarButton;
    dxBarButton86: TdxBarButton;
    dxBarButton87: TdxBarButton;
    dxBarButton88: TdxBarButton;
    dxBarButton89: TdxBarButton;
    dxBarSubItem36: TdxBarSubItem;
    dxBarButton90: TdxBarButton;
    dxBarButton91: TdxBarButton;
    dxBarButton93: TdxBarButton;
    dxBarButton94: TdxBarButton;
    dxBarSubItem37: TdxBarSubItem;
    dxBarButton95: TdxBarButton;
    dxBarSubItem38: TdxBarSubItem;
    dxStatusBar1: TdxStatusBar;
    dxStatusBar1Container5: TdxStatusBarContainerControl;
    img2: TImage;
    dxBarSubItem39: TdxBarSubItem;
    dxBarSubItem40: TdxBarSubItem;
    dxBarSubItem41: TdxBarSubItem;
    dxBarSubItem42: TdxBarSubItem;
    dxBarButton96: TdxBarButton;
    dxBarButton97: TdxBarButton;
    dxBarButton98: TdxBarButton;
    dxBarButton99: TdxBarButton;
    dxBarButton100: TdxBarButton;
    dxBarButton101: TdxBarButton;
    dxBarButton102: TdxBarButton;
    dxBarButton103: TdxBarButton;
    dxBarButton104: TdxBarButton;
    dxBarButton105: TdxBarButton;
    dxBarButton106: TdxBarButton;
    dxBarSubItem43: TdxBarSubItem;
    dxBarButton107: TdxBarButton;
    dxBarButton108: TdxBarButton;
    dxBarButton109: TdxBarButton;
    dxBarButton110: TdxBarButton;
    dxBarSubItem44: TdxBarSubItem;
    dxBarButton111: TdxBarButton;
    CustomdxBarCombo1: TCustomdxBarCombo;
    dxBarCombo1: TdxBarCombo;
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton74Click(Sender: TObject);
    procedure dxBarButton75Click(Sender: TObject);
    procedure dxBarButton78Click(Sender: TObject);
    procedure dxBarButton79Click(Sender: TObject);
    procedure dxBarButton77Click(Sender: TObject);
    procedure dxBarButton28Click(Sender: TObject);
    procedure dxBarButton31Click(Sender: TObject);
    procedure dxBarButton42Click(Sender: TObject);
    procedure dxBarButton43Click(Sender: TObject);
    procedure dxBarButton44Click(Sender: TObject);
    procedure dxBarButton50Click(Sender: TObject);
    procedure dxBarButton51Click(Sender: TObject);
    procedure dxBarButton53Click(Sender: TObject);
    procedure dxBarButton54Click(Sender: TObject);
    procedure dxBarButton55Click(Sender: TObject);
    procedure dxBarButton56Click(Sender: TObject);
    procedure dxBarButton65Click(Sender: TObject);
    procedure dxBarButton66Click(Sender: TObject);
    procedure dxBarButton67Click(Sender: TObject);
    procedure dxBarButton68Click(Sender: TObject);
    procedure dxBarButton69Click(Sender: TObject);
    procedure dxBarButton70Click(Sender: TObject);
    procedure dxBarButton71Click(Sender: TObject);
    procedure dxBarButton72Click(Sender: TObject);
    procedure dxBarButton73Click(Sender: TObject);
    procedure dxBarButton80Click(Sender: TObject);
    procedure dxBarButton83Click(Sender: TObject);
    procedure dxBarButton84Click(Sender: TObject);
    procedure dxBarButton85Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton86Click(Sender: TObject);
    procedure dxBarButton88Click(Sender: TObject);
    procedure dxBarButton89Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dxBarButton96Click(Sender: TObject);
    procedure dxBarButton102Click(Sender: TObject);
    procedure dxBarButton103Click(Sender: TObject);
    procedure dxBarButton104Click(Sender: TObject);
    procedure dxBarButton105Click(Sender: TObject);
    procedure dxBarButton106Click(Sender: TObject);
    procedure dxBarButton107Click(Sender: TObject);
    procedure dxBarButton108Click(Sender: TObject);
    procedure dxBarButton110Click(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarCombo1Change(Sender: TObject);
   
  private
    { Private declarations }
  public
    var usuario,unidad,cargo:string;
    { Public declarations }
  end;

var
  Fmain: TFmain;
  skin:string;
implementation

{$R *.dfm}
uses UDM,Ubancovoces,Ucomentarios,Udescubrimientos,Ucasos,Uobjanttodos,Uclaves,Udoccat,Udoctipos,UEventos,
Uidiomas,Uinformesorigen,Umunic,Unomdestentreg,Unomformasentreg,Uopiniones,Uorganismos,Usectorsocopi,Ucategorias,Utipotrans,
Uusuarioscargo,Uuserest,Uverest,Uvertema,Uvertipos,Ulogin,Uhistoricos,UcontrolAntecedentes,Ueliminarusuario,Umodificarusuario,
UActualizarDatosGenerales,Ucrearusuario,Uagregarantecedente,Upaises, Uservicioagregado, Uactreuorganos,UlevantamientosTelef, UsalidaSIA;


procedure TFmain.dxBarButton6Click(Sender: TObject);
var
  bancovoces: TFbancovoces;
begin
  bancovoces := TFbancovoces.Create(Self);
  try
    bancovoces.show;
  except
    bancovoces.Free;
  end;
end;

procedure TFmain.dxBarButton96Click(Sender: TObject);
var
  ACTREUORGANOS: TFACTREUORGANOS;
begin

  ACTREUORGANOS := TFACTREUORGANOS.Create(Self);
  try
    ACTREUORGANOS.show;
  except
    ACTREUORGANOS.Free;
  end;
end;

procedure TFmain.dxBarCombo1Change(Sender: TObject);
  var
  appINI : TIniFile;
  ini:string;
begin
  skin:= dxBarCombo1.Text;
  dxSkinController1.SkinName:= skin;
  //skin
  //si no existe crealo
  ini:=ExtractFilePath(Application.ExeName)+usuario+'.ini';
  if not FileExists(ini) then
  begin
     appINI := TIniFile.Create(ini) ;
     try
        appINI.WriteString('Skin','skin',skin) ;
     finally
        appIni.Free;
     end;
  end
  else
  //si esiste leelo
  begin
    appINI := TIniFile.Create(ini) ;
    try
      appINI.WriteString('Skin','Skin',skin);
    finally
      appINI.Free;
    end;
  end;
end;

procedure TFmain.dxBarButton102Click(Sender: TObject);
var
  FACTREUORGANOS: TFACTREUORGANOS;
begin

  FACTREUORGANOS := TFACTREUORGANOS.Create(Self);
  try
    FACTREUORGANOS.show;
  except
    FACTREUORGANOS.Free;
  end;
end;

procedure TFmain.dxBarButton103Click(Sender: TObject);
var
  FLEVANTAMIENTOSTELEF: TFLEVANTAMIENTOSTELEF;
begin

  FLEVANTAMIENTOSTELEF := TFLEVANTAMIENTOSTELEF.Create(Self);
  try
    FLEVANTAMIENTOSTELEF.show;
  except
    FLEVANTAMIENTOSTELEF.Free;
  end;
end;

procedure TFmain.dxBarButton104Click(Sender: TObject);
var
  SALIDASIA: TFSALIDASIA;
begin
  SALIDASIA := TFSALIDASIA.Create(Self);
  try
    SALIDASIA.show;
  except
    SALIDASIA.Free;
  end;
end;

procedure TFmain.dxBarButton105Click(Sender: TObject);
var
  controlAntecedentes: TFcontrolAntecedentes;
begin
  controlAntecedentes := TFcontrolAntecedentes.Create(Self);
  try
    controlAntecedentes.show;
  except
    controlAntecedentes.Free;
  end;
end;

procedure TFmain.dxBarButton106Click(Sender: TObject);
var
  agregarservagregados: TFservicioagregado;
begin
  agregarservagregados := TFservicioagregado.Create(Self);
  try
    agregarservagregados.show;
  except
    agregarservagregados.Free;
  end;
end;

procedure TFmain.dxBarButton107Click(Sender: TObject);
begin
Application.Minimize;
end;

procedure TFmain.dxBarButton108Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TFmain.dxBarButton10Click(Sender: TObject);
var
  Casos: TFCasos;
begin
  Casos := TFCasos.Create(Self);
  try
    Casos.show;
  except
    Casos.Free;
  end;
end;

procedure TFmain.dxBarButton110Click(Sender: TObject);
begin
Flogin.Hide;
Fmain.SendToBack;
end;

procedure TFmain.dxBarButton17Click(Sender: TObject);
var
 claves:TFClaves;
begin
   claves := TFClaves.Create(Self);
  try
    claves.show;
  except
    claves.Free;
  end;
end;

procedure TFmain.dxBarButton74Click(Sender: TObject);
var
  objanttodos: TFobjanttodos;
begin
  objanttodos := TFobjanttodos.Create(Self);
  try
    objanttodos.show;
  except
    objanttodos.Free;
  end;
  objanttodos.cxGrid1DBTableView1.DataController.DataSource:=DM.DSserv;
  objanttodos.cxGrid1.Visible:=True;
  DM.TABLEobjanteced.Open;
end;

procedure TFmain.dxBarButton75Click(Sender: TObject);
var
  objanttodos: TFobjanttodos;
begin
  objanttodos := TFobjanttodos.Create(Self);
  try
    objanttodos.Show;
    except
    objanttodos.Free;
  end;
   objanttodos.cxPageControl1.Visible:=True;
   objanttodos.tabnombre.TabVisible:=True;
   objanttodos.tabchtelefono.TabVisible:=false;
   objanttodos.tabchcorreo.TabVisible:=false;
   objanttodos.tabchdir.TabVisible:=False;
   objanttodos.cxPageControl1.ActivePage:=objanttodos.tabnombre;
   objanttodos.cxGrid1DBTableView1.DataController.DataSource:=DM.DSOAbynombre;
   objanttodos.cxGrid1.Visible:=False;
end;

procedure TFmain.dxBarButton78Click(Sender: TObject);
var
  objanttodos: TFobjanttodos;
begin
  objanttodos := TFobjanttodos.Create(Self);
  try
    objanttodos.show;
    except
    objanttodos.Free;
  end;
   objanttodos.cxPageControl1.Visible:=True;
   objanttodos.tabnombre.TabVisible:=False;
   objanttodos.tabchtelefono.TabVisible:=True;
   objanttodos.tabchcorreo.TabVisible:=false;
   objanttodos.tabchdir.TabVisible:=False;
   objanttodos.cxPageControl1.ActivePage:=objanttodos.tabchtelefono;
   objanttodos.cxGrid1DBTableView1.DataController.DataSource:=DM.DSOAbytel;
   objanttodos.cxGrid1.Visible:=False;
end;

procedure TFmain.dxBarButton79Click(Sender: TObject);
var
  objanttodos: TFobjanttodos;
begin
  objanttodos := TFobjanttodos.Create(Self);
  try
    objanttodos.show;
    except
    objanttodos.Free;
  end;
    objanttodos.cxPageControl1.Visible:=True;
    objanttodos.tabnombre.TabVisible:=False;
    objanttodos.tabchtelefono.TabVisible:=false;
    objanttodos.tabchcorreo.TabVisible:=True;
    objanttodos.tabchdir.TabVisible:=False;
    objanttodos.cxPageControl1.ActivePage:=objanttodos.tabchcorreo;
    objanttodos.cxGrid1DBTableView1.DataController.DataSource:=DM.DSOAbycorreo;
    objanttodos.cxGrid1.Visible:=False;
end;

procedure TFmain.dxBarButton77Click(Sender: TObject);
var
  objanttodos: TFobjanttodos;
begin
  objanttodos := TFobjanttodos.Create(Self);
  try
    objanttodos.show;
  except
    objanttodos.Free;
  end;
   objanttodos.cxPageControl1.Visible:=True;
   objanttodos.tabnombre.TabVisible:=false;
   objanttodos.tabchtelefono.TabVisible:=false;
   objanttodos.tabchcorreo.TabVisible:=false;
   objanttodos.tabchdir.TabVisible:=true;
   objanttodos.cxPageControl1.ActivePage:=objanttodos.tabchdir;
   objanttodos.cxGrid1.Visible:=False;
end;

procedure TFmain.dxBarButton28Click(Sender: TObject);
var
  comentarios: TFcomentarios;
begin
  comentarios := TFcomentarios.Create(Self);
  try
    comentarios.show;
  except
    comentarios.Free;
  end;
end;

procedure TFmain.dxBarButton31Click(Sender: TObject);
var
  desc: TFdescubrimientos;
begin
  desc := TFdescubrimientos.Create(Self);
  try
    desc.show;
  except
    desc.Free;
  end;
end;



procedure TFmain.dxBarButton42Click(Sender: TObject);
var
  doccat: TFdoccat;
begin
  doccat := TFdoccat.Create(Self);
  try
    doccat.show;
  except
   doccat.Free;
  end;
    DM.TABLEdoccat.Open;
end;

procedure TFmain.dxBarButton43Click(Sender: TObject);
var
  doctipos: TFdoctipos;
begin
  doctipos := TFdoctipos.Create(Self);
  try
    doctipos.show;
  except
   doctipos.Free;
  end;
    DM.TABLEdoctip.Open;
end;

procedure TFmain.dxBarButton44Click(Sender: TObject);
var
  eventos: TFeventos;
begin
  eventos := TFeventos.Create(Self);
  try
    eventos.show;
  except
   eventos.Free;
  end;
end;

procedure TFmain.dxBarButton50Click(Sender: TObject);
var
  idiomas: TFidiomas;
begin
  idiomas := TFidiomas.Create(Self);
  try
    idiomas.show;
  except
   idiomas.Free;
  end;
    DM.TABLEidiomas.Open;
end;

procedure TFmain.dxBarButton51Click(Sender: TObject);
var
  informesorigen: TFinformesorigen;
begin
  informesorigen := TFinformesorigen.Create(Self);
  try
    informesorigen.show;
  except
   informesorigen.Free;
  end;
    DM.TABLEinforg.Open;
end;

procedure TFmain.dxBarButton53Click(Sender: TObject);
var
  munic: TFmunic;
begin
  munic := TFmunic.Create(Self);
  try
    munic.show;
  except
   munic.Free;
  end;
    DM.TABLEmunic.Open;
end;

procedure TFmain.dxBarButton54Click(Sender: TObject);
var
 nomdestentreg: TFnomdestentreg;
begin
  nomdestentreg := TFnomdestentreg.Create(Self);
  try
    nomdestentreg.show;
  except
   nomdestentreg.Free;
  end;
    DM.TABLEnomdestentreg.Open;
end;

procedure TFmain.dxBarButton55Click(Sender: TObject);
var
 nomformasentreg: TFnomformasentreg;
begin
  nomformasentreg := TFnomformasentreg.Create(Self);
  try
    nomformasentreg.show;
  except
   nomformasentreg.Free;
  end;
    DM.TABLEnomformentreg.Open;
end;

procedure TFmain.dxBarButton56Click(Sender: TObject);
var
 opiniones: TFopiniones;
begin
  opiniones := TFopiniones.Create(Self);
  try
    opiniones.show;
  except
   opiniones.Free;
  end;
end;

procedure TFmain.dxBarButton65Click(Sender: TObject);
var
 organismos: TForganismos;
begin
  organismos := TForganismos.Create(Self);
  try
   organismos.show;
  except
    organismos.Free;
  end;
    DM.TABLEorganismos.Open;
end;

procedure TFmain.dxBarButton66Click(Sender: TObject);
var
 sectorsocopi: TFsectorsocopi;
begin
  sectorsocopi := TFsectorsocopi.Create(Self);
  try
   sectorsocopi.show;
  except
    sectorsocopi.Free;
  end;
    DM.TABLEsectsocop.Open;
end;

procedure TFmain.dxBarButton67Click(Sender: TObject);
var
 cat: TFcategorias;
begin
  cat := TFcategorias.Create(Self);
  try
   cat.show;
  except
    cat.Free;
  end;
    DM.TABLEcategorias.Open;
end;

procedure TFmain.dxBarButton68Click(Sender: TObject);
var
 tipotrans: TFtipotrans;
begin
  tipotrans :=TFtipotrans.Create(Self);
  try
   tipotrans.show;
  except
    tipotrans.Free;
  end;
    DM.TABLEtipotrans.Open;
end;

procedure TFmain.dxBarButton69Click(Sender: TObject);
var
 usuarioscargo: TFusuarioscargo;
begin
  usuarioscargo :=TFusuarioscargo.Create(Self);
  try
   usuarioscargo.show;
  except
    usuarioscargo.Free;
  end;
    DM.TABLEusercarg.Open;
end;

procedure TFmain.dxBarButton70Click(Sender: TObject);
var
 userest: TFuserest;
begin
  userest :=TFuserest.Create(Self);
  try
   userest.show;
  except
    userest.Free;
  end;
    DM.TABLEuserest.Open;
end;

procedure TFmain.dxBarButton71Click(Sender: TObject);
var
 verest: TFverest;
begin
  verest :=TFverest.Create(Self);
  try
   verest.show;
  except
    verest.Free;
  end;
    DM.TABLEversest.Open;
end;

procedure TFmain.dxBarButton72Click(Sender: TObject);
var
 vertema: TFvertema;
begin
  vertema :=TFvertema.Create(Self);
  try
   vertema.show;
  except
    vertema.Free;
  end;
    DM.TABLEverstemas.Open;
end;

procedure TFmain.dxBarButton73Click(Sender: TObject);
var
 vertipos: TFvertipos;
begin
  vertipos :=TFvertipos.Create(Self);
  try
   vertipos.show;
  except
    vertipos.Free;
  end;
    DM.TABLEverstipos.Open;
end;

procedure TFmain.dxBarButton80Click(Sender: TObject);
var
  historicos: TFhistoricos;
begin
  historicos := TFhistoricos.Create(Self);
  try
    historicos.Show;
  except
    historicos.Free;
  end;
end;

procedure TFmain.dxBarButton83Click(Sender: TObject);
var
  CREARUSUARIO: TfCREARUSUARIO;
begin
  CREARUSUARIO := TfCREARUSUARIO.Create(Self);
  try
    CREARUSUARIO.show;
  except
    CREARUSUARIO.Free;
  end;
end;

procedure TFmain.dxBarButton84Click(Sender: TObject);
var
  eliminar: TFeliminarusuario;
begin
  eliminar := TFeliminarusuario.Create(Self);
  try
    eliminar.show;
  except
    eliminar.Free;
  end;
end;

procedure TFmain.dxBarButton85Click(Sender: TObject);
var
  modificarusuario: TFmodificarusuario;
begin
  modificarusuario := TFmodificarusuario.Create(Self);
  try
    modificarusuario.show;
  except
    modificarusuario.Free;
  end;
end;

procedure TFmain.FormActivate(Sender: TObject);
  var
  appINI : TIniFile;
  ini:string;
begin
 Fmain.dxStatusBar1.Panels[1].text:='Usuario:'+'  '+usuario;
 Fmain.dxStatusBar1.Panels[2].text:='Cargo:'+'  '+cargo;
 Fmain.dxStatusBar1.Panels[3].text:='Unidad:'+'  '+unidad;

  //skin
  //si no existe crealo
  ini:=ExtractFilePath(Application.ExeName)+usuario+'.ini';
  if not FileExists(ini) then
  begin
     appINI := TIniFile.Create(ini) ;
     try
        appINI.WriteString('Skin','skin','Springtime') ;
     finally
        appIni.Free;
     end;
  end
  else
  //si esiste leelo
  begin
    appINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+usuario+'.ini') ;
    try
      skin := appINI.ReadString('Skin','Skin','Springtime');
    finally
     appINI.Free;
    end;
  end;
  dxSkinController1.SkinName:=skin;
  dxBarCombo1.Text:=skin;
end;

procedure TFmain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TFmain.dxBarButton86Click(Sender: TObject);
var
  ActualizarDatosGenerales: TFActualizarDatosGenerales;
begin
  ActualizarDatosGenerales := TFActualizarDatosGenerales.Create(Self);
  try
    ActualizarDatosGenerales.Show;
  except
    ActualizarDatosGenerales.Free;
  end;
end;

procedure TFmain.dxBarButton88Click(Sender: TObject);
var
  AGREGARANTECEDENTE: TFAGREGARANTECEDENTE;
begin
  AGREGARANTECEDENTE := TFAGREGARANTECEDENTE.Create(Self);
  try
    AGREGARANTECEDENTE.show;
  except
    AGREGARANTECEDENTE.Free;
  end;
end;

procedure TFmain.dxBarButton89Click(Sender: TObject);
var
  paises: TFpaises;
begin
  paises := TFpaises.Create(Self);
  try
    paises.show;
  except
    paises.Free;
  end;
end;

end.
