unit tareas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,StdCtrls,cxButtons;

type

  Ficheros = record
    PcName:string;
    UserName:string;
    Tipo:string;
    Extencion:string;
    Descripcion:string;
    Fecha:TDate;
    Hora:TTime;
  end;

  thread1 = class(TThread)
  { Private declarations }
  private
  { Protected declarations }
  protected
    procedure Execute; override;
  { Public declarations }
  public
    procedure BuscaFicheros(path, mask : AnsiString; var Value : TStringList; brec : Boolean);
    procedure Descomponerfichero(fichero1:string);
    procedure Despachados;
    procedure Fechaultimo;
    procedure Labelerror;
    procedure LabelEliminados;
    procedure UpdateMemo;
  end;

  var HayFicheros,Activo1:Boolean;
      ServidorFTP,error,varfechaultimo:string;
      Fichero:Ficheros;
      Chequeado:Boolean;
      memo:string;


implementation
  uses UDM1,umain;

  { thread1 } //Procesarlos

procedure thread1.Execute;
var
  I:Integer;
  FicherosOrigen:TStringList;
  movido:Boolean;
  Desc:Boolean;
  Temporal,NombreRealTemp,NombreReal:string;
  OrigenFicheros:string;
  Destinoficheros:string;
  temp:string;
begin
  Activo1:=True;
  // Buscando el origen y el destino
  try
   DM1.QDespachador.Execute;
   OrigenFicheros:= DM1.QDespachador.FieldValues['Origen'];
   DestinoFicheros:= DM1.QDespachador.FieldValues['Destino'];
   memo:= 'Carpeta Origen: '+OrigenFicheros;
   Synchronize(UpdateMemo);
   memo:= 'Carpeta Destino: '+Destinoficheros;
   Synchronize(UpdateMemo);
  except

  end;

  repeat
    try
      FicherosOrigen:=TStringList.Create;
      // Destino de los ficheros qu esta en el .ini
      if DirectoryExists(DestinoFicheros) then
      begin
        // directorio de los ficheros (Origen).
        if DirectoryExists(OrigenFicheros) then
        begin
          FicherosOrigen.clear;
          BuscaFicheros(OrigenFicheros,'*.Temp',FicherosOrigen,False);
          //recorriendo los ficheros de cada directorio
          if FicherosOrigen.Count = 0 then
          begin
            Sleep(10000);
          end;

          for I := 0 to FicherosOrigen.Count - 1 do
          begin

           // Sacandole la Informacion
            try
              descomponerfichero(FicherosOrigen[I]);
              Desc:=True;
            except
              Desc:=False;
            end;

            if Desc then
            begin
              //Preguntar si esta activo para despacharlo sino eliminarlo ()
              try
                DM1.QActivo.ParamByName('Pusuario').AsString:=Fichero.UserName;
                DM1.QActivo.Execute;

                if DM1.QActivo.recordcount > 0 then
                begin
                  if DM1.QActivo.FieldValues['Activo'] = 1 then
                  begin
                    Chequeado:=True;
                  end
                  else
                  begin
                    Chequeado:=False;
                  end;
                end
                else
                begin
                 Chequeado:=False;
                end;
              except

              end;

              // si es un chequeo entonces lo proceso
              if Chequeado = True then
              begin
                // Renombrando el fichero
                try
                   if Fichero.Descripcion= 'I' then
                   begin
                     Temporal:=FicherosOrigen[I];
                     Delete(Temporal,Length(Temporal)-4,Length(Temporal));
                     NombreReal:=Temporal+'.JPEG';
                   end
                   else if Fichero.Descripcion= 'T' then
                   begin
                     Temporal:=FicherosOrigen[I];
                     Delete(Temporal,Length(Temporal)-4,Length(Temporal));
                     NombreReal:=Temporal+'.TXT';
                   end ;
