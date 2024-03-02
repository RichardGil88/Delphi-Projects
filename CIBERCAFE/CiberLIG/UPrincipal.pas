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
  dxSkinWhiteprint,Threads, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, dxSkinsForm,
  Vcl.Menus, cxButtons, cxNavigator;

type
  TFPrincipal = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxgroupbox2: TcxGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cliente: TIdTCPClient;
    ServidorSocket: TIdTCPServer;
    cxSplitter1: TcxSplitter;
    cxGroupBox3: TcxGroupBox;
    Memo1: TMemo;
    cxGroupBox4: TcxGroupBox;
    AdvStringGrid1: TAdvStringGrid;
    cxSplitter2: TcxSplitter;
    dxSkinController1: TdxSkinController;
    cxButton1: TcxButton;
    cxGrid1DBTableView1idMaquina: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre_PC: TcxGridDBColumn;
    cxGrid1DBTableView1IP: TcxGridDBColumn;
    cxGroupBox5: TcxGroupBox;
    MemoError: TMemo;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ServidorSocketExecute(AContext: TIdContext);
    procedure AdvStringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure cxButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     function  IPLocal: String;

  var
    varserver,vardatabase:string;
    varport:Integer;
    ip:string;
    idmaquinas:Integer;
    mensaje1:string;
    IPRx,PCRx,PortRx,MensajeRX,ParametroRX:string;
    Pcname:string;
    sMensaje: String;
  end;

var
  FPrincipal: TFPrincipal;
  hilo1:Thread1;
  hilo2:Thread2;
  hilo3:thread3;

implementation

{$R *.dfm}
 uses IniFiles,WinInet,Winsock,UDM1,UDM2,UDM3;

// on cell click
procedure TFPrincipal.AdvStringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  inherited;
  With Sender as TStringGrid do
  begin
    try
      if ((cells[ACol, ARow]) = 'Máquina') or
         ((cells[ACol, ARow]) = 'Ultima Fecha Aviso')  or
         ((cells[ACol, ARow]) = 'Ultima Hora Aviso') then   //Azul
      begin
           //for BackGround Color
           Canvas.Brush.Color := clSkyBlue;
           Canvas.FillRect(Rect);
           //for Font.Color
           Canvas.Font.Color := clWhite;
           Canvas.TextRect( Rect, Rect.Left+2, Rect.Top+2, Cells[acol, arow]);
      end
      else
      if (cells[ACol, ARow]) = '' then
      begin
         // no pinto nada
      end
      else
      if (cells[ACol, ARow]) = 'Inactivo' then  //Rojo   problema
      begin
          //for BackGround Color
          Canvas.Brush.Color := clRed;
          Canvas.FillRect(Rect);
          //for Font.Color
          Canvas.Font.Color := clWhite;
          Canvas.TextRect( Rect, Rect.Left+2, Rect.Top+2, Cells[acol, arow]);
      end;
//      else
//      if ((cells[ACol, ARow]) <> 'Máquina')  and
//         //((cells[ACol, ARow]) <> 'Inactivo') and
//         ((cells[ACol, ARow]) <> 'Ultima Fecha Aviso')  and
//         ((cells[ACol, ARow]) <> 'Ultima Hora Aviso') and
//         ((cells[ACol, ARow]) <> '')         then         //Verde
//      begin
//           //for BackGround Color
//           Canvas.Brush.Color := clGreen;
//           Canvas.FillRect(Rect);
//           //for Font.Color
//           Canvas.Font.Color := clWhite;
//           Canvas.TextRect( Rect, Rect.Left+2, Rect.Top+2, Cells[acol, arow]);
//      end
      
    except
      on e:exception do  exit;
    end;
  end; //Fin with
end;

// limpiar Log
procedure TFPrincipal.Button1Click(Sender: TObject);
begin
MemoError.Clear;
end;

procedure TFPrincipal.cxButton1Click(Sender: TObject);
begin
  Memo1.Clear;
end;

// cerrar la aplicacion
procedure TFPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
   hilo1:=thread1.Create(true);
  except

  end;
  hilo1.Terminate;

  try hilo2:=thread2.Create(true);
  except
  end;
  hilo2.Terminate;

  try hilo3:=thread3.Create(true);
  except
  end;
  hilo3.Terminate;

  Application.Terminate;
end;

// al iniciar la forma.
procedure TFPrincipal.FormShow(Sender: TObject);
var
 name:string;
 ini:TIniFile;
begin
//  dxSkinController1.SkinName:='Office2007Blue';

  try
    name:=Copy(Application.ExeName,0,Length(Application.ExeName)-3)+'ini';
    INI := TIniFile.Create(name);
    if ini.SectionExists('cibercafe') then
    begin
      try
        varserver := INI.ReadString('cibercafe','Server','') ;
        vardatabase:='cibercafe';
        varport:=9306;
      except
       ini.Free;
      end;
    end;
    ini.Free;
  except
    ShowMessage('Error al leer el INI de Configuración');
    Application.Terminate;
  end;

  // conectandome a la bd
  try
    with DM1.cibercafe do
    begin
     Username:='root';
     Password:='windowsxp';
     Server:=varserver;
     Database:=vardatabase;
     Port:=varport;
     Connect;
    end;
    with DM2.cibercafe do
    begin
     Username:='root';
     Password:='windowsxp';
     Server:=varserver;
     Database:=vardatabase;
     Port:=varport;
     Connect;
    end;
     with DM3.cibercafe do
    begin
     Username:='root';
     Password:='windowsxp';
     Server:=varserver;
     Database:=vardatabase;
     Port:=varport;
     Connect;
    end;
  except
    ShowMessage('Error al conectarse a la BD');
    Application.Terminate;
  end;

  try
    AdvStringGrid1.Cols[0].Add('Máquina');
    AdvStringGrid1.Cols[1].Add('Ultima Fecha Aviso');
    AdvStringGrid1.Cols[2].Add('Ultima Hora Aviso');
    FPrincipal.AdvStringGrid1.InsertNormalRow(1);
    cxGrid1DBTableView1.DataController.DataSource:=DM1.DSQmaquinas;
    DM1.Qmaquinas.Execute;
    ServidorSocket.Active:=True;
  except

  end;

  try
    hilo2:=thread2.Create(true);
    hilo2.Resume;
    hilo3:=thread3.Create(true);
    hilo3.Resume;
  except
    ShowMessage('No se pudieron lanzar los Hilos...');
    Application.Terminate;
  end;
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

// Recibir Mensaje.
procedure TFPrincipal.ServidorSocketExecute(AContext: TIdContext);
begin
  try
    sMensaje := AContext.Connection.Socket.ReadLn;
    ServidorSocket.StopListening;
    hilo1:=thread1.Create(true);
    hilo1.Resume;
  except

  end;
end;

end.
