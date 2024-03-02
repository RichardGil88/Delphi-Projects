unit tareas;

interface

uses
  Classes {$IFDEF MSWINDOWS} , Windows {$ENDIF},Unit2,SysUtils,Dialogs;

type
  tarea1 = class(TThread)
  protected
   procedure Execute; override;
  public
   procedure vaciar;
   procedure Progressbar;
   procedure ProgressbarInicio;
   procedure Uplabel;
   procedure Mostrarlabel;
   procedure Ocultarlabel;
   procedure ocultarbar;
   procedure MostrarBar;
   procedure disponible;
   procedure nodisponible;
   procedure mensaje;
   procedure grid;
   procedure habilitarmenu;
   procedure deshabilitarmenu;
   procedure errores;


  end;
  var errores1:string;

implementation
uses Unit1;
{ tarea1 }

procedure tarea1.Execute;
var  I,claveactual:Integer;
     cadena,casoactual,dptosecc:string;
begin
  Synchronize(deshabilitarmenu);
  with DM.Qaux do
  begin
   //buscando la labla tx del grupo  escogido
   sql.Clear;
   form1.cadena:='select * from chequeo.grupos where grupos.grupo = :pgrupo;';
   SQL.Add(form1.cadena);
   ParamByName('pgrupo').AsString:= form1.rec1.grupo;
   Execute;
   Form1.tablatx:=FieldByName('ttx').AsString;

   //buscar estado de la tabla;
   DM.Qestado.SQL.Clear;
   Form1.cadena:='Select `estado`.`activa` From `control`.`estado` where `estado`.`tabla` = :P';
   DM.Qestado.SQL.Add(Form1.cadena) ;
   dm.Qestado.ParamByName('p').AsString:=Form1.tablatx;
   DM.Qestado.Execute;

   //verificando si se esta usando esa tabala
   if dm.Qestado.FieldByName('Activa').AsString ='n' then
   begin
    nodisponible;

    //vaciar la tabla del grupo en db control
    Vaciar;
    DM.Tcontrol.Close;
    DM.Tcontrol.TableName:=Form1.tablatx;
    DM.Tcontrol.Open;
    Synchronize(grid);

    if Form1.tablatx<>'cii' then
    begin
     SQL.Clear;
     Form1.cadena:='select * from `chequeo`.`'+form1.tablatx+';';
     DM.Qaux.SQL.Add(Form1.cadena);
     DM.Qaux.Execute;

     Form1.cxProgressBar1.Properties.Min:=0;
     Form1.cxProgressBar1.Properties.Max:=dm.Qaux.RecordCount;

     if dm.Qaux.RecordCount > 0 then
     begin
      Synchronize(Uplabel);
      Synchronize(mostrarlabel);
      Synchronize(mostrarbar);
      Synchronize(ProgressbarInicio);
     end;

     //comenzando a leer
     First;
     for I := 0 to RecordCount - 1 do
     begin

      with form1.rec1 do
      begin
       //try
       Synchronize(Progressbar);
       form1.rec1.Clave:=FieldByName('clave').AsInteger;
       //except
       //  errores1:='error de clave' ;
       //  Synchronize(errores);
       ////  Sleep(1000);
      // end;

       //con esta clave buscando el dpto seccion
      // try
       //buscando con esta clave el caso
       DM.UniQuery1.SQL.Clear;
       cadena:='select `claves`.`caso` from `chequeo`.`claves` where `claves`.`Clave` = '+inttostr(form1.rec1.Clave);
       DM.UniQuery1.SQL.Add(cadena);
       DM.UniQuery1.Execute;
       casoactual:=DM.UniQuery1.FieldByName('caso').AsString;
      // except
      //   errores1:='error de buscando caso' ;
      //   Synchronize(errores);
      //    Sleep(1000);
      // end;

      // try
       //con este caso busco el dpto seccion
       DM.UniQuery1.SQL.Clear;
       cadena:='select `casos`.`dptoseccion` from `chequeo`.`casos` where `casos`.`caso` = :P';
       DM.UniQuery1.SQL.Add(cadena);
       DM.UniQuery1.ParamByName('P').AsString:=casoactual;
       DM.UniQuery1.Execute;
       dptosecc:=DM.UniQuery1.FieldByName('dptoseccion').AsString;
      // except
      //   errores1:='error de buscando el dptosecc' ;
      //   Synchronize(errores);
      //    Sleep(1000);
      // end;

       Fechainicio:=FieldByName('Fecha inicio').AsDateTime;
       fechita:=FieldByName('fechita').AsDateTime;
       ktprimero:=FieldByName('ktprimero').AsString;
       ktclick:=FieldByName('ktclick').AsString;
       fechitaprimero:=FieldByName('fechitaPrimero').AsDateTime;
       duraclick:=FieldByName('duraclick').AsInteger;
       Sentido:= FieldByName('Sentido').AsString;
       llamador:=FieldByName('Telefono llamador').AsString;
       llamado:=FieldByName('Telefono llamado').AsString;
       Categoria:=FieldByName('Categoria').AsString;
       TipoTx:=FieldByName('TipoTx').AsString;
       Tema:=FieldByName('Tema').AsString;
       DigitosServiciosAgregados:=FieldByName('Digitos servicios agregados').AsString;
       It:=FieldByName('It').AsInteger;
       kt:=FieldByName('kt').AsString;
       fechita:=FieldByName('fechita').AsDateTime;
       priorizada:=FieldByName('priorizada').AsBoolean;
       conidioma:=FieldByName('conidioma').AsBoolean;
       Depurada:=FieldByName('Depurada').AsInteger;
       ktclick:=FieldByName('ktclick').AsString;
       fechaclick:=FieldByName('fechaclick').AsDateTime;
       duraclick:=FieldByName('duraclick').AsInteger;
       fichero:=FieldByName('fichero').AsString;
       ktprimero:=FieldByName('ktprimero').AsString;
       idioma:=FieldByName('idioma').AsString;
       confax:=FieldByName('confax').AsBoolean;
       bancovoces:=FieldByName('bancovoces').AsBoolean;
       contenido:=FieldByName('contenido').AsString;
       ficherocontenido:=FieldByName('ficherocontenido').AsString;

      // try
       //buscando duracion
       if FieldByName('Duracion').AsString <> '' then
        begin
         duracion:=form1.cambio(FieldByName('Duracion').AsString);
        end
       else
       begin
        duracion:=0;
       end;
      // except
      //    errores1:='error de duracion' ;
      //    Synchronize(errores);
      //     Sleep(1000);
      // end;

      // try
       //buscando lugar de monitoreo
       with dm.Qaux2 do
       begin
        SQL.Clear;
        Form1.cadena:='Select claves.Lugar From chequeo.claves Where claves.clave =:pclave;';
        SQL.Add(Form1.cadena);
        ParamByName('pclave').AsInteger:=Form1.rec1.clave;
        Execute;
        lugardemonitoreo:=FieldByName('Lugar').AsString;
       end;
      // except
      //    errores1:='error de lugar de monitoreo' ;
      //    Synchronize(errores);
      //     Sleep(1000);
      // end;
      end;


      try
      //insertando en la tabla control
      with dm.UniSQL1 do
      begin
       SQL.Clear;
       SQL.Add('insert into'+'"'+Form1.tablatx+'"');
       SQL.Add('(grupo, dptosecc, Clave, "Fecha inicio", duracion, Sentido, "Telefono llamador", "Telefono llamado", Categoria, TipoTx, Tema, "Digitos servicios agregados", It, kt, fechita, priorizada');
       SQL.Add(', conidioma, Depurada, ktclick, fechaclick, duraclick, fichero, ktprimero, fechitaPrimero, idioma, confax, bancovoces, contenido, ficherocontenido, "lugar de monitoreo")');
       SQL.Add('values (:grupo,:dptosecc, :Clave, :Fechainicio, :duracion, :Sentido, :llamador, :llamado, :Categoria, :TipoTx, :Tema, :Digitos, :It, :kt, :fechita, :priorizada, :conidioma, :Depurada, ');
       SQL.Add(':ktclick, :fechaclick, :duraclick, :fichero, :ktprimero, :fechitaPrimero, :idioma,:confax, :bancovoces, :contenido, :ficherocontenido, :lugar);');
       with form1.rec1 do
       begin
        ParamByName('grupo').AsString:=form1.rec1.grupo;
        ParamByName('dptosecc').AsString:=dptosecc;
        ParamByName('clave').asinteger:=form1.rec1.Clave;
        ParamByName('Fechainicio').AsDateTime:=form1.rec1.Fechainicio;
        ParamByName('duracion').asinteger:=form1.rec1.duracion;
        ParamByName('kt').AsString:=form1.rec1.kt;
        ParamByName('fechita').AsDateTime:=form1.rec1.fechita;
        ParamByName('ktprimero').AsString:=form1.rec1.ktprimero;
        ParamByName('ktclick').AsString:=form1.rec1.ktclick;
        ParamByName('fechitaprimero').AsDateTime:=form1.rec1.fechitaprimero;
        ParamByName('duraclick').AsInteger:=duraclick;
        ParamByName('Sentido').AsString:=Sentido;
        ParamByName('llamador').AsString:=llamador;
        ParamByName('llamado').AsString:=llamado;
        ParamByName('Categoria').AsString:=Categoria;
        ParamByName('TipoTx').AsString:=TipoTx;
        ParamByName('Tema').AsString:=Tema;
        ParamByName('Digitos').AsString;
        ParamByName('It').AsInteger:=It;
        ParamByName('fechita').AsDateTime:=fechita;
        ParamByName('priorizada').AsBoolean:=priorizada;
        ParamByName('conidioma').AsBoolean:=conidioma;
        ParamByName('Depurada').AsInteger:=Depurada;
        ParamByName('ktclick').AsString:=ktclick;
        ParamByName('fechaclick').AsDateTime:=fechaclick;
        ParamByName('duraclick').AsInteger:=duraclick;
        ParamByName('fichero').AsString:=fichero;
        ParamByName('ktprimero').AsString:=ktprimero;
        ParamByName('idioma').AsString:=idioma;
        ParamByName('confax').AsBoolean:=confax;
        ParamByName('bancovoces').AsBoolean:=bancovoces;
        ParamByName('contenido').AsString:=contenido;
        ParamByName('ficherocontenido').AsString:=ficherocontenido;
        ParamByName('lugar').AsString:=form1.rec1.lugardemonitoreo;
        Execute;
       end;
      end;
      except
      errores1:='error de insert' ;
      Synchronize(errores);
       Sleep(1000);
      end;
      Next;
     end;
     Synchronize(grid);
     disponible;
    end;
   end
   else
   begin
    Synchronize(mensaje);
   end;
  end;
  Synchronize(ocultarlabel);
  Synchronize(ocultarbar);
  Synchronize(habilitarmenu);
