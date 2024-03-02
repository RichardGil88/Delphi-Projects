unit hilos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  hilo1 = class(TThread)
  private
  protected
  procedure Execute; override;
  procedure BuscaFicheros(path, mask: AnsiString; var Value: Int64; brec: Boolean);
  procedure refrescarGrid;
  procedure ActualizandoTablaGrupos;
  procedure DesactivarGrupos;
  procedure ActivarGrupos;
  procedure UpdateMemo;

  procedure CantGrupos;
  procedure CantActivos;
  procedure CantInactivos;
  procedure CantFuncionando;
  procedure CantNoFuncionando;
  end;

  var
  Activo:Boolean;
  Repeticion:Integer;

  CantidadFicheros:Int64;
  Directorio:string;
  memo:string;

  grupos,activos,inactivos,funcionando,nofuncionando:Integer;

implementation
uses Umain;
{ hilos }

procedure hilo1.Execute;
var I:Integer;
begin
  repeat
    Activo:=True;
    Sleep(RecCon.repeticion);

    //limpiando la cantidad de ficheros
    CantidadFicheros:=0;

    //recorriendo la tabla
    Synchronize(refrescarGrid);

    //llenando las estadisticas visuales
    grupos:=0;
    activos:=0;
    inactivos:=0;
    funcionando:=0;
    nofuncionando:=0;

    //----grupos
    grupos:=Fmain.Tgrupos.RecordCount;
    Synchronize(CantGrupos);

    //----Activos
    Fmain.Tgrupos.First;
    for I := 0 to Fmain.Tgrupos.RecordCount - 1 do
    begin
      if Fmain.Tgrupos.FieldByName('activo').AsBoolean=True then
      begin
        activos:=activos +1;
      end
      else
      begin
        inactivos:=inactivos +1;
      end;
      Fmain.Tgrupos.Next;
    end;
    Synchronize(CantActivos);
    Synchronize(CantInactivos);

    //----Funcionando
    Fmain.Tgrupos.First;
    for I := 0 to Fmain.Tgrupos.RecordCount - 1 do
    begin
      if Fmain.Tgrupos.FieldByName('funcionando').AsBoolean=True then
      begin
        funcionando:=funcionando +1;
      end
      else
      begin
        nofuncionando:=nofuncionando +1;
      end;
      Fmain.Tgrupos.Next;
    end;
    Synchronize(CantFuncionando);
    Synchronize(CantNoFuncionando);

    Fmain.Tgrupos.First;
    for I := 0 to Fmain.Tgrupos.RecordCount - 1 do
    begin
      //Verificando si esta funcionando
      if Fmain.Tgrupos.FieldByName('funcionando').AsBoolean=True then
      begin
        //Verificando si esta activo
        if Fmain.Tgrupos.FieldByName('activo').AsBoolean=True then
        begin
          //buscando los ficheros de cada directorio
          directorio:=Fmain.Tgrupos.FieldByName('Dirtx').AsString;
          if DirectoryExists(directorio) then
          begin
            try
              CantidadFicheros:=0;
              BuscaFicheros(directorio,'*.*',CantidadFicheros,false);
              Synchronize(ActualizandoTablaGrupos);
            except
              memo:='Error buscando los ficheros en el directorio -> '+directorio;
              Synchronize(UpdateMemo);
            end;
            try
              //desactivando los que se pasen del limite
              if (CantidadFicheros >= Fmain.Tgrupos.FieldByName('FicherosCantidadLimite').AsInteger) then
              begin
               Synchronize(DesactivarGrupos);
               memo:='Se desactivó el grupo :'+ Fmain.Tgrupos.FieldByName('grupo').AsString + ' a las : '+DateTimeToStr(Now);
               Synchronize(UpdateMemo);
              end;
            except
              memo:='Error desactivando el grupo -> '+Fmain.Tgrupos.FieldByName('grupo').AsString;
              Synchronize(UpdateMemo);
            end;
          end;
        end
        else  //si no esta activo
        if Fmain.Tgrupos.FieldByName('activo').AsBoolean=false then
        begin
          //buscando los ficheros de cada directorio
          directorio:=Fmain.Tgrupos.FieldByName('Dirtx').AsString;
          if DirectoryExists(directorio) then
          begin
            try
              CantidadFicheros:=0;
              BuscaFicheros(directorio,'*.*',CantidadFicheros,false);
              Synchronize(ActualizandoTablaGrupos);
            except
              memo:='Error buscando los ficheros en el directorio -> '+directorio;
              Synchronize(UpdateMemo);
            end;
          end;

          //Activando los que estan en 0
          if (Fmain.Tgrupos.FieldByName('FicherosCantidad').AsInteger < Fmain.Tgrupos.FieldByName('FicherosCantidadAlarma').AsInteger) and
             (Fmain.Tgrupos.FieldByName('automatico').AsBoolean = true)
          then
          begin
            try
             Synchronize(ActivarGrupos);
             memo:='Se activó el grupo :'+ Fmain.Tgrupos.FieldByName('grupo').AsString + ' a las : '+DateTimeToStr(Now);
             Synchronize(UpdateMemo);
            except
              memo:='Error desactivando el grupo :'+ Fmain.Tgrupos.FieldByName('grupo').AsString + ' a las : '+DateTimeToStr(Now);
             Synchronize(UpdateMemo);
            end;
          end;
        end;
      end;
      Fmain.Tgrupos.Next;
    end;
  until Activo=false;
