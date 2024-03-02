unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,StdCtrls, cxButtons, AdvMenus,  Sockets, cxControls, cxContainer,
  cxEdit,  cxGroupBox, cxLabel,  ComCtrls, AbBrowse, AbMeter, AbBase, AbZBrows,
  AbZipper,IniFiles, xmldom, msxmldom, XMLDoc, XMLIntf,ExtCtrls,
  Buttons,IdReplySMTP,IdAttachmentFile;

type

  tareaComprimir = class(TThread)
  protected
    procedure Execute; override;
    procedure BuscaFicheros(path, mask : AnsiString; var Value : TStringList; brec : Boolean);
    procedure updatelabelcomprimidos;
    procedure updatememo;
    procedure updatelabelenviados;
    procedure ultimocomprimido;
    procedure updatelabelrecojidos;
    Function BuscaFicherosConLimite(path, mask : string; var Value : TStringList; brec : Boolean; max: integer): Boolean;
  public
   var
   FicherosTemp,FicherosTempZip,FicherosOrigen:TStringList;
   activo:Boolean;
  end;

  var
  memo:string;

implementation
uses Umain;

{ tareaComprimir }

procedure tareaComprimir.Execute;
var
 fmt,fechahora:string;
 I: Integer;
 Comprimidos:Boolean;
begin
 fmt:='yyyymmddhhnnsszzz';
 repeat
    FicherosOrigen   :=TStringList.Create;
    FicherosTemp     :=TStringList.Create;
    FicherosTempZip  :=TStringList.Create;

    // buscar los archivos .ini en el origen
    try
      if DirectoryExists(FMain.origen) then
      begin
         FicherosOrigen.Clear;
         BuscaFicherosConLimite(FMain.Origen,FMain.Mascara,FicherosOrigen,True,StrToInt(fmain.Cantidad));

         if FicherosOrigen.Count > 1000000 then
         begin
           try
             memo:='El origen tiene mas de 1 000 000 de archivos';
             Synchronize(updatememo);
           except

           end;
         end;

         if FicherosOrigen.Count > 0 then
         begin
           for i := 0 to FicherosOrigen.Count - 1 do
           begin
              if FicherosOrigen.Count >0 then
              begin
                try
                  if not FileExists(FMain.Temporal+ExtractFileName(FicherosOrigen[i])) then
                  begin
                   MoveFile(PChar(FicherosOrigen[i]), PChar(FMain.Temporal+ExtractFileName(FicherosOrigen[i])));
                   Synchronize(updatelabelrecojidos);
                  end;
                except
                  try
                    memo:='no se pudo mover el fichero -> '+FicherosOrigen[i];
                    Synchronize(updatememo);
                  except

                  end;
                end;
              end;
           end;
         end;
      end
      else
      begin
         try
           memo:='Origen inaccesible -> '+FMain.Destino;
           Synchronize(updatememo);
         except

         end;
      end;
    except
      FicherosOrigen.Clear;
    end;


    // comprimir y enviar hacia el destino
    FicherosTemp.Clear;
    BuscaFicheros(FMain.Temporal,FMain.Mascara{*.ini},FicherosTemp,True);
    {si el flujo esta normal}
    if (FicherosTemp.Count >= StrToInt(fmain.Cantidad)) then
    begin
      //Comprimir
      try
        try
           //fechahora actual
           DateTimeToString(fechahora,fmt,Now);
           //comprimiendo
           FicherosTemp.Clear;
           BuscaFicheros(FMain.Temporal,'*.ini',FicherosTemp,TRUE);
           //fechahora actual
           DateTimeToString(fechahora,fmt,Now);

           //comprimiendo
           fmain.AbZipper1.BaseDirectory:=FMain.Temporal;
           fmain.AbZipper1.FileName:=FMain.Temporal+fechahora+'_'+'.zip';
           for I := 0 to StrToInt(fmain.Cantidad) - 1 do
           begin
            fmain.AbZipper1.AddFiles(ExtractFileName(FicherosTemp[I]),0 );
           end;
           fmain.AbZipper1.CloseArchive;

           Synchronize(updatelabelcomprimidos);
           Synchronize(ultimocomprimido);
        finally

          //Eliminando los ficheros ini en temp
          try
            for I := 0 to StrToInt(fmain.Cantidad) - 1 do
            begin
              DeleteFile(FicherosTemp[I]);
            end;
          except
            try
              memo:='no se pudo eliminar el fichero ->'+FicherosTemp[I];
              Synchronize(updatememo);
            except

            end;
          end;

           //Repartiendo  para el destino
          if DirectoryExists(FMain.Destino) then
          begin
            FicherosTempZip.Clear;
            BuscaFicheros(FMain.Temporal,'*.zip',FicherosTempZip,true);
            if FicherosTempZip.Count > 0 then
            begin
              for I := 0 to FicherosTempZip.Count -1 do
              begin
                if FileExists(FicherosTempZip[I]) then
                begin
                  try
                   MoveFile(PChar(FicherosTempZip[I]), PChar(FMain.Destino+ExtractFileName(FicherosTempZip[I])));
                   Synchronize(updatelabelenviados);
                  except
                    try
                     memo:='no se pudo mover el fichero -> '+FicherosTempZip[i];
                     Synchronize(updatememo);
                    except

                    end;
                  end;
                end;
              end;
            end;
          end;
        end;
      except
        try
          memo:='Paso algo comprimiendo ';
          Synchronize(updatememo);
        except

        end;
        FicherosTemp.Clear;
      end;
    end;
