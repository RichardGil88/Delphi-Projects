unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsdxBarPainter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsdxRibbonPainter, dxStatusBar, dxRibbonStatusBar,
  dxRibbon, ImgList, dxBar, dxBarExtItems, dxRibbonGallery, cxClasses,
  cxContainer, cxEdit, dxSkinsForm, cxGroupBox, jpeg, ExtCtrls,
  dxSkinsdxStatusBarPainter, dxGDIPlusClasses, ToolWin, ActnMan, ActnCtrls,
  ActnMenus, StdCtrls, cxShellComboBox, cxBarEditItem, dxRibbonSkins,
  dxSkinBlueprint, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint;

type
  TFmain = class(TForm)
    dxBarManager1: TdxBarManager;
    dxRibbon1Tabunidad3: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tabunidad4: TdxRibbonTab;
    dxRibbon1Tabunidad5: TdxRibbonTab;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar3: TdxBar;
    dxRibbon1Tabunidad6: TdxRibbonTab;
    dxRibbon1Tabunidad7: TdxRibbonTab;
    dxRibbon1Tabunidad9: TdxRibbonTab;
    dxRibbon1Tabgeneral: TdxRibbonTab;
    dxBarManager1Bar14: TdxBar;
    dxBarManager1Bar16: TdxBar;
    dxBarManager1Bar20: TdxBar;
    dxRibbon1Tabusuarios: TdxRibbonTab;
    dxBarManager1Bar23: TdxBar;
    dxBarManager1Bar24: TdxBar;
    dxBarManager1Bar25: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxStatusBar1: TdxStatusBar;
    dxStatusBar1Container5: TdxStatusBarContainerControl;
    img2: TImage;
    img1: TImage;
    dxBarSubItem12: TdxBarSubItem;
    dxBarSubItem13: TdxBarSubItem;
    dxBarSubItem14: TdxBarSubItem;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarSubItem15: TdxBarSubItem;
    dxBarSubItem16: TdxBarSubItem;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarSubItem17: TdxBarSubItem;
    dxBarSubItem18: TdxBarSubItem;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarSubItem19: TdxBarSubItem;
    dxBarSubItem20: TdxBarSubItem;
    dxBarSubItem22: TdxBarSubItem;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarSubItem23: TdxBarSubItem;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    dxBarLargeButton16: TdxBarLargeButton;
    dxBarLargeButton17: TdxBarLargeButton;
    dxBarLargeButton18: TdxBarLargeButton;
    dxBarLargeButton19: TdxBarLargeButton;
    dxBarLargeButton20: TdxBarLargeButton;
    dxBarLargeButton21: TdxBarLargeButton;
    dxBarSubItem24: TdxBarSubItem;
    dxBarSubItem25: TdxBarSubItem;
    dxBarSubItem26: TdxBarSubItem;
    dxBarSubItem27: TdxBarSubItem;
    dxBarLargeButton22: TdxBarLargeButton;
    dxBarLargeButton23: TdxBarLargeButton;
    dxBarSubItem28: TdxBarSubItem;
    dxBarSubItem29: TdxBarSubItem;
    dxBarLargeButton24: TdxBarLargeButton;
    dxBarLargeButton25: TdxBarLargeButton;
    dxBarLargeButton26: TdxBarLargeButton;
    dxBarSubItem30: TdxBarSubItem;
    dxBarLargeButton27: TdxBarLargeButton;
    dxBarLargeButton28: TdxBarLargeButton;
    dxBarSubItem31: TdxBarSubItem;
    dxBarSubItem32: TdxBarSubItem;
    dxBarSubItem33: TdxBarSubItem;
    dxBarManager1Bar47: TdxBar;
    dxBarSubItem34: TdxBarSubItem;
    dxBarSubItem35: TdxBarSubItem;
    dxBarSubItem36: TdxBarSubItem;
    dxBarSubItem37: TdxBarSubItem;
    dxBarSubItem38: TdxBarSubItem;
    dxBarLargeButton31: TdxBarLargeButton;
    dxBarLargeButton32: TdxBarLargeButton;
    dxBarLargeButton33: TdxBarLargeButton;
    dxBarLargeButton34: TdxBarLargeButton;
    dxBarLargeButton35: TdxBarLargeButton;
    dxBarLargeButton36: TdxBarLargeButton;
    dxBarLargeButton37: TdxBarLargeButton;
    dxBarLargeButton38: TdxBarLargeButton;
    dxBarLargeButton39: TdxBarLargeButton;
    dxBarLargeButton40: TdxBarLargeButton;
    dxBarLargeButton41: TdxBarLargeButton;
    dxBarSubItem39: TdxBarSubItem;
    dxBarLargeButton42: TdxBarLargeButton;
    dxBarLargeButton43: TdxBarLargeButton;
    dxBarLargeButton44: TdxBarLargeButton;
    dxBarLargeButton45: TdxBarLargeButton;
    dxBarSubItem40: TdxBarSubItem;
    dxBarLargeButton46: TdxBarLargeButton;
    dxBarLargeButton47: TdxBarLargeButton;
    dxBarLargeButton48: TdxBarLargeButton;
    dxBarLargeButton49: TdxBarLargeButton;
    dxBarLargeButton50: TdxBarLargeButton;
    dxBarLargeButton51: TdxBarLargeButton;
    dxBarLargeButton52: TdxBarLargeButton;
    dxBarSubItem41: TdxBarSubItem;
    dxBarLargeButton53: TdxBarLargeButton;
    dxBarLargeButton54: TdxBarLargeButton;
    dxBarLargeButton55: TdxBarLargeButton;
    dxBarLargeButton56: TdxBarLargeButton;
    dxBarLargeButton57: TdxBarLargeButton;
    dxBarLargeButton58: TdxBarLargeButton;
    dxBarLargeButton59: TdxBarLargeButton;
    dxBarLargeButton60: TdxBarLargeButton;
    dxBarLargeButton61: TdxBarLargeButton;
    dxBarLargeButton62: TdxBarLargeButton;
    dxBarLargeButton63: TdxBarLargeButton;
    dxBarLargeButton64: TdxBarLargeButton;
    dxBarLargeButton65: TdxBarLargeButton;
    dxBarLargeButton66: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
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
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton29: TdxBarLargeButton;
    dxBarLargeButton30: TdxBarLargeButton;
    dxBarLargeButton67: TdxBarLargeButton;
    dxBarButton21: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton22: TdxBarButton;
    dxBarLargeButton68: TdxBarLargeButton;
    dxBarLargeButton69: TdxBarLargeButton;
    dxBarLargeButton70: TdxBarLargeButton;
    dxBarLargeButton71: TdxBarLargeButton;
    dxBarLargeButton72: TdxBarLargeButton;
    dxBarButton23: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton24: TdxBarButton;
    dxBarLargeButton73: TdxBarLargeButton;
    dxBarButton25: TdxBarButton;
    dxRibbon1Tabunidad11: TdxRibbonTab;
    dxBarManager1Bar35: TdxBar;
    dxBarLargeButton74: TdxBarLargeButton;
    dxBarLargeButton75: TdxBarLargeButton;
    dxBarLargeButton76: TdxBarLargeButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarLargeButton77: TdxBarLargeButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    tmr1: TTimer;
    dxBarLargeButton78: TdxBarLargeButton;
    dxBarSubItem6: TdxBarSubItem;
    dxBarButton28: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarLargeButton79: TdxBarLargeButton;
    dxBarLargeButton80: TdxBarLargeButton;
    dxBarLargeButton81: TdxBarLargeButton;
    dxBarLargeButton82: TdxBarLargeButton;
    dxBarLargeButton83: TdxBarLargeButton;
    dxBarLargeButton84: TdxBarLargeButton;
    dxBarLargeButton85: TdxBarLargeButton;
    dxBarButton32: TdxBarButton;
    dxBarLargeButton86: TdxBarLargeButton;
    dxSkinController1: TdxSkinController;
    dxBarLargeButton87: TdxBarLargeButton;
    dxBarSubItem7: TdxBarSubItem;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    cxBarEditItem1: TcxBarEditItem;
    dxBarSubItem8: TdxBarSubItem;
    dxBarContainerItem1: TdxBarContainerItem;
    dxBarStatic1: TdxBarStatic;
    dxBarSubItem9: TdxBarSubItem;
    dxBarImageCombo1: TdxBarImageCombo;
    dxBarSubItem10: TdxBarSubItem;
    dxBarButton36: TdxBarButton;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarLargeButton88: TdxBarLargeButton;
    dxBarLargeButton89: TdxBarLargeButton;
    dxBarLargeButton90: TdxBarLargeButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure dxBarLargeButton10Click(Sender: TObject);
    procedure dxBarLargeButton15Click(Sender: TObject);
    procedure dxBarLargeButton26Click(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure dxBarLargeButton9Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure dxBarButton28Click(Sender: TObject);
    procedure dxBarButton33Click(Sender: TObject);
    procedure dxBarButton59Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure dxBarLargeButton32Click(Sender: TObject);
    procedure dxBarButton109Click(Sender: TObject);
    procedure dxBarButton110Click(Sender: TObject);
    procedure dxBarLargeButton31Click(Sender: TObject);
    procedure dxBarLargeButton19Click(Sender: TObject);
    procedure dxBarLargeButton20Click(Sender: TObject);
    procedure dxBarLargeButton34Click(Sender: TObject);
    procedure dxBarLargeButton36Click(Sender: TObject);
    procedure dxBarLargeButton33Click(Sender: TObject);
    procedure dxBarLargeButton35Click(Sender: TObject);
    procedure dxBarLargeButton37Click(Sender: TObject);
    procedure dxBarLargeButton38Click(Sender: TObject);
    procedure dxBarLargeButton18Click(Sender: TObject);
    procedure dxBarLargeButton39Click(Sender: TObject);
    procedure dxBarButton113Click(Sender: TObject);
    procedure dxBarLargeButton42Click(Sender: TObject);
    procedure dxBarLargeButton43Click(Sender: TObject);
    procedure dxBarLargeButton41Click(Sender: TObject);
    procedure dxBarLargeButton44Click(Sender: TObject);
    procedure dxBarLargeButton45Click(Sender: TObject);
    procedure dxBarLargeButton23Click(Sender: TObject);
    procedure dxBarLargeButton46Click(Sender: TObject);
    procedure dxBarLargeButton47Click(Sender: TObject);
    procedure dxBarLargeButton48Click(Sender: TObject);
    procedure dxBarLargeButton49Click(Sender: TObject);
    procedure dxBarLargeButton50Click(Sender: TObject);
    procedure dxBarLargeButton51Click(Sender: TObject);
    procedure dxBarLargeButton52Click(Sender: TObject);
    procedure dxBarButton114Click(Sender: TObject);
    procedure dxBarLargeButton53Click(Sender: TObject);
    procedure dxBarLargeButton54Click(Sender: TObject);
    procedure dxBarLargeButton55Click(Sender: TObject);
    procedure dxBarLargeButton56Click(Sender: TObject);
    procedure dxBarLargeButton57Click(Sender: TObject);
    procedure dxBarLargeButton58Click(Sender: TObject);
    procedure dxBarLargeButton59Click(Sender: TObject);
    procedure dxBarLargeButton60Click(Sender: TObject);
    procedure dxBarLargeButton61Click(Sender: TObject);
    procedure dxBarLargeButton62Click(Sender: TObject);
    procedure dxBarLargeButton63Click(Sender: TObject);
    procedure dxBarLargeButton64Click(Sender: TObject);
    procedure dxBarButton117Click(Sender: TObject);
    procedure dxBarButton118Click(Sender: TObject);
    procedure dxBarButton121Click(Sender: TObject);
    procedure dxBarButton120Click(Sender: TObject);
    procedure dxBarButton119Click(Sender: TObject);
    procedure dxBarButton122Click(Sender: TObject);
    procedure dxBarButton123Click(Sender: TObject);
    procedure dxBarButton124Click(Sender: TObject);
    procedure dxBarLargeButton65Click(Sender: TObject);
    procedure dxBarLargeButton66Click(Sender: TObject);
    procedure dxBarButton65Click(Sender: TObject);
    procedure dxBarButton115Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton62Click(Sender: TObject);
    procedure dxBarButton61Click(Sender: TObject);
    procedure dxBarButton125Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dxBarLargeButton29Click(Sender: TObject);
    procedure dxBarLargeButton30Click(Sender: TObject);
    procedure dxBarLargeButton67Click(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
    procedure dxBarLargeButton68Click(Sender: TObject);
    procedure dxBarLargeButton69Click(Sender: TObject);
    procedure dxBarLargeButton70Click(Sender: TObject);
    procedure dxBarLargeButton71Click(Sender: TObject);
    procedure dxBarButton22Click(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure dxBarButton24Click(Sender: TObject);
    procedure dxBarLargeButton73Click(Sender: TObject);
    procedure dxBarButton25Click(Sender: TObject);
    procedure dxBarLargeButton74Click(Sender: TObject);
    procedure dxBarLargeButton75Click(Sender: TObject);
    procedure dxBarButton26Click(Sender: TObject);
    procedure dxBarLargeButton77Click(Sender: TObject);
    procedure dxBarButton29Click(Sender: TObject);
    procedure dxBarButton30Click(Sender: TObject);
    procedure dxBarLargeButton76Click(Sender: TObject);
    procedure dxBarButton27Click(Sender: TObject);
    procedure dxBarLargeButton78Click(Sender: TObject);
    procedure dxBarButton31Click(Sender: TObject);
    procedure dxBarLargeButton79Click(Sender: TObject);
    procedure dxBarLargeButton72Click(Sender: TObject);
    procedure dxBarLargeButton80Click(Sender: TObject);
    procedure dxBarLargeButton81Click(Sender: TObject);
    procedure dxBarLargeButton82Click(Sender: TObject);
    procedure dxBarLargeButton83Click(Sender: TObject);
    procedure dxBarLargeButton84Click(Sender: TObject);
    procedure dxBarLargeButton85Click(Sender: TObject);
    procedure dxBarLargeButton86Click(Sender: TObject);
    procedure dxBarButton34Click(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure dxBarButton36Click(Sender: TObject);
    procedure dxBarButton37Click(Sender: TObject);
    procedure dxBarButton38Click(Sender: TObject);
    procedure dxBarLargeButton88Click(Sender: TObject);
    procedure dxBarLargeButton89Click(Sender: TObject);
    procedure dxBarLargeButton90Click(Sender: TObject);
  private
    { Private declarations }
  public
  var usuario,cargo,unidad,boton:string;
    { Public declarations }
  end;


var
  id:Integer;
  Fmain: TFmain;

implementation

uses Unit2,Unit4, Unit5, Unit6, Unit7, Unit9, Unit10,Unit11,Unit12, Unit13, Unit14,
  Unit15, Unit16, Unit17,Unit20,Unit21,Unit22,Unit23,Unit24, Unit25,Unit26,
  Unit27,Unit28, Unit30, Unit31, Unit32, Unit33, Unit34, Unit35, Unit36, Unit37,
  Unit38, Unit39, Unit40,Unit41, Unit42, Unit72, Unit3, Unit43;

{$R *.dfm}

procedure TFmain.dxBarButton109Click(Sender: TObject);
begin
  Fchequeos.show;
end;

procedure TFmain.dxBarButton10Click(Sender: TObject);
begin
Fkmpermanentes.ShowModal;
end;

procedure TFmain.dxBarButton110Click(Sender: TObject);
begin
  fllamadas.Show;
end;

procedure TFmain.dxBarButton113Click(Sender: TObject);
begin
FUNIDAD6.Show;
Funidad6.GB_ASISTENCIA.Visible:=True;
Funidad6.GB_VIRUS.Visible:=False;
Funidad6.GB_REPORTE.Visible:=False;
end;

procedure TFmain.dxBarButton114Click(Sender: TObject);
begin
Fkmnopermanentes.Show;
end;

procedure TFmain.dxBarButton115Click(Sender: TObject);
begin
Fkmpermanentes.ShowModal;
end;

procedure TFmain.dxBarButton117Click(Sender: TObject);
begin
FESTADOS.ShowModal;
end;

procedure TFmain.dxBarButton118Click(Sender: TObject);
begin
FFORMASKM.ShowModal;
end;

procedure TFmain.dxBarButton119Click(Sender: TObject);
begin
FIDIOMAS.ShowModal;
end;

procedure TFmain.dxBarButton11Click(Sender: TObject);
begin
FUNIDAD6.Show;
Funidad6.GB_ASISTENCIA.Visible:=True;
Funidad6.GB_VIRUS.Visible:=False;
Funidad6.GB_REPORTE.Visible:=False;
end;

procedure TFmain.dxBarButton120Click(Sender: TObject);
begin
FLUGARAPLICADO.ShowModal;
end;

procedure TFmain.dxBarButton121Click(Sender: TObject);
begin
FLUGARMONITOREO.ShowModal;
end;

procedure TFmain.dxBarButton122Click(Sender: TObject);
begin
Ftipokm.ShowModal;
end;

procedure TFmain.dxBarButton123Click(Sender: TObject);
begin
Ftipodoc.ShowModal;
end;

procedure TFmain.dxBarButton124Click(Sender: TObject);
begin
funidades.showmodal;
end;

procedure TFmain.dxBarButton125Click(Sender: TObject);
begin
fkmperm.ShowModal;
end;

procedure TFmain.dxBarButton12Click(Sender: TObject);
begin
FESTADOS.ShowModal;
end;

procedure TFmain.dxBarButton13Click(Sender: TObject);
begin
FFORMASKM.ShowModal;
end;

procedure TFmain.dxBarButton14Click(Sender: TObject);
begin
FIDIOMAS.ShowModal;
end;

procedure TFmain.dxBarButton15Click(Sender: TObject);
begin
FLUGARAPLICADO.ShowModal;
end;

procedure TFmain.dxBarButton16Click(Sender: TObject);
begin
FLUGARMONITOREO.ShowModal;
end;

procedure TFmain.dxBarButton17Click(Sender: TObject);
begin
Ftipokm.ShowModal;
end;

procedure TFmain.dxBarButton18Click(Sender: TObject);
begin
Ftipodoc.ShowModal;
end;

procedure TFmain.dxBarButton19Click(Sender: TObject);
begin
Funidades.ShowModal;
end;

procedure TFmain.dxBarButton1Click(Sender: TObject);
begin
Fkmpermanentes.ShowModal;
end;

procedure TFmain.dxBarButton20Click(Sender: TObject);
begin
FKMPERM.ShowModal;
end;

procedure TFmain.dxBarButton21Click(Sender: TObject);
begin
Fefectasist.ShowModal;
end;

procedure TFmain.dxBarButton22Click(Sender: TObject);
begin
Fefectllam.ShowModal;
end;

procedure TFmain.dxBarButton23Click(Sender: TObject);
begin
FavanzadasD.ShowModal;
end;

procedure TFmain.dxBarButton24Click(Sender: TObject);
begin
Fefect6.ShowModal;
end;

procedure TFmain.dxBarButton25Click(Sender: TObject);
begin
  Finterrupciones.Show;
end;

procedure TFmain.dxBarButton26Click(Sender: TObject);
begin
  FchequeosKD.Show;
end;

procedure TFmain.dxBarButton27Click(Sender: TObject);
begin
  FcorreosKD.Show;
end;

procedure TFmain.dxBarButton28Click(Sender: TObject);
begin
fveralertas.Show;
end;

procedure TFmain.dxBarButton29Click(Sender: TObject);
begin
Fkmnopermanentes.Show;
end;

procedure TFmain.dxBarButton2Click(Sender: TObject);
begin
Fkmpermanentes.ShowModal;
end;

procedure TFmain.dxBarButton30Click(Sender: TObject);
begin
Fkmpermanentes.ShowModal;
end;

procedure TFmain.dxBarButton31Click(Sender: TObject);
begin
FefectcorreosKD.ShowModal;
end;

procedure TFmain.dxBarButton33Click(Sender: TObject);
begin
Fgsa.Show;
end;

procedure TFmain.dxBarButton34Click(Sender: TObject);
begin
Fefectgsa.ShowModal;
end;

procedure TFmain.dxBarButton36Click(Sender: TObject);
begin
FcorreosKD.Show;
end;

procedure TFmain.dxBarButton37Click(Sender: TObject);
begin
FchequeosKD.Show;
end;

procedure TFmain.dxBarButton38Click(Sender: TObject);
begin
FefectcorreosKD.ShowModal;
end;

procedure TFmain.dxBarButton3Click(Sender: TObject);
begin
Fkmpermanentes.ShowModal;
end;

procedure TFmain.dxBarButton4Click(Sender: TObject);
begin
Fkmnopermanentes.Show;
end;

procedure TFmain.dxBarButton59Click(Sender: TObject);
begin
Fasistencia.Show ;
end;

procedure TFmain.dxBarButton5Click(Sender: TObject);
begin
Fkmnopermanentes.Show;
end;

procedure TFmain.dxBarButton61Click(Sender: TObject);
begin
Fkmpermanentes.ShowModal;
end;

procedure TFmain.dxBarButton62Click(Sender: TObject);
begin
Fkmpermanentes.ShowModal;
end;

procedure TFmain.dxBarButton65Click(Sender: TObject);
begin
Fkmpermanentes.ShowModal;
end;

procedure TFmain.dxBarButton6Click(Sender: TObject);
begin
Fkmpermanentes.ShowModal;
end;

procedure TFmain.dxBarButton7Click(Sender: TObject);
begin
Fkmnopermanentes.Show;
end;

procedure TFmain.dxBarButton8Click(Sender: TObject);
begin
Fkmpermanentes.ShowModal;
end;

procedure TFmain.dxBarButton9Click(Sender: TObject);
begin
Fkmnopermanentes.Show;
end;

procedure TFmain.dxBarLargeButton10Click(Sender: TObject);
begin
  fllamadas.Show;
end;

procedure TFmain.dxBarLargeButton15Click(Sender: TObject);
begin
  fllamadas.Show;
end;

procedure TFmain.dxBarLargeButton18Click(Sender: TObject);
begin
FOICE.ShowModal;
end;

procedure TFmain.dxBarLargeButton19Click(Sender: TObject);
begin
Funidad6.Show;
Funidad6.GB_ASISTENCIA.Visible:=FALSE;
Funidad6.GB_VIRUS.Visible:=TRUE;
Funidad6.GB_REPORTE.Visible:=False;
end;

procedure TFmain.dxBarLargeButton1Click(Sender: TObject);
begin
Fefectasist.ShowModal;
end;

procedure TFmain.dxBarLargeButton20Click(Sender: TObject);
begin
FUNIDAD6.Show;
Funidad6.GB_ASISTENCIA.Visible:=False;
Funidad6.GB_VIRUS.Visible:=False;
Funidad6.GB_REPORTE.Visible:=True;
end;

procedure TFmain.dxBarLargeButton23Click(Sender: TObject);
begin
  fllamadas.Show;
end;

procedure TFmain.dxBarLargeButton26Click(Sender: TObject);
begin
  fllamadas.Show;
end;

procedure TFmain.dxBarLargeButton29Click(Sender: TObject);
begin
Fefectasist.ShowModal;
end;

procedure TFmain.dxBarLargeButton2Click(Sender: TObject);
begin
Fefectasist.ShowModal;
end;

procedure TFmain.dxBarLargeButton30Click(Sender: TObject);
begin
Fefectasist.ShowModal;
end;

procedure TFmain.dxBarLargeButton31Click(Sender: TObject);
begin
FUNIDAD6.Show;
Funidad6.GB_ASISTENCIA.Visible:=True;
Funidad6.GB_VIRUS.Visible:=False;
Funidad6.GB_REPORTE.Visible:=False;
end;

procedure TFmain.dxBarLargeButton32Click(Sender: TObject);
begin
Fasistencia.Show ;
end;

procedure TFmain.dxBarLargeButton33Click(Sender: TObject);
begin
Fasistencia.Show ;
end;

procedure TFmain.dxBarLargeButton34Click(Sender: TObject);
begin
FUNIDAD6.Show;
Funidad6.GB_ASISTENCIA.Visible:=False;
Funidad6.GB_VIRUS.Visible:=False;
Funidad6.GB_REPORTE.Visible:=True;
end;

procedure TFmain.dxBarLargeButton35Click(Sender: TObject);
begin
Funidad6.Show;
Funidad6.GB_ASISTENCIA.Visible:=FALSE;
Funidad6.GB_VIRUS.Visible:=TRUE;
Funidad6.GB_REPORTE.Visible:=False;
end;

procedure TFmain.dxBarLargeButton36Click(Sender: TObject);
begin
Fescrito.Show;
end;

procedure TFmain.dxBarLargeButton37Click(Sender: TObject);
begin
Fchequeos.Show;
end;

procedure TFmain.dxBarLargeButton38Click(Sender: TObject);
begin
  fllamadas.Show;
end;

procedure TFmain.dxBarLargeButton39Click(Sender: TObject);
begin
Fincidencias.Show;
end;

procedure TFmain.dxBarLargeButton41Click(Sender: TObject);
begin
Fincidencias.Show;
end;

procedure TFmain.dxBarLargeButton42Click(Sender: TObject);
begin
Fincidencias.Show;
end;

procedure TFmain.dxBarLargeButton43Click(Sender: TObject);
begin
Fincidencias.Show;
end;

procedure TFmain.dxBarLargeButton44Click(Sender: TObject);
begin
Fincidencias.Show;
end;

procedure TFmain.dxBarLargeButton45Click(Sender: TObject);
begin
Fincidencias.Show;
end;

procedure TFmain.dxBarLargeButton46Click(Sender: TObject);
begin
fcrearusuario.ShowModal;
end;

procedure TFmain.dxBarLargeButton47Click(Sender: TObject);
begin
fmodpass.ShowModal;
end;

procedure TFmain.dxBarLargeButton48Click(Sender: TObject);
begin
FMODCARGO.ShowModal;
end;

procedure TFmain.dxBarLargeButton49Click(Sender: TObject);
begin
favanzadas.ShowModal;
end;

procedure TFmain.dxBarLargeButton4Click(Sender: TObject);
begin
Fkmnopermanentes.Show;
end;

procedure TFmain.dxBarLargeButton50Click(Sender: TObject);
begin
Favanzadas.ShowModal;
end;

procedure TFmain.dxBarLargeButton51Click(Sender: TObject);
begin
Favanzadas.ShowModal;
end;

procedure TFmain.dxBarLargeButton52Click(Sender: TObject);
begin
Favanzadas.ShowModal;
end;

procedure TFmain.dxBarLargeButton53Click(Sender: TObject);
begin
Foice.ShowModal;
end;

procedure TFmain.dxBarLargeButton54Click(Sender: TObject);
begin
Fchequeos.Show;
end;

procedure TFmain.dxBarLargeButton55Click(Sender: TObject);
begin
feliminar.showmodal;
end;

procedure TFmain.dxBarLargeButton56Click(Sender: TObject);
begin
Fasistencia.Show ;
end;

procedure TFmain.dxBarLargeButton57Click(Sender: TObject);
begin
Fchequeos.Show;
end;

procedure TFmain.dxBarLargeButton58Click(Sender: TObject);
begin
Fasistencia.Show ;
end;

procedure TFmain.dxBarLargeButton59Click(Sender: TObject);
begin
Fchequeos.Show;
end;

procedure TFmain.dxBarLargeButton5Click(Sender: TObject);
begin
Fescrito.Show;
end;

procedure TFmain.dxBarLargeButton60Click(Sender: TObject);
begin
Fasistencia.Show;
end;

procedure TFmain.dxBarLargeButton61Click(Sender: TObject);
begin
Fchequeos.Show;
end;

procedure TFmain.dxBarLargeButton62Click(Sender: TObject);
begin
Fasistencia.Show ;
end;

procedure TFmain.dxBarLargeButton63Click(Sender: TObject);
begin
Fchequeos.Show;
end;

procedure TFmain.dxBarLargeButton64Click(Sender: TObject);
begin
Fasistencia.Show ;
end;

procedure TFmain.dxBarLargeButton65Click(Sender: TObject);
begin
Favanzadas.ShowModal;
end;

procedure TFmain.dxBarLargeButton66Click(Sender: TObject);
begin
Favanzadas.ShowModal;
end;

procedure TFmain.dxBarLargeButton67Click(Sender: TObject);
begin
Fefectasist.ShowModal;
end;

procedure TFmain.dxBarLargeButton68Click(Sender: TObject);
begin
 fefectllam.ShowModal;
end;

procedure TFmain.dxBarLargeButton69Click(Sender: TObject);
begin
Fefectllam.ShowModal;
end;

procedure TFmain.dxBarLargeButton6Click(Sender: TObject);
begin
  fllamadas.Show;
end;

procedure TFmain.dxBarLargeButton70Click(Sender: TObject);
begin
Fefectllam.ShowModal;
end;

procedure TFmain.dxBarLargeButton71Click(Sender: TObject);
begin
Fefectllam.ShowModal;
end;

procedure TFmain.dxBarLargeButton72Click(Sender: TObject);
begin
Fefectllam.ShowModal;
end;

procedure TFmain.dxBarLargeButton73Click(Sender: TObject);
begin
  Finterrupciones.Show;
end;

procedure TFmain.dxBarLargeButton74Click(Sender: TObject);
begin
Fasistencia.Show ;
end;

procedure TFmain.dxBarLargeButton75Click(Sender: TObject);
begin
  FchequeosKD.Show;
end;

procedure TFmain.dxBarLargeButton76Click(Sender: TObject);
begin
  Fcorreoskd.Show;
end;

procedure TFmain.dxBarLargeButton77Click(Sender: TObject);
begin
 Fchequeos.show;
end;

procedure TFmain.dxBarLargeButton78Click(Sender: TObject);
begin

Falertas.ShowModal;
end;

procedure TFmain.dxBarLargeButton79Click(Sender: TObject);
begin
FefectcorreosKD.ShowModal;
end;

procedure TFmain.dxBarLargeButton80Click(Sender: TObject);
begin

 Falertas.ShowModal;
end;

procedure TFmain.dxBarLargeButton81Click(Sender: TObject);
begin

Falertas.ShowModal;
end;

procedure TFmain.dxBarLargeButton82Click(Sender: TObject);
begin

Falertas.ShowModal;
end;

procedure TFmain.dxBarLargeButton83Click(Sender: TObject);
begin

Falertas.ShowModal;
end;

procedure TFmain.dxBarLargeButton84Click(Sender: TObject);
begin

Falertas.ShowModal;
end;

procedure TFmain.dxBarLargeButton85Click(Sender: TObject);
begin

Falertas.ShowModal;
end;

procedure TFmain.dxBarLargeButton86Click(Sender: TObject);
begin

Falertas.ShowModal;
end;

procedure TFmain.dxBarLargeButton88Click(Sender: TObject);
begin
Fefectasist.ShowModal;
end;

procedure TFmain.dxBarLargeButton89Click(Sender: TObject);
begin
Favanzadas.ShowModal;
end;

procedure TFmain.dxBarLargeButton90Click(Sender: TObject);
begin
Fincidencias.ShowModal;
end;

procedure TFmain.dxBarLargeButton9Click(Sender: TObject);
begin
Fkmnopermanentes.Show;
end;

procedure TFmain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 flogin.Hide;
 Application.Terminate;
end;

procedure TFmain.FormShow(Sender: TObject);
begin
  dxSkinController1.SkinName:='Springtime';
  if (Fmain.cargo='admin central') then
    begin
      dxBarSubItem6.Enabled:=True;
    end
  else
    begin
      dxBarSubItem6.Enabled:=false;
    end;

  if (Fmain.cargo='usuario') or (Fmain.cargo='admin') then
   begin
     dxBarSubItem39.Enabled:=False;
   end;
  Fmain.dxStatusBar1.Panels[1].text:='Usuario: '+ usuario;
  Fmain.dxStatusBar1.Panels[2].text:='Cargo: '+ cargo;
  Fmain.dxStatusBar1.Panels[3].text:='Unidad: '+ unidad;
  tmr1.Enabled:=True;
end;

procedure TFmain.tmr1Timer(Sender: TObject);
var cadena,user,alert:string;
begin
  try
   dm.Qalerta.ParamByName('punidad').AsString:=Fmain.unidad;
   dm.Qalerta.ParamByName('pestado').AsString:='nuevo';
   dm.Qalerta.Execute;
   if dm.Qalerta.RecordCount>0 then
    begin
      id:=strtoint(dm.Qalerta.FieldValues['id']);
      user :=VarToStr(dm.Qalerta.FieldValues['Usuario']);
      alert:=VarToStr(dm.Qalerta.FieldValues['alerta']);
      cadena:=(user+': '+ alert );
      if  (Fmain.usuario='k1206') then
        begin
         ShowMessage(cadena);
         DM.UniSQL2.SQL.Clear;
         dm.UniSQL2.SQL.Add('update alertas set alertas.estado=''Atendido'',alertas.atendidopor=:patendidopor where  alertas.id=:id and alertas.estado=''nuevo'' and alertas.unidad=:punidad;');
         dm.UniSQL2.ParamByName('id').AsInteger:=id;
         dm.UniSQL2.ParamByName('punidad').AsString:=Fmain.unidad;
         dm.UniSQL2.ParamByName('patendidopor').AsString:=Fmain.usuario;
         dm.UniSQL2.Execute;
        end
      else
      if (Fmain.unidad<>'12') and (dm.Qalerta.FieldValues['unidad']<>'12') then
        begin
         ShowMessage(cadena);
         DM.UniSQL2.SQL.Clear;
         dm.UniSQL2.SQL.Add('update alertas set alertas.estado=''Atendido'',alertas.atendidopor=:patendidopor where  alertas.id=:id and alertas.estado=''nuevo'' and alertas.unidad=:punidad;');
         dm.UniSQL2.ParamByName('id').AsInteger:=id;
         dm.UniSQL2.ParamByName('punidad').AsString:=Fmain.unidad;
         dm.UniSQL2.ParamByName('patendidopor').AsString:=Fmain.usuario;
         dm.UniSQL2.Execute;
        end;
    end;
  except
   ShowMessage('le han enviado un mensaje');
  end;

end;

end.
