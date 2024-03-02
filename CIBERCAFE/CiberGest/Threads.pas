unit Threads;

interface

uses
  System.Classes,System.SysUtils,Vcl.grids;

type

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
  public
  var
  RecUpdate:Integer;
  end;

  Thread2 = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
    procedure DeleteRow(SG: TStringGrid; Index: Integer);
    procedure EliminarRow;
    procedure PintarGridInactivo;
  public
  var
  RecEliminar:Integer;

  end;

  var hora,hora2,ahora:TTime;

implementation
 uses UPrincipal,UDM;

 { Thread1 }

procedure Thread1.Execute;
var
i:Integer;
valor:string;
Encontrado:Boolean;
begin
   inherited;
   try
     DecodificarMensaje(FPrincipal.smensaje);
     Synchronize(UpdateMemo);

     if FPrincipal.MensajeRX = 'EA' then
     begin
        // preguntando si la maquina esta en la BD
        DM.Qmaq.SQL.Clear;
        DM.Qmaq.SQL.Add('select maquinas.PcName from maquinas where maquinas.PcName=:ppcname;');
        DM.Qmaq.ParamByName('ppcname').AsString:=FPrincipal.PCRx;
        DM.Qmaq.Execute;

        // si no esta entonces introducirlo
        if DM.Qmaq.RecordCount = 0 then
        begin
          DM.Qmaq.SQL.Clear;
          DM.Qmaq.SQL.Add('INSERT INTO maquinas (Ip,PcName,Activo) VALUES (:Pip,:Ppc,:PActivo);');
          DM.Qmaq.ParamByName('Pip').AsString:=FPrincipal.IPRx;
          DM.Qmaq.ParamByName('Ppc').AsString:=FPrincipal.PCRx;
          DM.Qmaq.ParamByName('PActivo').AsInteger:=0;
          DM.Qmaq.Execute;

          Synchronize(RefrescarTabla);
        end
        else
        begin
            // no hago nada
        end;
     end;

     if FPrincipal.MensajeRX = 'ConUSB' then
     begin
        //
     end;

     if FPrincipal.MensajeRX = 'DesUSB' then
     begin
        //
     end;


     // buscar si existe la maquina para sino introducirla en la lista
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

   end;

   FPrincipal.ServidorSocket.StartListening;
end;

// Refrescar Tabla
procedure Thread1.RefrescarTabla;
begin
  DM.Qmaquinas.Execute;
  FPrincipal.cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
end;

//Actualizar lista
procedure Thread1.UpdateLista;
begin
  FPrincipal.AdvStringGrid1.Cells[2,RecUpdate]:=(TimeToStr(time));
end;

// actualizar el memo
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


{ Thread2 }

procedure Thread2.Execute;
 var
 ValorFecha,ValorHora:string;
 i,columna:Integer;

 Activo:Boolean;
begin
  inherited;
  Activo:=true;
  repeat
    try
       //Eliminando los que se pasen del tiempo.
       for I :=1 to FPrincipal.AdvStringGrid1.RowCount -1 do
       begin
         ValorFecha:=FPrincipal.AdvStringGrid1.Cells[1,i];
         ValorHora:=FPrincipal.AdvStringGrid1.Cells[2,i];
         if (ValorFecha <> '') and (ValorHora <> '') then
         begin
           // criterio de fecha
           if (Valorfecha <> DateToStr(date)) and (Valorfecha <> '') then
           begin
             RecEliminar:=i;
             Synchronize(EliminarRow);
             Continue;
           end
           else  //criterio de hora
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
             end;
           end;
         end;
       end;
    except

    end;
  until (Activo = False);
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

end.
