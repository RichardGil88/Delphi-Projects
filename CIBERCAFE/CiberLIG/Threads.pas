unit Threads;

interface

uses
  System.Classes,System.SysUtils,Vcl.grids;

type
  RecMaq = record
    idMaquina:Integer;
    Ip:string;
    PcName:string;
    Ftp:string;
    DirFTP:string;
    Activo:Boolean;
  end;

  Thread1 = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
    procedure DecodificarMensaje(mensaje: string);
    procedure UpdateMemo;
    procedure RefrescarTabla;
    procedure AgregarAlaLista;
    procedure AgregarAlaLista1;
    procedure UpdateLista;
    procedure error;
  public
  var
  RecUpdate:Integer;
  error1:string;
  end;

  Thread2 = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
    procedure DeleteRow(SG: TStringGrid; Index: Integer);
    procedure EliminarRow;
    procedure PintarGridInactivo;
    procedure RefrescarTabla;
  public
  var
  RecEliminar:Integer;

  end;

  Thread3 = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
    procedure EnviarMensaje(ip, port, mensaje: string);
    procedure UpdateMemo;
  public
  var RecMaq1:RecMaq;
  memo:string;
  end;

  var hora,hora2,ahora:TTime;

implementation
 uses UPrincipal,UDM1,UDM2,UDM3;


//-------  { Thread1 }
// Este hilo es para Recibir los comandos

procedure Thread1.Execute;
var
i:Integer;
valor:string;
Encontrado:Boolean;
begin
   inherited;
   try
     try
      DecodificarMensaje(FPrincipal.sMensaje);
      Synchronize(UpdateMemo);
     except
       Error1:='Error Decodificando el Mensaje';
       Synchronize(Error);
     end;

     // Introduciendo
     if FPrincipal.MensajeRX = 'EA' then
     begin
        try
          // Preguntando si la maquina esta en la BD
          DM1.Qmaq.SQL.Clear;
          DM1.Qmaq.SQL.Add('Select maquinas.Nombre_PC From maquinas Where maquinas.Nombre_PC=:ppcname;');
          DM1.Qmaq.ParamByName('ppcname').AsString:=FPrincipal.PCRx;
          DM1.Qmaq.Execute;
        except
          Error1:='Error preguntando si la maquina esta en la BD';
          Synchronize(Error);
        end;

        // si no esta entonces introducirlo
        if DM1.Qmaq.RecordCount =  0 then
        begin
          try
            DM1.Qmaq1.SQL.Clear;
            DM1.Qmaq1.SQL.Add('INSERT INTO `maquinas` (`Nombre_PC`,`IP`) VALUES (:Ppc,:Pip);');
            DM1.Qmaq1.ParamByName('Ppc').AsString:=FPrincipal.PCRx;
            DM1.Qmaq1.ParamByName('Pip').AsString:=FPrincipal.IPRx;
            DM1.Qmaq1.Execute;
            Synchronize(RefrescarTabla);
          except
             Error1:='Error insertando la nueva Máquina en la BD';
             Synchronize(Error);
          end;
        end;
//        else  // si esta entonces actualizo   UltimaConeccion
//        begin
//          DM1.Qmaq.SQL.Clear;
//          DM1.Qmaq.SQL.Add('update maquinas set UltimaConeccion= '+DateTimeToStr(now)+', ip=:Pip where PcName=:Ppc;');
//          DM1.Qmaq.ParamByName('Pip').AsString:=FPrincipal.IPRx;
//          DM1.Qmaq.ParamByName('Ppc').AsString:=FPrincipal.PCRx;
//          DM1.Qmaq.ParamByName('PActivo').AsInteger:=0;
//          DM1.Qmaq.Execute;
//        end;
     end;

     // buscar si existe la maquina para sino introducirla en el stringlist
     try
       for I :=1 to FPrincipal.AdvStringGrid1.RowCount -1 do
       begin
         valor:=FPrincipal.AdvStringGrid1.Cells[0,i];
         Encontrado:=True;

         if valor = '' then
         begin
          Synchronize(AgregarAlaLista);
          Continue ;
         end;

         if (valor <> FPrincipal.PCRx) then
         begin
           Encontrado:=False;
           Continue;
         end
         else
         if (valor = FPrincipal.PCRx) then
         begin
           RecUpdate:=i;
           Synchronize(UpdateLista);
           Encontrado:=True;
           break;
         end;
       end;


       // Introduciendo la maquina en la lista
       if Encontrado = False then
       begin
         Synchronize(AgregarAlaLista1);
       end;

     except
       Error1:='Error insertando la nueva Máquina en  el Stringlist';
       Synchronize(Error);
     end;
   except

   end;

   FPrincipal.ServidorSocket.StartListening;
