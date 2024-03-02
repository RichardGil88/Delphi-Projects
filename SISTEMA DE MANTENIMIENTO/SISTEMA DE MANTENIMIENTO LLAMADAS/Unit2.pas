unit Unit2;

interface

uses
  Classes {$IFDEF MSWINDOWS} , Windows {$ENDIF},SysUtils;

type
  thread1 = class(TThread)
  protected
    procedure Execute; override;
    procedure boton;
    procedure visible;
    procedure novisible;
    procedure errormover;
    procedure ficheroscantidad;
    procedure llenar2;
    procedure totalsinbd;
    procedure totalsinbd1;
    procedure BuscaFicheros(path, mask : AnsiString; var Value : TStringList; brec : Boolean);
    procedure TablaenAnalisis;
    procedure updatememo;
  end;

  var
  TablaTx,Ttx,Dirtx:string;
  Ficheros: TStringList;
  memo:string;
  fichero:string;

implementation
uses Unit1;

procedure thread1.Execute;
var A,B,I:Integer;
path,cadena:string;
begin
  try
   Synchronize(visible);
   Ficheros := TStringList.Create;
   //seleccionando los nombre de tablas tx de la tabla grupos
   Form1.Qgrupos.Execute;
  except

  end;

  //recorriendo la lista de las tablas
  for A := 0 to Form1.CheckListBox2.Items.Count - 1 do
  begin
    if Form1.CheckListBox2.Checked[A] = True then
    begin
      try
       Ttx:= Form1.CheckListBox2.Items.Strings[A];
        Synchronize(TablaenAnalisis);

       Form1.QDirtxdeTtx.ParamByName('Pttx').AsString:=Ttx;
       Form1.QDirtxdeTtx.Execute;

       Dirtx:=Form1.QDirtxdeTtx.FieldByName('dirtx').AsString;
      except

      end;

      //Recorriendo para ver si estan los ficheros en el disco
      try
         with Form1.Qtablatx do
         begin
           SQL.Clear;
           cadena:='Select `'+ttx+'`.`fichero` From `'+ttx+'`';
           SQL.Add(cadena);
           Execute;

           First;
           for I := 0 to Form1.Qtablatx.RecordCount - 1 do
           begin
             fichero:=Form1.Qtablatx.FieldByName('fichero').AsString;
             if not FileExists(fichero) then
             begin
                Synchronize(llenar2);
                Synchronize(totalsinbd);
             end;
             Next;
           end;
         end;
      except

      end;

//    Recorriendo para ver si los ficheros del disco estan en la bd
//    Buscando los ficheros del directorio
      if DirectoryExists(Dirtx) then
      begin
        try
          Ficheros.Clear;
          BuscaFicheros(Dirtx,'*.wav',Ficheros,False);
        except
          Ficheros.Clear;
        end;
      end;

      if Ficheros.Count >0 then
      begin
       //recorriendo todos los ficheros de la carpeta
        try
          for B := 0 to ficheros.Count - 1 do
          begin
            with Form1.QFicheroTabla do
            begin
              SQL.Clear;
              cadena:='Select `'+ttx+'`.`fichero` From `'+ttx+'` where `'+ttx+'`.`fichero`=:Pfichero ';
              SQL.Add(cadena);
              ParamByName('Pfichero').AsString:=Ficheros[B];
              Execute;
            end;

            // si no esta en la tabla trato de moverlo para la nueva carpeta
            if not (Form1.QFicheroTabla.RecordCount >0) then
            begin
              try
                ForceDirectories(Form1.cxButtonEdit1.Text + ttx);
                //MoveFile(PWideChar(Ficheros[B]),PWideChar(Form1.cxButtonEdit1.Text + ttx+'\'+ExtractFileName(Ficheros[B])));
                memo:='Fichero movido para -> '+ Form1.cxButtonEdit1.Text + ttx+'\'+ExtractFileName(Ficheros[B]);
                Synchronize(UpdateMemo);
              except
                Synchronize(errormover);
              end;
              Synchronize(totalsinbd1);
            end;
           Synchronize(ficheroscantidad);
          end;
        except

        end;
      end;
    end;
  end;
  Synchronize(novisible);
  Synchronize(boton);
end;

procedure thread1.llenar2;
begin
   Form1.memo2.Lines.Add(fichero);
end;

procedure thread1.ficheroscantidad;
begin
  Form1.cxLabel6.Caption:=IntToStr(StrToInt64(Form1.cxLabel6.Caption)+1);
end;

procedure thread1.novisible;
begin
   form1.AdvCircularProgress1.Visible:=False;
end;

procedure thread1.TablaenAnalisis;
begin
   Form1.cxLabel11.Caption:=Ttx;
end;

procedure thread1.totalsinbd;
begin
    Form1.cxLabel10.Caption:=IntToStr(StrToInt64(Form1.cxLabel10.Caption)+1);
end;

procedure thread1.totalsinbd1;
begin
    Form1.cxLabel8.Caption:=IntToStr(StrToInt64(Form1.cxLabel8.Caption)+1);
end;

procedure thread1.updatememo;
begin
   Form1.memo1.Lines.Add(memo);
end;

procedure thread1.visible;
begin
   form1.AdvCircularProgress1.Visible:=True;
end;

procedure thread1.boton;
begin
   Form1.cxButton1.Enabled:=true;
end;

procedure thread1.BuscaFicheros(path, mask: AnsiString; var Value: TStringList; brec: Boolean);
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

procedure thread1.errormover;
begin
   Form1.cxLabel4.Caption:=IntToStr(StrToInt64(Form1.cxLabel4.Caption)+1);
end;

end.