end;

procedure tarea1.Progressbar;
begin
  Form1.cxProgressBar1.Position:=Form1.cxProgressBar1.Position+1;
end;

procedure tarea1.ProgressbarInicio;
begin
  Form1.cxProgressBar1.Position:=0;
end;

procedure tarea1.Mostrarlabel;
begin
 form1.cxLabel3.Visible:=True;
end;

procedure tarea1.Ocultarbar;
begin
 Form1.cxProgressBar1.Visible:=false;
end;

procedure tarea1.Ocultarlabel;
begin
 form1.cxLabel3.Visible:=false;
end;

procedure tarea1.Grid;
begin
 form1.cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
end;

procedure tarea1.habilitarmenu;
begin
  Form1.tablasenuso1.Enabled:=True;
end;

procedure tarea1.deshabilitarmenu;
begin
    Form1.tablasenuso1.Enabled:=False;
end;

procedure tarea1.mensaje;
begin
 ShowMessage('la tabla esta en uso');
end;

procedure tarea1.MostrarBar;
begin
 Form1.cxProgressBar1.Visible:=true;
end;

procedure tarea1.Uplabel;
begin
  form1.cxLabel3.Caption:=' ';
  form1.cxLabel3.Caption:='Cargando '+inttostr(dm.Qaux.RecordCount)+' Registros'+ '  Espere..';