end;

// Refrescar Tabla
procedure Thread1.RefrescarTabla;
begin
  try
    DM1.Qmaquinas.Execute;
    FPrincipal.cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
  except
    Error1:='Error actualizando el DbGrid';
       Synchronize(Error);
  end;
end;

// Actualizar lista
procedure Thread1.UpdateLista;
begin
  FPrincipal.AdvStringGrid1.Cells[2,RecUpdate]:=(TimeToStr(time));
end;

// Actualizar el memo
procedure Thread1.UpdateMemo;
begin
   FPrincipal.Memo1.Lines.Add('Recibido -> ip: '+FPrincipal.IPRx+' Nombre Máquina: '+FPrincipal.PCRx+' Mensaje: '+FPrincipal.MensajeRX);
end;

// Agregando a la lista sin fila en blanco
procedure Thread1.AgregarAlaLista;
begin
   //FPrincipal.AdvStringGrid1.InsertNormalRow(1);
   FPrincipal.AdvStringGrid1.Cols[0].Add(FPrincipal.PCRx);
   FPrincipal.AdvStringGrid1.Cols[1].Add(datetostr(date));
   FPrincipal.AdvStringGrid1.Cols[2].Add(TimeToStr(time));
end;

// Agregando a la lista con fila en blanco
procedure Thread1.AgregarAlaLista1;
begin
   FPrincipal.AdvStringGrid1.InsertNormalRow(1);
   FPrincipal.AdvStringGrid1.Cols[0].Add(FPrincipal.PCRx);
   FPrincipal.AdvStringGrid1.Cols[1].Add(datetostr(date));
   FPrincipal.AdvStringGrid1.Cols[2].Add(TimeToStr(time));
end;

// decodificar  mensaje
procedure Thread1.DecodificarMensaje(mensaje: string);
var
cad0,cad1,cad2,cad3:string;
pos1,pos2,pos3:Integer;
begin
   cad0:=mensaje;
   //tomando el mensaje;
   pos1:=Pos('&',cad0);
   FPrincipal.MensajeRX:=copy(cad0,0,pos1-1);
   Delete(cad0,1,pos1);
   cad1:=cad0;
   //Tomando el parametro
   pos2:=Pos(',',cad1);
   FPrincipal.ParametroRX:=Copy(cad1,0,pos2-1);
   Delete(cad1,1,pos2);
   cad2:=cad1;
   //tomando la ip del cliente
   pos3:=Pos(',',cad2);
   FPrincipal.IPRx:=Copy(cad2,0,pos3-1);
   Delete(cad2,1,pos3);
   cad3:=cad2;
   //tomando el nombre del pc cliente
   FPrincipal.PCRx:=cad3;
end;

// para mostrar los errores
procedure Thread1.error;
begin
FPrincipal.MemoError.Lines.Add(error1);
end;


//-------  { Thread2 }
// Este hilo es para saber los que se inactiven por tiempo

procedure Thread2.Execute;
 var
 ValorFecha,ValorHora,ValorMaquina:string;
 i:Integer;
 Activo:Boolean;
begin
  inherited;
  Activo:=true;
  repeat
    try
       //Eliminando los que se pasen del tiempo.
       for I :=1 to FPrincipal.AdvStringGrid1.RowCount -1 do
       begin
         ValorMaquina:=FPrincipal.AdvStringGrid1.Cells[0,i];
         ValorFecha:=FPrincipal.AdvStringGrid1.Cells[1,i];
         ValorHora:=FPrincipal.AdvStringGrid1.Cells[2,i];
         if (ValorFecha <> '') and (ValorHora <> '') and (ValorHora <> 'Inactivo')then
         begin
           // criterio de fecha
           if (Valorfecha <> DateToStr(date)) and (Valorfecha <> '') then
           begin
             RecEliminar:=i;
             Synchronize(EliminarRow);
             Continue;
           end
           else
           begin

             //Delete(ValorHora,length(ValorHora)-2,length(ValorHora));
             hora:=StrToTime(ValorHora);
             ahora:=Time;
             hora2:=ahora-1 /1440;

             // si han pasados 5 minutos y no han llegado mensajes Entonces
             if hora <=  hora2 then
             begin
               //inactivar
               RecEliminar:=i;
               Synchronize(PintarGridInactivo);
               try
                 // inactivar en la BD