//    else
//    {si el flujo baja entonces}
//    if (FicherosTemp.Count < StrToInt(fmain.Cantidad)) and (FicherosTemp.Count<>0) then
//    begin
//      begin
//       try
//          //Comprimir
//          try
//            if FicherosTemp.Count>0 then
//            begin
//              //fechahora actual
//              DateTimeToString(fechahora,fmt,Now);
//              //comprimiendo
//              for I := 0 to FicherosTemp.Count - 1 do
//              begin
//                fmain.AbZipper1.BaseDirectory:=FMain.Temporal;
//                fmain.AbZipper1.FileName:=FMain.Temporal+fechahora+'_'+'.zip';
//                fmain.AbZipper1.AddFiles(ExtractFileName(FicherosTemp[I]),0 );
//              end;
//              fmain.AbZipper1.CloseArchive;
//              Synchronize(updatelabelcomprimidos);
//              Comprimidos:=True;
//            end;
//          except
//            Comprimidos:=false;
//          end;
//
//          //Eliminando los ficheros ini en temp
//          if Comprimidos then
//          begin
//            try
//              for I := 0 to FicherosTemp.Count - 1 do
//              begin
//                DeleteFile(FicherosTemp[I]);
//              end;
//            except
//
//            end;
//          end;
//       except
//        FicherosTemp.Free;
//       end;
//      end
//    end;

    FicherosOrigen.Free;
    FicherosTemp.Free;
    FicherosTempZip.Free;

 until activo=False;
end;

procedure tareaComprimir.BuscaFicheros(path, mask : AnsiString; var Value : TStringList; brec : Boolean);
var
  srRes : TSearchRec;
  iFound : Integer;
begin
  if ( brec ) then
    begin
    if path[Length(path)] <> '\' then path := path +'\';
    iFound := FindFirst( path + '*.*', faAnyfile, srRes );
     while iFound = 0 do
      begin
      if ( srRes.Name <> '.' ) and ( srRes.Name <> '..' ) then
        if srRes.Attr and faDirectory > 0 then
          BuscaFicheros( path + srRes.Name, mask, Value, brec );
      iFound := FindNext(srRes);
      end;
    FindClose(srRes);
    end;
  if path[Length(path)] <> '\' then path := path +'\';
   iFound := FindFirst(path+mask, faAnyFile-faDirectory, srRes);
   while iFound = 0 do
    begin
     if ( srRes.Name <> '.' ) and ( srRes.Name <> '..' ) and ( srRes.Name <> '' ) then
        Value.Add(path+srRes.Name);
        iFound := FindNext(srRes);
    end;
  FindClose( srRes );
end;

function tareaComprimir.BuscaFicherosConLimite(path, mask: string;
  var Value: TStringList; brec: Boolean; max: integer): Boolean;
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
 Try
  if ( brec ) then
  begin
  if path[Length(path)] <> '\' then path := path +'\';
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
        while (nFound = 0) and (count<max)  do
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


  if path[Length(path)] <> '\' then path := path +'\';
   iFound := FindFirst(path+mask, faAnyFile-faDirectory, srRes);
   count:=0;
  while (iFound = 0) and (count<max)  do
  begin
   if ( srRes.Name <> '.' ) and ( srRes.Name <> '..' ) and ( srRes.Name <> '' ) then
    begin
     Value.Add(path+srRes.Name);
     inc(count);
    end;
    iFound := FindNext(srRes);
  end;
  FindClose( srRes );
  // Value.EndUpdate;
 except
 End;
 pathTmp:='';
 result:= (Value.Count > 0);
end;

procedure tareaComprimir.ultimocomprimido;
begin
  FMain.cxlabel9.Caption:=DateTimeToStr(now);
end;

procedure tareaComprimir.updatelabelcomprimidos;
begin
    Fmain.cxLabel2.Caption:=IntToStr(StrToInt64(fmain.cxLabel2.Caption)+1);
end;

procedure tareaComprimir.updatelabelenviados;
begin
   Fmain.cxLabel6.Caption:=IntToStr(StrToInt64(fmain.cxLabel6.Caption)+1);
end;

procedure tareaComprimir.updatememo;
begin
  FMain.mmoLogText.Lines.Add(memo);
end;

procedure tareaComprimir.updatelabelrecojidos;
begin
  Fmain.cxLabel8.Caption:=IntToStr(StrToInt64(fmain.cxLabel8.Caption)+1);
end;

end.