end;

procedure hilo1.CantActivos;
begin
 Fmain.Edit2.Text:=IntToStr(activos);
end;

procedure hilo1.CantFuncionando;
begin
 Fmain.Edit4.Text:=IntToStr(funcionando);
end;

procedure hilo1.CantGrupos;
begin
  Fmain.Edit1.Text:=IntToStr(grupos);
end;

procedure hilo1.CantInactivos;
begin
  Fmain.Edit3.Text:=IntToStr(inactivos);
end;

procedure hilo1.CantNoFuncionando;
begin
 Fmain.Edit5.Text:=IntToStr(nofuncionando);
end;

procedure hilo1.refrescarGrid;
begin
  Fmain.Tgrupos.Refresh;
end;

procedure hilo1.UpdateMemo;
begin
  Fmain.cxMemo1.Lines.Add(memo);
end;

procedure hilo1.ActivarGrupos;
begin
  with Fmain.Update1 do
  begin
   SQL.Clear;
   SQL.Add('UPDATE `grupos` SET `grupos`.`activo`=:Pfi WHERE `grupos`.`idgrupo` = :Pid;');
   ParamByName('Pfi').AsBoolean:=true;
   ParamByName('Pid').AsInteger:=Fmain.Tgrupos.FieldByName('idgrupo').AsInteger;
   Execute;
  end;
end;

procedure hilo1.ActualizandoTablaGrupos;
begin
 with Fmain.Update1 do
 begin
  SQL.Clear;
  SQL.Add('UPDATE `grupos` SET `grupos`.`FicherosCantidad`=:Pfi WHERE `grupos`.`idgrupo` = :Pid;');
  ParamByName('Pfi').AsInteger:=CantidadFicheros;
  ParamByName('Pid').AsInteger:=Fmain.Tgrupos.FieldByName('idgrupo').AsInteger;
  Execute;
 end;
end;

procedure hilo1.DesactivarGrupos;
begin
  with Fmain.Update1 do
  begin
   SQL.Clear;
   SQL.Add('UPDATE `grupos` SET `grupos`.`activo`=:Pfi WHERE `grupos`.`idgrupo` = :Pid;');
   ParamByName('Pfi').AsBoolean:=False;
   ParamByName('Pid').AsInteger:=Fmain.Tgrupos.FieldByName('idgrupo').AsInteger;
   Execute;
  end;
end;

procedure hilo1.BuscaFicheros(path, mask: AnsiString; var Value: Int64; brec: Boolean);
var
  srRes : TSearchRec;
  iFound : Integer;
 begin
  value:=0;

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
      Inc(value); //Value.Add(path+srRes.Name);
      iFound := FindNext(srRes);
  end;
  FindClose( srRes );
 end;

end.