end;

procedure tarea1.Vaciar;
begin
   DM.Qvaciar.SQL.Clear;
   DM.Qvaciar.SQL.Add('truncate table '+'"'+Form1.tablatx+'"');
   DM.Qvaciar.Execute;
   if DM.Tcontrol.Active then Synchronize(grid);
end;

procedure tarea1.disponible;
begin
   //poniendo la tabla en estado "Disponible"
   DM.Qestado.SQL.Clear;
   DM.Qestado.SQL.Add('UPDATE `estado` SET `estado`.`Activa` = :e WHERE `estado`.`Tabla` = :P') ;
   dm.Qestado.ParamByName('p').AsString:=Form1.tablatx;
   dm.Qestado.ParamByName('e').AsString:='n';
   DM.Qestado.Execute;
end;

procedure tarea1.errores;
begin
  Form1.Label1.Caption:=errores1;
end;

procedure tarea1.nodisponible;
begin
   //poniendo la tabla en estado "No Disponible"
   DM.Qestado.SQL.Clear;
   DM.Qestado.SQL.Add('UPDATE `estado` SET `estado`.`Activa` = :e WHERE `estado`.`Tabla` = :P') ;
   dm.Qestado.ParamByName('p').AsString:=Form1.tablatx;
   dm.Qestado.ParamByName('e').AsString:='s';
   DM.Qestado.Execute;
end;

end.
