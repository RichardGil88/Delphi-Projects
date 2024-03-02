unit Umain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.StdCtrls, cxButtons, cxControls, dxCustomTileControl,
  cxClasses, dxTileControl, cxCalendar, dxSkinsdxBarPainter,
  dxSkinsdxNavBarPainter, dxNavBarCollns, dxNavBarBase, dxNavBar, dxBar,
  dxGDIPlusClasses, Vcl.ExtCtrls, dxSkinsdxStatusBarPainter, dxStatusBar,
  Vcl.ImgList, dxRibbonSkins, dxSkinsdxRibbonPainter, dxRibbon, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc,
  dxBarApplicationMenu, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  dxRibbonCustomizationForm, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxSkinscxPCPainter,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPSCore, dxPScxCommon, cxImage, cxGroupBox,
  cxBarEditItem, dxSkinTheBezier;

type
  TFMain = class(TForm)
    dxStatusBar1: TdxStatusBar;
    BARCODIFICADORES: TdxBarManager;
    BARCONTROLDEUSUARIOS: TdxBar;
    BAROTROSCONTROLES: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxRibbon1: TdxRibbon;
    TABESTADISTICAS: TdxRibbonTab;
    TABUSUARIOS: TdxRibbonTab;
    TABCONTROLES: TdxRibbonTab;
    TABFARMACIA: TdxRibbonTab;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    BARCONTROLDEFARMACIA: TdxBar;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    dxBarLargeButton16: TdxBarLargeButton;
    dxBarLargeButton17: TdxBarLargeButton;
    dxBarLargeButton18: TdxBarLargeButton;
    dxBarLargeButton19: TdxBarLargeButton;
    dxBarLargeButton20: TdxBarLargeButton;
    dxBarLargeButton21: TdxBarLargeButton;
    dxBarLargeButton22: TdxBarLargeButton;
    dxBarLargeButton23: TdxBarLargeButton;
    dxBarLargeButton24: TdxBarLargeButton;
    dxBarLargeButton25: TdxBarLargeButton;
    dxBarApplicationMenu1: TdxBarApplicationMenu;
    BARMENUPRINCIPAL: TdxBar;
    dxBarLargeButton26: TdxBarLargeButton;
    dxBarLargeButton27: TdxBarLargeButton;
    dxBarButton3: TdxBarButton;
    dxBarLargeButton28: TdxBarLargeButton;
    dxBarLargeButton29: TdxBarLargeButton;
    dxBarLargeButton30: TdxBarLargeButton;
    dxBarLargeButton31: TdxBarLargeButton;
    dxBarLargeButton32: TdxBarLargeButton;
    dxBarLargeButton33: TdxBarLargeButton;
    dxBarLargeButton34: TdxBarLargeButton;
    BARALMACEN: TdxBar;
    TABALMACEN: TdxRibbonTab;
    dxBarLargeButton35: TdxBarLargeButton;
    dxBarLargeButton36: TdxBarLargeButton;
    dxBarLargeButton37: TdxBarLargeButton;
    dxBarLargeButton38: TdxBarLargeButton;
    dxBarLargeButton39: TdxBarLargeButton;
    TABCODIFICADORES: TdxRibbonTab;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton40: TdxBarLargeButton;
    dxBarLargeButton41: TdxBarLargeButton;
    dxBarLargeButton42: TdxBarLargeButton;
    dxBarLargeButton43: TdxBarLargeButton;
    TABCONSULTAS: TdxRibbonTab;
    BARDOCTORES: TdxBar;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton44: TdxBarLargeButton;
    dxBarLargeButton45: TdxBarLargeButton;
    TABRECEPCION: TdxRibbonTab;
    BARCITAS: TdxBar;
    dxBarLargeButton46: TdxBarLargeButton;
    dxBarLargeButton47: TdxBarLargeButton;
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
    dxBarLargeButton48: TdxBarLargeButton;
    dxBarLargeButton49: TdxBarLargeButton;
    dxBarLargeButton50: TdxBarLargeButton;
    dxBarLargeButton51: TdxBarLargeButton;
    dxBarLargeButton52: TdxBarLargeButton;
    dxBarLargeButton53: TdxBarLargeButton;
    dxBarLargeButton54: TdxBarLargeButton;
    dxBarLargeButton55: TdxBarLargeButton;
    BARCLINICA: TdxBar;
    dxBarLargeButton56: TdxBarLargeButton;
    dxBarLargeButton57: TdxBarLargeButton;
    dxBarLargeButton58: TdxBarLargeButton;
    dxBarLargeButton59: TdxBarLargeButton;
    dxBarLargeButton60: TdxBarLargeButton;
    dxBarLargeButton61: TdxBarLargeButton;
    dxBarLargeButton62: TdxBarLargeButton;
    cxGroupBox1: TcxGroupBox;
    Image1: TImage;
    dxBarLargeButton63: TdxBarLargeButton;
    BARCOBRODESERVICIOS: TdxBar;
    dxBarLargeButton64: TdxBarLargeButton;
    dxBarLargeButton65: TdxBarLargeButton;
    dxBarLargeButton66: TdxBarLargeButton;
    dxBarLargeButton67: TdxBarLargeButton;
    dxBarLargeButton68: TdxBarLargeButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarLargeButton10Click(Sender: TObject);
    procedure dxBarLargeButton26Click(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure dxBarLargeButton35Click(Sender: TObject);
    procedure dxBarLargeButton12Click(Sender: TObject);
    procedure dxBarLargeButton39Click(Sender: TObject);
    procedure dxBarLargeButton38Click(Sender: TObject);
    procedure dxBarLargeButton15Click(Sender: TObject);
    procedure dxBarLargeButton46Click(Sender: TObject);
    procedure dxBarLargeButton47Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarLargeButton48Click(Sender: TObject);
    procedure dxBarLargeButton50Click(Sender: TObject);
    procedure dxBarLargeButton49Click(Sender: TObject);
    procedure dxBarLargeButton51Click(Sender: TObject);
    procedure dxBarLargeButton53Click(Sender: TObject);
    procedure dxBarLargeButton54Click(Sender: TObject);
    procedure dxBarLargeButton56Click(Sender: TObject);
    procedure dxBarLargeButton59Click(Sender: TObject);
    procedure dxBarLargeButton58Click(Sender: TObject);
    procedure dxBarLargeButton61Click(Sender: TObject);
    procedure dxBarLargeButton60Click(Sender: TObject);
    procedure dxBarLargeButton57Click(Sender: TObject);
    procedure dxBarLargeButton62Click(Sender: TObject);
    procedure dxBarLargeButton63Click(Sender: TObject);
    procedure dxBarLargeButton64Click(Sender: TObject);
    procedure dxBarLargeButton65Click(Sender: TObject);
    procedure dxBarLargeButton66Click(Sender: TObject);
    procedure dxBarLargeButton67Click(Sender: TObject);
    procedure dxBarLargeButton68Click(Sender: TObject);
  private
    { Private declarations }
  public

    CODIFICADOR: string;

    function IPLocal: String;

    { Public declarations }
  end;

var
  FMain: TFMain;

implementation

uses UFarmaciaVender, UALMACENAgregar, UAlmacenBuscar, ULogin,
  UUsuariosCrear, UUsuariosModificar, UUsuariosEliminar, Ucalculadora,
  UEstadisticas,
  UAlmacenMover, UFarmaciaBuscar, UagendarCita, WinInet,
  WinSock, IdHttp, UModificarCita, Ucodificadores, UCOD_LAB_PROV,
  UCod_Servicios,
  UCod_Medicamentos, UCod_Doctores, UEntradasSalidasFarmacia,
  UAlmacenHistoricos, UFARMACIAHISTORICOS,
  UCITASHISTORICOS, UNuevoPaciente, UBuscarPaciente, UMoverHist,
  UInsumosHistoricos, UEntradaSalidaInsumos,
  UEntradasSalidasAlmacen, UInsumosBuscar, UVentasHist, UBuscarCitas,
  UCobroServicios,
  UMostrarUsuarios, UModificarPaciente;
{$R *.dfm}

procedure TFMain.dxBarButton3Click(Sender: TObject);
begin
  Fcalculadora.Show;
end;

procedure TFMain.dxBarButton4Click(Sender: TObject);
begin
  CODIFICADOR := 'PRESENTACION';
  FCodificadores.ShowModal;
end;

procedure TFMain.dxBarButton5Click(Sender: TObject);
begin
  CODIFICADOR := 'LABORATORIOS';
  FCOD_LAB_PROV.ShowModal;
end;

procedure TFMain.dxBarButton6Click(Sender: TObject);
begin
  CODIFICADOR := 'PROVEEDORES';
  FCOD_LAB_PROV.ShowModal;
end;

procedure TFMain.dxBarButton7Click(Sender: TObject);
begin
  FCod_Medicamentos.ShowModal;
end;

procedure TFMain.dxBarButton10Click(Sender: TObject);
begin
  CODIFICADOR := 'MOTIVOS';
  FCodificadores.ShowModal;
end;

procedure TFMain.dxBarButton11Click(Sender: TObject);
begin
  CODIFICADOR := 'TIPOS_DE_SANGRE';
  FCodificadores.ShowModal;
end;

procedure TFMain.dxBarButton12Click(Sender: TObject);
begin
  FCod_Doctores.ShowModal;
end;

procedure TFMain.dxBarButton13Click(Sender: TObject);
begin
  FCod_Servicios.ShowModal;
end;

procedure TFMain.dxBarButton14Click(Sender: TObject);
begin
  CODIFICADOR := 'INSUMOS';
  FCodificadores.ShowModal;
end;

procedure TFMain.dxBarButton8Click(Sender: TObject);
begin
  CODIFICADOR := 'CATEGORIAS';
  FCodificadores.ShowModal;
end;

procedure TFMain.dxBarButton9Click(Sender: TObject);
begin
  CODIFICADOR := 'ESTADOS';
  FCodificadores.ShowModal;
end;

procedure TFMain.dxBarLargeButton10Click(Sender: TObject);
begin
  Fcalculadora.Show;
end;

procedure TFMain.dxBarLargeButton12Click(Sender: TObject);
begin
  FFarmaciaVender.ShowModal;
end;

procedure TFMain.dxBarLargeButton15Click(Sender: TObject);
begin
  FFarmaciaBuscar.ShowModal;
end;

procedure TFMain.dxBarLargeButton26Click(Sender: TObject);
begin
  Application.Terminate;
end;

// FMedicamentoAgregar
procedure TFMain.dxBarLargeButton35Click(Sender: TObject);
begin
  FALMACENAgregar.ShowModal;
end;

procedure TFMain.dxBarLargeButton38Click(Sender: TObject);
begin
  FAlmacenMover.ShowModal;
end;

procedure TFMain.dxBarLargeButton39Click(Sender: TObject);
begin
  FALMACENBUSCAR.ShowModal;
end;

// USUARIOS
procedure TFMain.dxBarLargeButton2Click(Sender: TObject);
begin
  FUsuariosEliminar.ShowModal;
end;

procedure TFMain.dxBarLargeButton1Click(Sender: TObject);
begin
  FUsuariosCrear.ShowModal;
end;

procedure TFMain.dxBarLargeButton3Click(Sender: TObject);
begin
  FUsuariosModificar.ShowModal;
end;

procedure TFMain.dxBarLargeButton46Click(Sender: TObject);
begin
  FAgendarCita.ShowModal;
end;

procedure TFMain.dxBarLargeButton47Click(Sender: TObject);
begin
  FModificarCita.ShowModal;
end;

procedure TFMain.dxBarLargeButton48Click(Sender: TObject);
begin
  FEntradasSalidasFarmacia.ShowModal;
end;

procedure TFMain.dxBarLargeButton49Click(Sender: TObject);
begin
  FFarmaciaHistoricos.ShowModal;
end;

procedure TFMain.dxBarLargeButton50Click(Sender: TObject);
begin
  FAlmacenHistoricos.ShowModal;
end;

procedure TFMain.dxBarLargeButton51Click(Sender: TObject);
begin
  FCitasHistoricos.ShowModal;
end;

procedure TFMain.dxBarLargeButton53Click(Sender: TObject);
begin
  FNuevoPaciente.ShowModal;
end;

procedure TFMain.dxBarLargeButton54Click(Sender: TObject);
begin
  FBuscarPaciente.ShowModal;
end;

procedure TFMain.dxBarLargeButton56Click(Sender: TObject);
begin
  FMoverHist.ShowModal;
end;

procedure TFMain.dxBarLargeButton57Click(Sender: TObject);
begin
  FEstadisticas.ShowModal;
end;

procedure TFMain.dxBarLargeButton58Click(Sender: TObject);
begin
  FEntradaSalidaInsumos.ShowModal;
end;

procedure TFMain.dxBarLargeButton59Click(Sender: TObject);
begin
  FInsumosHistoricos.ShowModal;
end;

procedure TFMain.dxBarLargeButton60Click(Sender: TObject);
begin
  FEntradasSalidasAlmacen.ShowModal;
end;

procedure TFMain.dxBarLargeButton61Click(Sender: TObject);
begin
  // BUSCAR INSUMOS
  FInsumosBuscar.ShowModal;
end;

procedure TFMain.dxBarLargeButton62Click(Sender: TObject);
begin
  FVentasHist.ShowModal;
end;

procedure TFMain.dxBarLargeButton63Click(Sender: TObject);
begin
  FBuscarCita.ShowModal;
end;

procedure TFMain.dxBarLargeButton64Click(Sender: TObject);
begin
  FCobroServicios.ShowModal;
end;

procedure TFMain.dxBarLargeButton65Click(Sender: TObject);
begin
  FMostrarUsuarios.ShowModal;
end;

procedure TFMain.dxBarLargeButton66Click(Sender: TObject);
begin
  FModificarPaciente.ShowModal;
end;

procedure TFMain.dxBarLargeButton67Click(Sender: TObject);
begin
 FNuevoPaciente.ShowModal;
end;

procedure TFMain.dxBarLargeButton68Click(Sender: TObject);
begin
 FBuscarPaciente.ShowModal;
end;

// CLOSE
procedure TFMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

// FORM SHOW
procedure TFMain.FormShow(Sender: TObject);
begin

  dxStatusBar1.Panels[0].Text := 'USUARIO: ' + flogin.USUARIO;
  dxStatusBar1.Panels[1].Text := 'TIPO DE ACCESO: ' + flogin.CARGO;
  dxStatusBar1.Panels[2].Text := 'IP:: ' + IPLocal;

  if flogin.CARGO = 'FARMACEUTICO' then
  begin
    TABFARMACIA.Visible := True;
    TABFARMACIA.Active := True;
    TABCONTROLES.Visible := True;

    dxBarLargeButton49.Enabled := FALSE;
    dxBarLargeButton48.Enabled := FALSE;
    dxBarLargeButton15.Enabled := FALSE;

    TABESTADISTICAS.Visible := FALSE;
    TABRECEPCION.Visible := FALSE;
    TABCONSULTAS.Visible := FALSE;
    TABALMACEN.Visible := FALSE;
    TABCODIFICADORES.Visible := FALSE;
    TABUSUARIOS.Visible := FALSE;

  end;

  if flogin.CARGO = 'DIRECTOR MEDICO' then
  begin
    // LO VE TODO.
  end;

  if flogin.CARGO = 'DIRECTOR ADMINISTRATIVO' then
  begin
    TABALMACEN.Visible := True;
    TABALMACEN.Active := True;
    TABFARMACIA.Visible := True;
    TABRECEPCION.Visible := True;
    TABESTADISTICAS.Visible := True;
    TABCONTROLES.Visible := True;

    TABCONSULTAS.Visible := FALSE;
    TABCODIFICADORES.Visible := FALSE;
    TABUSUARIOS.Visible := FALSE;
  end;

  if flogin.CARGO = 'RECEPCIONISTA' then
  begin
    TABRECEPCION.Visible := True;
    TABRECEPCION.Active := True;
    TABCONTROLES.Visible := True;

    TABFARMACIA.Visible := FALSE;
    TABESTADISTICAS.Visible := FALSE;
    TABCONSULTAS.Visible := FALSE;
    TABALMACEN.Visible := FALSE;
    TABCODIFICADORES.Visible := FALSE;
    TABUSUARIOS.Visible := FALSE;
  end;

  if flogin.CARGO = 'DOCTOR' then
  begin
    TABRECEPCION.Visible := True;
    TABCONTROLES.Visible := True;
    TABCONSULTAS.Visible := True;
    TABCONSULTAS.Active := True;

    dxBarLargeButton58.Enabled := FALSE;
    dxBarLargeButton59.Enabled := FALSE;
    dxBarLargeButton61.Enabled := FALSE;
    dxBarLargeButton64.Enabled := FALSE;

    TABFARMACIA.Visible := FALSE;
    TABESTADISTICAS.Visible := FALSE;
    TABALMACEN.Visible := FALSE;
    TABCODIFICADORES.Visible := FALSE;
    TABUSUARIOS.Visible := FALSE;
  end;

    if flogin.CARGO = 'ESTOMATOLOGO' then
  begin
    TABRECEPCION.Visible := True;
    TABRECEPCION.Active := True;
    TABCONTROLES.Visible := False;

    dxBarLargeButton49.Enabled := FALSE;
    dxBarLargeButton64.Visible := ivNever;
    dxBarLargeButton48.Enabled := FALSE;
    dxBarLargeButton15.Enabled := FALSE;

    TABESTADISTICAS.Visible := FALSE;
    TABFARMACIA.Visible := FALSE;
    TABCONSULTAS.Visible := FALSE;
    TABALMACEN.Visible := FALSE;
    TABCODIFICADORES.Visible := FALSE;
    TABUSUARIOS.Visible := FALSE;

  end;



end;

function TFMain.IPLocal: String;
var
  p: PHostEnt;
  s: array [0 .. 128] of char;
  p2: pANSIchar;
  wVersionRequested: WORD;
  wsaData: TWSAData;
begin
  // Arranca la librería WinSock
  wVersionRequested := MAKEWORD(1, 1);
  WSAStartup(wVersionRequested, wsaData);

  // Obtiene el nombre del PC
  GetHostName(@s, 128);
  p := GetHostByName(@s);

  // Obtiene la dirección IP y libera la librería WinSock
  p2 := iNet_ntoa(PInAddr(p^.h_addr_list^)^);
  Result := Result + p2;
  WSACleanup;
end;

end.