//                   else if Fichero.Descripcion= 'U' then
//                   begin
//                     Temporal:=FicherosOrigen[I];
//                     Delete(Temporal,Length(Temporal)-4,Length(Temporal));
//                     NombreReal:=Temporal+'.TXT';
//                   end
//                   else if Fichero.Descripcion= 'UI' then
//                   begin
//                     Temporal:=FicherosOrigen[I];
//                     Delete(Temporal,Length(Temporal)-4,Length(Temporal));
//                     NombreReal:=Temporal+'.TXT';
//                   end;
                except

                end;


                try
                  // Crreando la carpeta si es necesario
                  temp:=Fichero.UserName;
                  if not SysUtils.DirectoryExists(Destinoficheros+temp) then
                  if not CreateDir(Destinoficheros+temp) then
                  begin
                    error:='no se pudo crear la carpeta -->'+Destinoficheros+temp ;
                    Synchronize(labelerror);
                  end;

                  if SysUtils.DirectoryExists(Destinoficheros+temp) then
                  begin
                    MoveFile(PWideChar(FicherosOrigen[I]),PWideChar(Destinoficheros+Fichero.UserName+'\'+ExtractFileName(NombreReal)));

                    if FileExists(Destinoficheros+Fichero.UserName+'\'+ExtractFileName(NombreReal)) then
                    begin
                      try
                        //Insertando en la BD
                        With DM1.Qinsertar do
                        begin
                           ParamByName('PPcName').asstring:=Fichero.PcName;
                           ParamByName('PUserName').asstring:=Fichero.UserName;
                           ParamByName('PCarpeta').asstring:=Destinoficheros+Fichero.UserName+'\';
                           ParamByName('PFichero').asstring:=ExtractFileName(NombreReal);
                           ParamByName('PFecha').AsDate:=Fichero.Fecha;
                           ParamByName('PHora').AsTime:=Fichero.Hora;
                           ParamByName('PTipo').asstring:=Fichero.tipo;
                           ParamByName('PExtencion').asstring:=Fichero.extencion;
                           ParamByName('PProcesado').AsBoolean:=False;
                           ParamByName('PConservar').AsBoolean:=False;
                           Execute;
                        end;
                        Synchronize(Despachados);
                        varfechaultimo:=DateTimeToStr(now);
                        Synchronize(Fechaultimo);
                      except

                      end;
                    end;
                  end;
                except

                end;
              end
              else  // pasarlo para Masivos.
              begin
                // Si no es un Chequeado lo Elimino
                try
                  DeleteFile(FicherosOrigen[I]);
                  Synchronize(LabelEliminados);
                except

                end;
              end;
            end;
          end;
        end
        else   //si no existe el Origen
        begin
          error:='El dir. origen no existe';
          Synchronize(labelerror);
        end;
      end
      else    //si no existe el Destino
      begin
        error:='El dir. destino no existe';
        Synchronize(labelerror);
        try
        ForceDirectories(Destinoficheros);
        except

        end;
      end;
      FicherosOrigen.Clear;
    except
      FicherosOrigen.Clear;
    end;

  until Activo1=false;
end;

procedure thread1.Descomponerfichero(fichero1:string);
 var cad0,cad1,cad2,cad3,cad4:string;
     pos0,pos1,pos2,pos3:Integer;
     fecha1,hora1:string;
begin
  try
    cad0:=ExtractFileName(fichero1);

    pos1:=Pos('&',cad0);
    Fichero.PcName:=Copy(cad0,0,pos1-1);
    Delete(cad0,1,pos1);
    cad1:= cad0;
    //aqui ya tenemos el nombre de la pc.

    pos1:=Pos('&',cad1);
    Fichero.UserName:=Copy(cad1,0,pos1-1);
    Delete(cad1,1,pos1);
    cad2:= cad1;
    //aqui ya tenemos el nombre de usuario

    pos2:=Pos('&',cad2);
    fecha1:=Copy(cad2,0,pos2-1);
    Delete(cad2,1,pos2);
    cad3:= cad2;
    //aqui ya tenemos la fecha.

    pos3:=Pos('&',cad3);
    hora1:=Copy(cad3,0,pos3-1);
    Delete(cad3,1,pos3);
    cad4:= cad3;
    //aqui ya tenemos la hora.

    Fecha1:=StringReplace(fecha1,'-','/',[rfReplaceAll]);
    Hora1:=StringReplace(hora1,'.',':',[rfReplaceAll]);

    Fichero.Fecha:=StrToDate(fecha1);
    Fichero.Hora:=StrToTime(hora1);

    Fichero.Descripcion:=Copy(cad4,0,length(cad4)-5);

    if Fichero.Descripcion= 'I' then
    begin
       Fichero.Tipo:= 'Imagen';
       Fichero.Extencion:='JPEG';
    end
    else if Fichero.Descripcion= 'T' then
    begin
       Fichero.Tipo:= 'Teclado';
       Fichero.Extencion:='TXT';
    end
    else if Fichero.Descripcion= 'U' then
    begin
       Fichero.Tipo:= 'USB';
       Fichero.Extencion:='TXT';
    end
    else if Fichero.Descripcion= 'UI' then
    begin
       Fichero.Tipo:= 'USBInfo';
       Fichero.Extencion:='TXT';
    end;
  except

  end;
end;

procedure thread1.BuscaFicheros(path, mask: AnsiString; var Value: TStringList;  brec: Boolean);
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

procedure thread1.Despachados;
begin
  Fmain.cxLabel2.Caption:=IntToStr(StrToInt64(fmain.cxLabel2.Caption)+1);
end;

procedure thread1.Fechaultimo;
begin
   Fmain.cxlabel6.caption:=varfechaultimo;
end;

procedure thread1.LabelEliminados;
begin
  Fmain.cxLabel9.Caption:=IntToStr(StrToInt64(fmain.cxLabel9.Caption)+1);
end;

procedure thread1.labelerror;
begin
  Fmain.cxLabel7.Caption:=error;
end;

procedure thread1.UpdateMemo;
begin
Fmain.cxMemo1.Lines.Add(memo);
end;

end.