//                 with DM2.qinactivar do
//                 begin
//                   ParamByName('Pmaq').AsString:=ValorMaquina;
//                   Execute;
//                   Synchronize(RefrescarTabla);
//                 end;
               except

               end;
             end;
           end;
         end;
       end;
    except

    end;
  until (Activo = False);
end;

// Refrescar Tabla
procedure Thread2.RefrescarTabla;
begin
  DM1.Qmaquinas.Execute;
  FPrincipal.cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
end;

// pintar grid de inactivo
procedure Thread2.PintarGridInactivo;
begin
   FPrincipal.AdvStringGrid1.Cells[2,RecEliminar]:='Inactivo';
end;

// procedimiento eliminar un record
procedure Thread2.DeleteRow(SG: TStringGrid; Index: Integer);
var
  i:Integer;
begin

  // Sólo está la de títulos?
  if (SG.RowCount = 1) then
  begin
    Exit;
  end;

  for i := Index to (SG.RowCount) do
  begin
    SG.Rows[i].Assign(SG.Rows[i+1]);
  end;

  // No quedan Líneas?
  if (SG.RowCount > 1) then
  begin
    SG.RowCount := SG.RowCount - 1;
  end
  else
  begin

  end;
end;

// eliminar un record
procedure Thread2.EliminarRow;
begin
  DeleteRow(FPrincipal.AdvStringGrid1,RecEliminar);
end;


//------  { Thread3 }
// Este hilo es para Enviar los comandos

procedure Thread3.Execute;
var i:Integer;
  Activo:Boolean;
begin
  inherited;
  Activo:=true;
  repeat
//    Sleep(5000);
//    // recorrer las maquinas activas y enviarle los comandos
//    DM3.QSelectActivas.Execute;
//    if DM3.QSelectActivas.RecordCount > 0 then
//    begin
//      for I := 0 to DM3.QSelectActivas.RecordCount -1 do
//      begin
//        try
//          RecMaq1.idMaquinas:=DM3.QSelectActivas.FieldValues['idMaquinas'];
//          RecMaq1.Ip:=DM3.QSelectActivas.FieldValues['Ip'];
//          RecMaq1.PcName:=DM3.QSelectActivas.FieldValues['PcName'];
//          RecMaq1.Ftp:=DM3.QSelectActivas.FieldValues['Ftp'];
//          RecMaq1.DirFTP:=DM3.QSelectActivas.FieldValues['DirFTP'];
//          RecMaq1.Activo:=DM3.QSelectActivas.FieldValues['Activo'];
//          RecMaq1.Pantallas:=DM3.QSelectActivas.FieldValues['Pantallas'];
//          RecMaq1.TiempoPantallas:=DM3.QSelectActivas.FieldValues['TiempoPantallas'];
//          RecMaq1.Teclado:=DM3.QSelectActivas.FieldValues['Teclado'];
//          RecMaq1.TiempoTeclado:=DM3.QSelectActivas.FieldValues['TiempoTeclado'];
//          RecMaq1.USB:=DM3.QSelectActivas.FieldValues['USB'];
//        except
//
//        end;
//
//        if RecMaq1.Ip <> '' then
//        begin
//          Sleep(1000);
//          //dirtx
//          if RecMaq1.ftp <> '' then
//          begin
//           EnviarMensaje(RecMaq1.ip,'30','DF&'+RecMaq1.ftp);
//           memo:='Enviado -> '+' DF&'+RecMaq1.ftp;
//           Synchronize(UpdateMemo);
//          end;
//        end;
//      end;
//    end;
  until Activo = False;
end;

// Actualizando el memo
procedure Thread3.UpdateMemo;
begin
  FPrincipal.Memo1.Lines.Add(memo);
end;

// Enviar mensaje por socket
procedure Thread3.EnviarMensaje(ip, port, mensaje: string);
begin
 try
  // el puerto debe de ser el 30
  FPrincipal.Cliente.Host := ip;
  FPrincipal.Cliente.Port := strtoint(port);
  FPrincipal.Cliente.Connect;
  FPrincipal.Cliente.Socket.WriteLn( mensaje );
  FPrincipal.Cliente.Disconnect;
 except

 end;
end;

end.
