unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsdxStatusBarPainter,
  dxRibbonSkins, dxBar, cxClasses, dxRibbon, dxStatusBar, ImgList, cxContainer,
  cxEdit, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls,
  cxGroupBox, IdContext, IdCustomTCPServer, IdTCPServer, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, cxSplitter, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinSevenClassic, dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010,
  dxSkinWhiteprint, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, cxCheckBox,
  dxSkinsdxRibbonPainter, cxNavigator, Vcl.ExtCtrls, Vcl.Imaging.jpeg;

type
   TFPrincipal = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarManager1Bar3: TdxBar;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    dxBarLargeButton16: TdxBarLargeButton;
    dxBarManager1Bar5: TdxBar;
    dxBarLargeButton17: TdxBarLargeButton;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton19: TdxBarLargeButton;
    dxBarLargeButton20: TdxBarLargeButton;
    dxBarLargeButton21: TdxBarLargeButton;
    dxBarLargeButton22: TdxBarLargeButton;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1Tab2: TdxRibbonTab;
    dxRibbon1Tab3: TdxRibbonTab;
    dxRibbon1Tab4: TdxRibbonTab;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton18: TdxBarLargeButton;
    dxBarLargeButton23: TdxBarLargeButton;
    Image1: TImage;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure dxBarLargeButton16Click(Sender: TObject);
    procedure dxBarLargeButton17Click(Sender: TObject);
    procedure dxBarLargeButton19Click(Sender: TObject);
    procedure dxBarLargeButton20Click(Sender: TObject);
    procedure dxBarLargeButton21Click(Sender: TObject);
    procedure dxBarLargeButton22Click(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarLargeButton18Click(Sender: TObject);
    procedure dxBarLargeButton14Click(Sender: TObject);
    procedure dxBarLargeButton23Click(Sender: TObject);
    procedure dxBarLargeButton15Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     function  IPLocal: String;
     var
     USUARIO,CARGO,UNIDAD,DPTO:string;

  end;

var
  FPrincipal: TFPrincipal;



implementation

{$R *.dfm}
 uses IniFiles,WinInet,Winsock, UAdicionarUsuario, Umodpass, Umodcargo, Ueliminarusuario,
      UAsignarChequeoUsuario, Ulogin, Uusuarios, UFrontEnd, UDM, UMaquinas,UChequeos,
      UAdicionarMaquina, UEliminarMaquina, UmodificarMaquina;



// Adicionar Maquina
procedure TFPrincipal.dxBarLargeButton14Click(Sender: TObject);
begin
 FAdicionarMaquina.ShowModal;
end;

// modificar maquina
procedure TFPrincipal.dxBarLargeButton15Click(Sender: TObject);
begin
  FModificarMaquina.ShowModal;
end;

 // Eliminar Maquina
procedure TFPrincipal.dxBarLargeButton16Click(Sender: TObject);
begin
 FEliminarMaquina.ShowModal;
// try
//   //  preguntar si esta seguro
//   case MessageBox(Handle,
//                   PChar('Esta seguro que decea eliminar ese record?'),
//                   PChar('Atención'),
//                   MB_OKCANCEL + MB_ICONQUESTION + MB_DEFBUTTON1 + MB_APPLMODAL  ) of
//     IDOK:
//     begin
//       with DM.UniSQL1 do
//       begin
//         SQL.Clear;
//         SQL.Add('DELETE FROM `maquinas` WHERE `maquinas`.`IdMaquinas` = :pid;');
//         ParamByName('pid').asinteger:=RecMaq1.idmaquinas;
//         Execute;
//       end;
//       cxGrid1DBTableView1.DataController.DataSet.Refresh;
//     end;
//     IDCANCEL:
//     begin
//       Exit;
//     end;
//   end;
// except
//   ShowMessage('Ocurrió un error elimiando la maquina !');
// end;
end;

// FrontEnd
procedure TFPrincipal.dxBarLargeButton17Click(Sender: TObject);
begin
   FFrontEnd.ShowModal;
end;

//Operaciones con los chequeos
procedure TFPrincipal.dxBarLargeButton18Click(Sender: TObject);
begin
FChequeos.ShowModal;
end;

// Modificar contraseña
procedure TFPrincipal.dxBarLargeButton19Click(Sender: TObject);
begin
    Fmodpass.ShowModal;
end;

 // Nuevo usuario
procedure TFPrincipal.dxBarLargeButton1Click(Sender: TObject);
begin
    FAdicionarUsuario.ShowModal;
end;

// Modificar cargo
procedure TFPrincipal.dxBarLargeButton20Click(Sender: TObject);
begin
   fmodcargo.ShowModal;
end;

 // Eliminar usuario
procedure TFPrincipal.dxBarLargeButton21Click(Sender: TObject);
begin
 Feliminarusuario.ShowModal;
end;

// Listar usuarios
procedure TFPrincipal.dxBarLargeButton22Click(Sender: TObject);
begin
  fusuarios.ShowModal;
end;

// Listar maquinas
procedure TFPrincipal.dxBarLargeButton23Click(Sender: TObject);
begin
 FMaquinas.ShowModal;
end;

// Apagar la pc remota
procedure TFPrincipal.dxBarLargeButton3Click(Sender: TObject);
begin
//  try
//     //  preguntar si esta seguro
//     case MessageBox(Handle,
//                     PChar('Esta seguro que decea apagar esa pc remota?'),
//                     PChar('Atención'),
//                     MB_OKCANCEL + MB_ICONQUESTION + MB_DEFBUTTON1 + MB_APPLMODAL  ) of
//       IDOK:
//       begin
//         //EnviarMensaje(ip,'26','APC&APC');
//       end;
//       IDCANCEL:
//       begin
//         Exit;
//       end;
//     end;
//  except
//
//  end;
end;

// Reiniciar la pc remota
procedure TFPrincipal.dxBarLargeButton4Click(Sender: TObject);
begin
//  try
//     //  preguntar si esta seguro
//     case MessageBox(Handle,
//                     PChar('Esta seguro que decea reiniciar esa pc remota?'),
//                     PChar('Atención'),
//                     MB_OKCANCEL + MB_ICONQUESTION + MB_DEFBUTTON1 + MB_APPLMODAL  ) of
//       IDOK:
//       begin
//         //EnviarMensaje(ip,'26','RPC&RPC');
//       end;
//       IDCANCEL:
//       begin
//         Exit;
//       end;
//     end;
//  except
//
//  end;
end;

// Asociacion usuarios chequeos
procedure TFPrincipal.dxBarLargeButton6Click(Sender: TObject);
begin
  FAsignarChequeoUsuario.ShowModal;
end;

// cerrar la aplicacion
procedure TFPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Application.Terminate;
end;

// al iniciar la forma.
procedure TFPrincipal.FormShow(Sender: TObject);
begin
//
end;

// ip local.
function TFPrincipal.IPLocal: String;
var
  p: PHostEnt;
  s: array[0..128] of AnsiChar;
  p2: pansichar;
  wVersionRequested: WORD;
  wsaData: TWSAData;
begin
  try
    // Arranca la librería WinSock
    wVersionRequested := MAKEWORD( 1, 1 );
    WSAStartup( wVersionRequested, wsaData );

    // Obtiene el nombre del PC
    GetHostName( @s, 128 );
    p := GetHostByName( @s );

    // Obtiene la dirección IP y libera la librería WinSock
    p2 := iNet_ntoa( PInAddr( p^.h_addr_list^ )^ );
    Result := Result + p2;
    WSACleanup;
  except

  end;
end;


end.
