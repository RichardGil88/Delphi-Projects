unit Unit3;

interface

uses
  Classes{$IFDEF MSWINDOWS},Windows {$ENDIF},SysUtils;

type
  thread2 = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
    procedure BuscaFicheros(path, mask : AnsiString; var Value : TStringList; brec : Boolean);
    procedure visible;
    procedure updatememo;
    procedure errormover;
    procedure totalsinbd;
    procedure ficheroscantidad;
  end;

   var
    Ficheros: TStringList;
    memo:string;

implementation
 uses Unit1;
{ thread2 }

procedure thread2.Execute;
var rutaorigen,rutadestino,cadena:string;
    i:Integer;
begin
  // Buscar los ficheros y meterlos en la lista
  try
    Synchronize(visible);
    Ficheros := TStringList.Create;
    rutaorigen:=form1.cxButtonEdit3.Text;
    rutadestino:=form1.cxButtonEdit2.Text;
    if DirectoryExists(rutaorigen) then
    begin
      try
        Ficheros.Clear;
        BuscaFicheros(rutaorigen,'*.rtf',Ficheros,False);
      except
        Ficheros.Clear;
      end;
    end;
  except

  end;


  if Ficheros.Count >0 then
  begin
    //recorriendo todos los ficheros de la carpeta
    try
      for I := 0 to ficheros.Count - 1 do
      begin
        with Form1.QFicheroTablaD do
        begin
          SQL.Clear;
          cadena:='Select `versiones`.`fichero` , `versiones`.`unidaduser` From `versiones` where `versiones`.`fichero`=:Pfichero ;';
          SQL.Add(cadena);
          ParamByName('Pfichero').AsString:=Ficheros[I];
          Execute;
        end;

        // si no esta en la tabla trato de moverlo para la nueva carpeta
        if not (Form1.QFicheroTablaD.RecordCount >0) then
        begin
          try
            ForceDirectories(rutadestino + Form1.QFicheroTablaD.FieldByName('unidaduser').AsString);
            //MoveFile(PWideChar(Ficheros[B]),PWideChar(rutadestino + Form1.QFicheroTablaD.FieldByName('unidaduser').AsString + '\'+ExtractFileName(Ficheros[I])));
            memo:='Fichero movido para -> '+ rutadestino + Form1.QFicheroTablaD.FieldByName('unidaduser').AsString+'\'+ExtractFileName(Ficheros[I]);
            Synchronize(UpdateMemo);
          except
            Synchronize(errormover);
          end;
          Synchronize(totalsinbd);
        end;
       Synchronize(ficheroscantidad);
      end;
    except

    end;
  end;

end;

procedure thread2.BuscaFicheros(path, mask: AnsiString; var Value: TStringList; brec: Boolean);
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

procedure thread2.visible;
begin
    form1.AdvCircularProgress2.Visible:=True;
end;

procedure thread2.updatememo;
begin
   Form1.cxMemo1.Lines.Add(memo);
end;

procedure thread2.errormover;
begin
   Form1.cxLabel3.Caption:=IntToStr(StrToInt64(Form1.cxLabel3.Caption)+1);
end;

procedure thread2.totalsinbd;
begin
    Form1.cxLabel21.Caption:=IntToStr(StrToInt64(Form1.cxLabel21.Caption)+1);
end;

procedure thread2.ficheroscantidad;
begin
  Form1.cxLabel15.Caption:=IntToStr(StrToInt64(Form1.cxLabel15.Caption)+1);
end;


end.
