unit Thread1;

interface

uses
  Classes, SysUtils,IniFiles,DateUtils,Dialogs,Variants,mySQLDbTables,DB;
const
  maxgrupos = 50;
  maxCategorias = 50;
type
  RecGrupos = Record
               grupo: string[20];
               unidad: string[20];
               ttx: string[50];
               DirTx: string[250];
               dirGenericos: string[250];
               dirBuzon: string[250];
               GuardarBdTx: string[1];
               descripcion: string[50];
              end;
  RecCategorias = Record
                  categoria: string[50];
                  activa: boolean;
                  end;
  aux   = record
          CODE:longword;
          clave: longword;
          categoria: string[50];
          tipotx: string[50];
          caso: string[20];
          aplicadopor: string[50];
          grupo: string[20];
          unidad: string[20];
          activa: integer;
          end;
  paux = ^Aux;

  datos = record
       origen: boolean;
       fecha: array [1..40] of char;
       duracion: array [1..20] of char;
       sentido: char;
       llamador: array [1..20] of char;
       llamado: array[1..20] of char;
       idcategoria: longint;
       idtipotx: longint;
       tema: array [1..50] of char;
       dsa: array [1..50] of char;
       tipocaptura : longint;
       itdestino: longint;
       multiplex: longint;
       itorigen: longint;
    end;
  pdatos= ^datos;

  T1 = class(TThread)
  private
    { Private declarations }

    procedure UpdateCaption;
    procedure updateListBox;
    procedure updateError;
    procedure apagaError;
    procedure ActualizaDirectorioSalva;
    procedure ActualizaEstadisticas;
    procedure ActualizaErrorEstadisticas(causa:string;llamado:string;llamador:string);
    procedure ActualizaClavesEstadisticas;
    procedure ActualizaDirectorioGenericos;
    procedure ActualizaDirectorioBuzon(k: integer);
    procedure ActualizaDirectorioDestino(k: integer);
    procedure ActualizaDirectorioTx(k:integer);
  protected
    procedure Execute; override;
  end;
var
   usarclave: boolean;
   grupos: array[0..maxGrupos] of RecGrupos;
   categorias: array[1..maxCategorias] of RecCategorias;
   PCOrigen: string[50];
   descripcion: string[20];
   RutaOrigen: string[250];
   Mascara: string[20];
  dirArbol: string[250];
 DirActual: string[250];
 CrearArbol: string[1];
 rutaDestino: string[250];
 rutaGenericos: string[250];
    DirSalva: string[250];
    DirGenericos: string[250];
    DirBuzon: string[250];
    DirDestino: string[250];
    DirTx: string[250];
   cdadGrupos: integer;
   usarDirTx: string[1];
   GuardarBdTx: string[1];
   Guardarclave: string[1];
   alarma : integer;
   fichero,ficherodatos: string[250];
   datostx: datos;
   datosaux: aux;
   dp: pdatos;
   ap: paux;
   filein: TMemoryStream;
   cdor,cdor1:longint;
   error: boolean;
   k: integer;
   i: integer;
   cad1: string;
   FueradeFecha : boolean;
   ff: int64;
   GR: TSearchRec;
  iFileHandle: LongInt;
  iFileLength: LongInt;
  iBytesRead: LongInt;
  iBytesWrite: LongInt;
  Buffer: PChar;
  result: boolean;
  inicio: Tdatetime;
  fin: Tdatetime;
  iniciobuzon: TDateTime;
  finbuzon: TDateTime;
  cdad1: int64;
  genericos:int64;
  cdadrx:LongInt;
  cad: string;
  llamado: string;
  llamador: string;
  clave: integer;
  chequeo: string;
  multiplex: integer;
  canal: integer;
  captura: string;
  clavita, zonita : string;
  porzona: boolean;
  BCommand : TmySQLQuery;
  ACommand : TmySQLQuery;
  format: string;
  dt: string;
  fileprub: TMemoryStream;
implementation

{ Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure T1.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{ T1 }
uses
   DespTotalMain, DespDM;

procedure T1.ActualizaDirectorioSalva; // Busca si existe el árbol de directorio y lo crea si es necesario
var
   dd,mm,yy: word;
   dia: string[10];
   mes: string[10];
   ano: string[10];
begin
if (CrearArbol='s') and (DirArbol<>'') then
 begin
 DecodeDate(now,yy,mm,dd);
 dia:= inttostr(dd);
 case mm of
    1: mes:='enero';
    2: mes:='febrero';
    3: mes:='marzo';
    4: mes:='abril';
    5: mes:='mayo';
    6: mes:='junio';
    7: mes:='julio';
    8: mes:='agosto';
    9: mes:='septiembre';
    10: mes:='octubre';
    11: mes:='noviembre';
    12: mes:='diciembre';
  end;
  ano:= inttostr(yy);

  DirSalva:=dirArbol+'\'+ano+'\'+mes+'\'+dia+'\'+descripcion;
  ForceDirectories(DirSalva);
  end
else DirSalva:='';
end;

procedure T1.ActualizaDirectorioGenericos; // Busca si existe el árbol de directorio y lo crea si es necesario
var
   dd,mm,yy: word;
   dia: string[10];
   mes: string[10];
   ano: string[10];
begin
  DecodeDate(now,yy,mm,dd);
  dia:= inttostr(dd);
  case mm of
    1: mes:='enero';
    2: mes:='febrero';
    3: mes:='marzo';
    4: mes:='abril';
    5: mes:='mayo';
    6: mes:='junio';
    7: mes:='julio';
    8: mes:='agosto';
    9: mes:='septiembre';
    10: mes:='octubre';
    11: mes:='noviembre';
    12: mes:='diciembre';
  end;
  ano:= inttostr(yy);
  if rutaGenericos='' then  rutaGenericos:=rutaOrigen+'\Genericos';
  DirGenericos:=rutaGenericos+'\'+ano+'\'+mes+'\'+dia+'\'+descripcion+'\'+datosaux.aplicadopor;
  ForceDirectories(DirGenericos);
end;

procedure T1.ActualizaDirectorioTx(k:integer); // Busca si existe el árbol de directorio y lo crea si es necesario
var
   dd,mm,yy: word;
   dia: string[10];
   mes: string[10];
   ano: string[10];
begin
  DecodeDate(now,yy,mm,dd);
  dia:= inttostr(dd);
  case mm of
    1: mes:='enero';
    2: mes:='febrero';
    3: mes:='marzo';
    4: mes:='abril';
    5: mes:='mayo';
    6: mes:='junio';
    7: mes:='julio';
    8: mes:='agosto';
    9: mes:='septiembre';
    10: mes:='octubre';
    11: mes:='noviembre';
    12: mes:='diciembre';
  end;
  ano:= inttostr(yy);
if grupos[k].DirTx<>'' then
  begin
  DirTx:=grupos[k].DirTx;
  ForceDirectories(DirTx);
  end
else
if rutaDestino<>'' then  begin
  DirTx:=rutadestino;
  ForceDirectories(DirTx);
  end
else
   DirTx:='';
end;

procedure T1.ActualizaDirectorioBuzon(k: integer); // Busca si existe el árbol de directorio y lo crea si es necesario
var
   dd,mm,yy: word;
   dia: string[10];
   mes: string[10];
   ano: string[10];
begin
  DecodeDate(now,yy,mm,dd);
  dia:= inttostr(dd);
  case mm of
    1: mes:='enero';
    2: mes:='febrero';
    3: mes:='marzo';
    4: mes:='abril';
    5: mes:='mayo';
    6: mes:='junio';
    7: mes:='julio';
    8: mes:='agosto';
    9: mes:='septiembre';
    10: mes:='octubre';
    11: mes:='noviembre';
    12: mes:='diciembre';
  end;
  ano:= inttostr(yy);
  if grupos[k].dirBuzon<>'' then  begin
  DirBuzon:=grupos[k].dirBuzon+'\'+ano+'\'+mes+'\'+dia+'\'+grupos[k].grupo+'\'+datosaux.caso+'\'+inttostr(datosaux.clave);
//    DirBuzon:=grupos[k].dirBuzon;
    ForceDirectories(DirBuzon);
  end
  else DirBuzon:='';
end;

procedure T1.ActualizaDirectorioDestino(k: integer); // Busca si existe el árbol de directorio y lo crea si es necesario
var
   dd,mm,yy: word;
   dia: string[10];
   mes: string[10];
   ano: string[10];
begin
  DecodeDate(now,yy,mm,dd);
  dia:= inttostr(dd);
  case mm of
    1: mes:='enero';
    2: mes:='febrero';
    3: mes:='marzo';
    4: mes:='abril';
    5: mes:='mayo';
    6: mes:='junio';
    7: mes:='julio';
    8: mes:='agosto';
    9: mes:='septiembre';
    10: mes:='octubre';
    11: mes:='noviembre';
    12: mes:='diciembre';
  end;
  ano:= inttostr(yy);
  if rutaDestino<>'' then  begin
  DirDestino:=rutadestino;
  ForceDirectories(DirDestino);
  end
  else
  if grupos[k].DirTx<>'' then
  begin
  DirDestino:=grupos[k].DirTx;
  ForceDirectories(DirDestino);
  end
  else
  DirDestino:='';
end;

procedure T1.UpdateCaption;
begin
Main.cdad1.Caption := inttostr(cdad1);
Main.gen1.Caption:=inttostr(genericos);
//Main.ffecha.Caption:=inttostr(ff);
Main.fecha1.Caption:=datetimetostr(now);
end;

procedure T1.UpdatelistBox;
begin
if main.ListBox.Lines.Count>1000 then main.ListBox.Clear;
Main.ListBox.Lines.add(cad);
end;

procedure T1.UpdateError;
begin
main.T1Error.visible:=true;
end;

procedure T1.ApagaError;
begin
main.T1Error.Visible:=false;
end;

procedure T1.ActualizaEstadisticas;
var
   dd,mm,yy: word;
   dia: string[10];
   mes: string[10];
   ano: string[10];
begin
  DecodeDate(now,yy,mm,dd);
  dia:= inttostr(dd);
  case mm of
    1: mes:='enero';
    2: mes:='febrero';
    3: mes:='marzo';
    4: mes:='abril';
    5: mes:='mayo';
    6: mes:='junio';
    7: mes:='julio';
    8: mes:='agosto';
    9: mes:='septiembre';
    10: mes:='octubre';
    11: mes:='noviembre';
    12: mes:='diciembre';
  end;
  ano:= inttostr(yy);
 try
 with DM.T1LeeEstadisticas do
   begin
   close;
   Params.ParamByName('fecha').Value := date;
   Params.ParamByName('pcOrigen').Value := pcOrigen;
   Params.ParamByName('rutaOrigen').Value := rutaOrigen;
   Params.ParamByName('aplicadopor').Value := datosaux.aplicadopor;
   open;
   end;
 except
 cad:= 'T1...Error leyendo estadísticas';
 synchronize(updateListBox);
 end;

 if main.cxEstadisticas1.DataController.DataSetRecordCount=0 then
     begin
     cdadrx:=1;
       try
       // insertar nuevo record estadisticas con cdadRx=1
        with DM.T1insertaEstadisticas do
        begin
        Params.ParamByName('fecha').Value := date;
        Params.ParamByName('pcOrigen').Value := pcOrigen;
        Params.ParamByName('rutaOrigen').Value := rutaOrigen;
        Params.ParamByName('aplicadopor').Value := datosaux.aplicadopor;
        Params.ParamByName('cdadrx').Value := cdadrx;
        execSQL;
        end;
       except
       cad:='T1...Error insertando estadísticas';
       synchronize(updateListBox);
       end;
     end
 else
     begin
     // update el record ya existente con el nuevo valor
     main.cxEstadisticas1.DataController.GotoFirst;
     cdadrx:= main.cxEstadisticas1.DataController.DataSet.FieldByName('cdadrx').AsInteger;
     inc(cdadrx);
     try
      with DM.T1updateEstadisticas do
       begin
       Params.ParamByName('id').Value := main.cxEstadisticas1.DataController.DataSet.FieldByName('id').AsInteger;;
       Params.ParamByName('cdadrx').Value := cdadrx;
       execSQL;
       end;
     except
     cad:='T1...Error update estadísticas';
     synchronize(updateListBox);
     end;
    end;

end;

procedure T1.ActualizaClavesEstadisticas;
var
   dd,mm,yy: word;
   dia: string[10];
   mes: string[10];
   ano: string[10];
begin
  DecodeDate(now,yy,mm,dd);
  dia:= inttostr(dd);
  case mm of
    1: mes:='enero';
    2: mes:='febrero';
    3: mes:='marzo';
    4: mes:='abril';
    5: mes:='mayo';
    6: mes:='junio';
    7: mes:='julio';
    8: mes:='agosto';
    9: mes:='septiembre';
    10: mes:='octubre';
    11: mes:='noviembre';
    12: mes:='diciembre';
  end;
  ano:= inttostr(yy);
 try
 with DM.T1LeeClavesEstadisticas do
   begin
   close;
   Params.ParamByName('fecha').Value := date;
   Params.ParamByName('clave').Value := datosaux.clave;
//   Params.ParamByName('unidad').Value := datosaux.unidad;
//   Params.ParamByName('grupo').Value := datosaux.grupo;
//   Params.ParamByName('aplicadopor').Value := datosaux.aplicadopor;
   open;
   end;
 except
 cad:= 'T1...Error leyendo Claves estadísticas';
 synchronize(updateListBox);
 end;

 if main.cxClavesEstadisticas1.DataController.DataSetRecordCount=0 then
     begin
     cdadrx:=1;
       try
       // insertar nuevo record estadisticas con cdadRx=1
        with DM.T1insertaClavesEstadisticas do
        begin
        Params.ParamByName('fecha').Value := date;
        Params.ParamByName('clave').Value := datosaux.clave;
        Params.ParamByName('unidad').Value := datosaux.unidad;
        Params.ParamByName('grupo').Value := datosaux.grupo;
        Params.ParamByName('estado').Value := '-';
        Params.ParamByName('aplicadopor').Value := datosaux.aplicadopor;
        Params.ParamByName('cdadrx').Value := cdadrx;
        execSQL;
        end;
       except
       cad:='T1...Error insertando estadísticas';
       synchronize(updateListBox);
       end;
     end
 else
     begin
     // update el record ya existente con el nuevo valor
     main.cxClavesEstadisticas1.DataController.GotoFirst;
     cdadrx:= main.cxClavesEstadisticas1.DataController.DataSet.FieldByName('cdadrx').AsInteger;
     inc(cdadrx);
     try
      with DM.T1updateClavesEstadisticas do
       begin
       Params.ParamByName('id').Value := main.cxClavesEstadisticas1.DataController.DataSet.FieldByName('id').AsInteger;;
       Params.ParamByName('cdadrx').Value := cdadrx;
       execSQL;
       end;
     except
     cad:='T1...Error update Claves estadísticas';
     synchronize(updateListBox);
     end;
    end;

end;

procedure T1.ActualizaErrorEstadisticas(causa:string;llamado:string;llamador:string);
var
   dd,mm,yy: word;
   dia: string[10];
   mes: string[10];
   ano: string[10];
begin
  DecodeDate(now,yy,mm,dd);
  dia:= inttostr(dd);
  case mm of
    1: mes:='enero';
    2: mes:='febrero';
    3: mes:='marzo';
    4: mes:='abril';
    5: mes:='mayo';
    6: mes:='junio';
    7: mes:='julio';
    8: mes:='agosto';
    9: mes:='septiembre';
    10: mes:='octubre';
    11: mes:='noviembre';
    12: mes:='diciembre';
  end;
  ano:= inttostr(yy);
 try
 with DM.T1LeeErrorEstadisticas do
   begin
   close;
   Params.ParamByName('fecha').Value := date;
   Params.ParamByName('tipocaptura').Value := captura;
   Params.ParamByName('causa').Value := causa;
   Params.ParamByName('llamado').Value := llamado;
   Params.ParamByName('llamador').Value := llamador;
   Params.ParamByName('clave').Value := clave;
   Params.ParamByName('multiplex').Value := multiplex;
   Params.ParamByName('canal').Value := canal;

   open;
   end;
 except
 cad:= 'T1...Error leyendo Error estadísticas';
 synchronize(updateListBox);
 end;

 if main.cxErrorEstadisticas1.DataController.DataSetRecordCount=0 then
     begin
     cdadrx:=1;
       try
       // insertar nuevo record estadisticas con cdadRx=1
        with DM.T1insertaErrorEstadisticas do
        begin
        Params.ParamByName('fecha').Value := date;
        Params.ParamByName('tipocaptura').Value := captura;
        Params.ParamByName('causa').Value := causa;
        Params.ParamByName('llamado').Value := llamado;
        Params.ParamByName('llamador').Value := llamador;
        Params.ParamByName('clave').Value := clave;
        Params.ParamByName('multiplex').Value := multiplex;
        Params.ParamByName('canal').Value := canal;
        Params.ParamByName('cdadrx').Value := cdadrx;
        execSQL;
        end;
       except
       cad:='T1...Error insertando error estadísticas';
       synchronize(updateListBox);
       end;
     end
 else
     begin
     // update el record ya existente con el nuevo valor
     main.cxErrorEstadisticas1.DataController.GotoFirst;
     cdadrx:= main.cxErrorEstadisticas1.DataController.DataSet.FieldByName('cdadrx').AsInteger;
     inc(cdadrx);
     try
      with DM.T1updateErrorEstadisticas do
       begin
       Params.ParamByName('id').Value := main.cxErrorEstadisticas1.DataController.DataSet.FieldByName('id').AsInteger;;
       Params.ParamByName('cdadrx').Value := cdadrx;
       execSQL;
       end;
     except
     cad:='T1...Error update Errorestadísticas';
     synchronize(updateListBox);
     end;
    end;

end;

procedure T1.Execute;
var
temita,fechacim,dsa,uno, nombretabla : string;
tamano : integer;
long, fechacimlongitud, i: integer;
entrada: boolean;
clav: longint;
fechahora : TDateTime; 
aplicadopor: string;
ok: boolean;
guardar: boolean;
intentos: Integer;
writeOK: Boolean;
begin
  cdad1:=0;
  genericos:=0;
  ff:=0;
  format:='ddmmyyyyhhnnsszzz';
  filein:=TMemoryStream.Create;
  fileprub:=TMemoryStream.Create;
  while not terminated do
  begin
   result:=setcurrentDir(rutaOrigen);
    if findfirst(mascara, faArchive, GR)= 0 then
    begin
      repeat
//         if fileexists(GR.Name) then
        if LowerCase(Mascara) = '*.wav' then
        begin
          try
          filein.LoadFromFile(GR.Name);
          if deletefile(GR.Name) then
             begin //pudo borrar
             buffer:=filein.Memory;
               // Obtener Footer y preparar la estadística
                if filein.Size>=(sizeof(datos)+sizeof(aux)) then
                begin  // tamano OK
                dp := ptr(longword(buffer)+filein.Size-sizeof(datos));
                ap := ptr(longword(buffer)+filein.Size-sizeof(datos)-sizeof(aux));
                move(dp^,datostx,sizeof(datos));
                move(ap^,datosaux,sizeof(aux));

                // Rellenar Footer Auxiliar
                datosaux.CODE:=$55AA4466;
                error:= false;
                llamado:= '';
                llamador:= '';
                clave:=0;
                multiplex:=0;
                canal:=0;
                captura:='Desconocida';
                //OK:=false;
                guardar:=false;
                fechacim := StringReplace(trim(datostx.fecha), '.', ':',[rfReplaceAll]);
                fechacimlongitud:=length(fechacim);
                if fechacimlongitud>40 then fechacimlongitud:=40;
                for i:=1 to 40 do datostx.fecha[i]:=#0;
                for i:=1 to fechacimlongitud do datostx.fecha[i]:=fechacim[i];

                // Determinacion del tipo de Captura y obtencion de las claves asociadas
                // Devuelve Error = True si hay problemas, para actualizar e indicar los genericos
                // Devuelve ACommand con las claves seleccionadas y el cdor la cantidad

                case datostx.tipocaptura of
                 1:begin
                   //Internacional
                   // filter := '(telefono = ' + QuotedStr(Trim(llamadostr)) + ') OR ';
                   // filter := filter + '(telefono = ' + QuotedStr(Trim(llamadorstr)) + ')';
                   //OK:=true;
                   // filter := filter + '(telefono = ' + QuotedStr(Trim(llamadorstr)) + ')';
                   DM.T1Captura1.Active:=false;
                   DM.T1SourceCaptura.DataSet:=DM.T1Captura1;
                   main.cxTableView1.DataController.DataSource:=DM.T1SourceCaptura;
                   llamado:= trim(datostx.llamado);
                   llamador:= trim(datostx.llamador);
                   captura:='Inter(1)';
                        with DM.T1Captura1 do
                        begin
                         Params.ParamByName('llamado').Value := llamado;
                         Params.ParamByName('llamador').Value := llamador;
                         open;
                        end;
                        cdor:=main.cxTableView1.DataController.DataSetRecordCount;
                        if cdor = 0 then
                        begin
                        error:=true;
                        datosaux.aplicadopor:='NoAplicado';
                        guardar:=true;
                        end;
                   end;

                 2:begin
                   //Multiplex-Canal
                   // filter := '(multiplex = ' + IntToStr(datostx.multiplex) + ') AND ';
                   // filter := filter + '(canal = ' + IntToStr(datostx.itorigen) + ')';
                   //OK:=true;
                   if (datostx.multiplex = 0) then  datostx.multiplex := 987;
                   DM.T1Captura2.Active:=false;
                   DM.T1SourceCaptura.DataSet:=DM.T1Captura2;
                   main.cxTableView1.DataController.DataSource:=DM.T1SourceCaptura;

                   multiplex:=datostx.multiplex;
                   canal:=datostx.itorigen;
                   captura:='Multiplex(2)';
                   with DM.T1Captura2 do
                     begin
                     Params.ParamByName('multiplex').Value := datostx.multiplex;
                     Params.ParamByName('canal').Value := datostx.itorigen;
                     open;
                     end;
                   cdor:=main.cxTableView1.DataController.DataSetRecordCount;
                   if cdor = 0 then
                        begin
                        error:=true;
                        datosaux.aplicadopor:='NoAplicado';
                        guardar:=true;
                        end;
                   end;

                 3:begin
                   // Ericcson/Alcatel
                   // filter := '(telefono = ' + QuotedStr(Trim(llamadostr)) +  ') OR ';
                   // filter := filter + '(telefono = ' + QuotedStr(Trim(llamadorstr))  + ') OR ';
                   // filter := filter + '(telefono = ' + QuotedStr(Trim(dsastr))  + ') OR ';
                   // if Trim(temastr) = '' then
                   //   filter := filter + '(clave = 0)'
                   // else
                   //   filter := filter + '(clave = ' + Trim(temastr) + ')';
                   //OK:=true;
                   // select * from `claves` where (activa = 1) AND (estado = 'aplicada') AND (clave = :clave)  order by clave
                   DM.T1Captura3.Active:=false;
                   DM.T1SourceCaptura.DataSet:=DM.T1Captura3;
                   main.cxTableView1.DataController.DataSource:=DM.T1SourceCaptura;

                   llamado:= trim(datostx.llamado);
                   llamador:= trim(datostx.llamador);
                   if llamador='' then llamador:= trim(datostx.dsa);
                   if llamado='' then llamado:= trim(datostx.dsa);

                   temita := trim(datostx.tema);
                   if temita <> '' then
                       begin
                       if Length(temita) > 6 then
                           begin
                             tamano:= Length(temita)-6;
                             System.Delete (temita,7,tamano);
                           end;
                       try
                           clave := StrToInt(temita);
                       except
                           clave := 0;
                       end;
                       end
                       else
                       clave := 0;
                   if clave=0 then
                     captura:='Ericsson(3)'
                   else
                     captura:='Alcatel(3)';
                   DM.T1Captura3.Active:=false;
                    DM.T1Captura3.SQL.Clear;
                    DM.T1Captura3.SQL.Add('select * from `claves` where (estado = :estado) AND ((clave = :clave) OR (chequeo = :llamado) OR (chequeo = :llamador)) AND (aplicadopor <> :aplicadopor)   order by clave');
                    with DM.T1Captura3 do
                    begin
                    Params.ParamByName('clave').Value := clave;
                    if llamado <> '' then Params.ParamByName('llamado').Value := llamado
                                  else Params.ParamByName('llamado').Value := '<>';
                    if llamador <> '' then Params.ParamByName('llamador').Value := llamador
                                   else Params.ParamByName('llamador').Value := '<>';
                    Params.ParamByName('estado').Value := 'aplicada';
                    Params.ParamByName('aplicadopor').Value := 'alcatel internacional';
                    open;
                    end;

                    cdor:=main.cxTableView1.DataController.DataSetRecordCount;
                    if cdor = 0 then
                    begin
                    error:=true;
                    datosaux.aplicadopor:='NoAplicado';
                    guardar:=true;
                    end;


                   end;

                 4:begin
                   // Analogico/SGV
                   //filter := '(multiplex = 500) AND ';
                   // filter := filter + '(canal = ' + IntToStr(datostx.itdestino) + ')';
                   //OK:=true;
                   DM.T1Captura4.Active:=false;
                   DM.T1SourceCaptura.DataSet:=DM.T1Captura4;
                   main.cxTableView1.DataController.DataSource:=DM.T1SourceCaptura;
                   canal:=datostx.itdestino;
                   multiplex:=500;
                   captura:='SGV(4)';
                   with DM.T1Captura4 do
                     begin
                     Params.ParamByName('multiplex').Value := multiplex;
                     Params.ParamByName('canal').Value := canal;
                     open;
                     end;
                   cdor:=main.cxTableView1.DataController.DataSetRecordCount;
                   if cdor = 0 then
                        begin
                        error:=true;
                        datosaux.aplicadopor:='NoAplicado';
                        guardar:=true;
                        end;
                   end;

                 5:begin
                   // Celular
                   //filter := '(telefono = ' + QuotedStr(Trim(llamadostr)) +  ') OR ';
                   // filter := filter + '(telefono = ' + QuotedStr(Trim(llamadorstr))  + ') OR ';
                   // if Trim(temastr) = '' then
                   //   filter := filter + '(clave = 0)'
                   // else
                   //   filter := filter + '(clave = ' + Trim(temastr) + ')';
                   //OK:=true;
                   DM.T1Captura5.Active:=false;
                   DM.T1SourceCaptura.DataSet:=DM.T1Captura5;
                   main.cxTableView1.DataController.DataSource:=DM.T1SourceCaptura;

                   llamado:= trim(datostx.llamado);
                   llamador:= trim(datostx.llamador);
                   captura:='Celular(5)';
                   with DM.T1Captura5 do
                     begin
                    if llamado <> '' then Params.ParamByName('llamado').Value := llamado
                                  else Params.ParamByName('llamado').Value := '<>';
                    if llamador <> '' then Params.ParamByName('llamador').Value := llamador
                                   else Params.ParamByName('llamador').Value := '<>';
                     Params.ParamByName('aplicadopor').Value := 'celular';
                     open;
                     end;

                     cdor:=main.cxTableView1.DataController.DataSetRecordCount;
                     if cdor = 0 then
                       begin
                        error:=true;
                        datosaux.aplicadopor:='NoAplicado';
                        guardar:=true;
                       end;
                   end;

                 6:begin
                   // Alcatel Internacional
                   // filter := '(telefono = ' + QuotedStr(Trim(llamadostr)) +  ') OR ';
                   // filter := filter + '(telefono = ' + QuotedStr(Trim(llamadorstr))  + ') OR ';
                   // filter := filter + '(telefono = ' + QuotedStr(Trim(dsastr))  + ') OR ';
                   // if Trim(temastr) = '' then
                   //   filter := filter + '(clave = 0)'
                   // else
                   //   filter := filter + '(clave = ' + Trim(temastr) + ')';
                   //OK:=true;
                   DM.T1Captura6.Active:=false;
                   DM.T1Captura6.sql.Clear;
                   DM.T1Captura6.sql.Add('select * from `claves` where (estado = :estado) AND (aplicadopor = :aplicadopor) AND ((chequeo = :llamado) OR (chequeo = :llamador) ');
                   captura:='Internacional(6)';
                   llamado:= trim(datostx.llamado);
                   llamador:= trim(datostx.llamador);
                   if llamador='' then llamador:= trim(datostx.dsa) else
                   if llamado='' then llamado:= trim(datostx.dsa);
                   ///
                   DM.T1Captura7.close;
                   DM.T1SourceCaptura.DataSet:=DM.T1Captura7;
                   main.cxTableView1.DataController.DataSource:=DM.T1SourceCaptura;
                   DM.T1Captura7.Active:=True;
                   cdor:=main.cxTableView1.DataController.DataSetRecordCount;
                   if cdor>0 then
                   begin
                     main.cxTableView1.DataController.GotoFirst;
                     while (cdor<>0) do
                     begin
                     zonita := main.cxTableView1.DataController.Dataset.FieldbyName('zona').asstring;
                     if (Pos(zonita,llamado)= 1)  then
                     begin
                       clavita := main.cxTableView1.DataController.Dataset.FieldbyName('clave').asstring;
                       DM.T1Captura6.sql.Add('OR (clave = ' + clavita + ') ');
                     end;
                     main.cxTableView1.DataController.GotoNext;
                     dec(cdor);
                     end;

                   end;
                   ////
                   DM.T1Captura6.sql.Add(') order by clave');
                   DM.T1SourceCaptura.DataSet:=DM.T1Captura6;
                   main.cxTableView1.DataController.DataSource:=DM.T1SourceCaptura;

                   with DM.T1Captura6 do
                     begin
                     Params.ParamByName('llamado').Value := llamado;
                     Params.ParamByName('llamador').Value := llamador;
                     Params.ParamByName('aplicadopor').Value := 'alcatel internacional';
                     Params.ParamByName('estado').Value := 'aplicada';
                     open;
                     end;

                     cdor:=main.cxTableView1.DataController.DataSetRecordCount;
                   if cdor = 0 then
                        begin
                        error:=true;
                        datosaux.aplicadopor:='NoAplicado';
                        guardar:=true;
                        end;

                   end

                 else
                     begin
                     error:=true;
                     guardar:=true;
                     datosaux.aplicadopor:='TipoCapturaDesconocido';
                     end;
                end;
              if error then
                begin
                error:=false;
                if guardar then
                begin
                try
                 actualizaDirectorioGenericos;
                 filein.SaveToFile(DirGenericos+'\'+GR.Name);
                except
                cad:='T1...Error escribiendo:'+DirGenericos+'\'+GR.Name;
                synchronize(updateListBox);
                error:=true;
                end;
                end;
                inc(genericos);
                actualizaEstadisticas;
                actualizaErrorEstadisticas(datosaux.aplicadopor,llamado,llamador);
                end
              else
              begin    // NO ERROR
              main.cxTableView1.DataController.GotoFirst;
              while (cdor<>0) and (not error) do
                begin
                datosaux.activa:=main.cxTableView1.DataController.DataSet.FieldByName('activa').AsInteger;
                if datosaux.activa=1 then
                begin
                datosaux.clave:= main.cxTableView1.DataController.DataSet.FieldByName('clave').AsInteger;
                datosaux.caso:= main.cxTableView1.DataController.DataSet.FieldByName('caso').AsString;
                datosaux.categoria:= categorias[datostx.idcategoria].categoria;
                datosaux.tipotx:= main.cxTableView1.DataController.DataSet.FieldByName('tipotx').AsString;
                datosaux.aplicadopor:= main.cxTableView1.DataController.DataSet.FieldByName('aplicadopor').AsString;
                datosaux.grupo:= main.cxTableView1.DataController.DataSet.FieldByName('grupo').AsString;
                datosaux.unidad:= main.cxTableView1.DataController.DataSet.FieldByName('unidad').AsString;
                move(datosaux,ap^,sizeof(aux));
                if (datostx.tipocaptura=2)  or (datostx.tipocaptura=4)  then
                   begin
                   cad:= main.cxTableView1.DataController.DataSet.FieldByName('chequeo').AsString;
                   long:=length(cad);
                   if long>19 then long:=19;
                   if datostx.sentido='E' then
                      begin
                      for i:=1 to 20 do datostx.llamado[i]:=#0;
                      for i:=1 to long do datostx.llamado[i]:=cad[i];
                      end
                   else
                      begin
                      for i:=1 to 20 do datostx.llamador[i]:=#0;
                      for i:=1 to long do datostx.llamador[i]:=cad[i];
                      end;
                   move(datostx,dp^,sizeof(datos));
                   end;
                 //preguntar si está en fecha
                //fichero:=Gr.name;
                k:=0;
                while (k<cdadgrupos) and  not ((grupos[k].grupo=datosaux.grupo) and (grupos[k].unidad=datosaux.unidad)) do inc(k);
                if k<cdadgrupos then
                   begin
                   //datetimetostring(dt,format,now);
                   if (Guardarclave='s') then fichero:=inttostr(datosaux.clave)+'_'+Gr.name
                                      else fichero:=Gr.name;
                   // Copiando a Buzon
                   if main.cxTableView1.DataController.DataSet.FieldByName('buzon').AsInteger = 1 then
                    begin
                    iniciobuzon:=main.cxTableView1.DataController.DataSet.FieldByName('iniciobuzon').Asdatetime;
                    finbuzon:=main.cxTableView1.DataController.DataSet.FieldByName('finbuzon').Asdatetime;
                    if (now>=iniciobuzon) and (now<=finbuzon) then
                      begin
                      // poner en buzon del grupo \grupo\caso\clave
                      actualizaDirectorioBuzon(k);
                      if dirBuzon<>'' then
                         begin
                         cad:= datosaux.aplicadopor;
                         datosaux.aplicadopor:='EnviadoaBuzon';
                         try
                         // verificar que hacer si ya existe...
                         filein.SaveToFile(DirBuzon+'\'+fichero);
                         actualizaClavesEstadisticas;
                         except
                         cad:='T1...Error escribiendo:'+DirBuzon+'\'+fichero;
                         synchronize(updateListBox);
                         error:=true;
                         datosaux.aplicadopor:=cad;
                         actualizaErrorEstadisticas('BuzonWriteError',inttostr(datosaux.clave),datosaux.unidad);
                         //break;
                         end;
                         datosaux.aplicadopor:=cad;
                         end
                      else begin
                           cad:='T1...No hay buzón para enviar el file:'+fichero;
                           synchronize(updateListBox);
                          // error:=true;
                           actualizaErrorEstadisticas('NoExisteBuzon',inttostr(datosaux.clave),datosaux.unidad);
                           //break;
                           end;  // dirbuzon<>''
                      end;//inicioBuzon<=finbuzon
                    end;  // si enviar a buzon =1

                    // Trabajo con las Transmisiones
                    if (UsarDirTx<>'s')  then  //utilizar directorio destino
                    begin
                      actualizaDirectorioDestino(k);
                       if dirDestino<>'' then
                       begin
                     if not FileExists(DirDestino+'\'+fichero) then
                     begin
                        if (GuardarBdtx='s') and (grupos[k].GuardarBdTx ='s')  then //and (main.CxFicheroView.DataController.DataSetRecordCount=0) then
                             try
                             DM.T1insertaTtx.SQL.Strings[1]:='`'+grupos[k].ttx+'`';
                              // insertar nuevo ttx
                                with DM.T1insertaTtx do
                                begin
                                Params.ParamByName('clave').Value := main.cxTableView1.DataController.DataSet.FieldByName('clave').AsInteger;
                                Params.ParamByName('fecha').Value := strtodatetime(trim(datostx.fecha));
                                Params.ParamByName('duracion').Value := trim(datostx.duracion);
                                Params.ParamByName('sentido').Value := trim(datostx.sentido);
                                Params.ParamByName('llamador').Value := trim(datostx.llamador);
                                Params.ParamByName('llamado').Value := trim(datostx.llamado);
                                Params.ParamByName('categoria').Value := 'Sin Categoria';
                                Params.ParamByName('tipotx').Value :=datosaux.tipotx ;
                                Params.ParamByName('tema').Value := trim(datostx.tema);
                                Params.ParamByName('dsa').Value :=trim(datostx.dsa) ;
                                Params.ParamByName('fichero').Value :=DirDestino+'\'+fichero ;
                                execSQL;
                                end;
                              actualizaClavesEstadisticas;
                             except
                             end;
                        try
                           filein.SaveToFile(DirDestino+'\'+fichero);
                        except
                              cad:='T1...Error escribiendo:'+DirDestino+'\'+fichero;
                              synchronize(updateListBox);
                              error:=true;
                              actualizaErrorEstadisticas('DestinosWriteError',datosaux.unidad,datosaux.grupo);
                        end;
                        if not error then
                           begin
                              if cdor=1 then
                                begin
                                inc(cdad1);
                                actualizaEstadisticas;
                                end;
                           end;

                    end;   //si file not exists
                    end
                       else
                       begin
                         cad:='T1...No hay Destino para enviar el file:'+fichero;
                         synchronize(updateListBox);
                         error:=true;
                         actualizaErrorEstadisticas('NoExisteDirDestino',datosaux.grupo,grupos[k].ttx);
                       end;
                    end // utilizar directorio destino
                 else
                   begin
                   // Buscar el directorio Ttx del grupo
                   // Forcedirectories(dirttx)
                   // Copiar aqui el fichero
                   actualizaDirectorioTx(k);
                   if dirTx<>'' then
                       begin
                       if not FileExists(DirTx+'\'+fichero) then
                       begin
                        if (GuardarBdtx='s') and (not error) and (grupos[k].GuardarBdTx ='s') then //and (main.CxFicheroView.DataController.DataSetRecordCount=0) then
                              try
                              DM.T1insertaTtx.SQL.Strings[1]:='`'+grupos[k].ttx+'`';
                              // insertar nuevo ttx
                               with DM.T1insertaTtx do
                                begin
                                Params.ParamByName('clave').Value := main.cxTableView1.DataController.DataSet.FieldByName('clave').AsInteger;
                                Params.ParamByName('fecha').Value := strtodatetime(trim(datostx.fecha));
                                Params.ParamByName('duracion').Value := trim(datostx.duracion);
                                Params.ParamByName('sentido').Value := trim(datostx.sentido);
                                Params.ParamByName('llamador').Value := trim(datostx.llamador);
                                Params.ParamByName('llamado').Value := trim(datostx.llamado);
                                Params.ParamByName('categoria').Value := 'Sin Categoria';
                                Params.ParamByName('tipotx').Value :=datosaux.tipotx ;
                                Params.ParamByName('tema').Value := trim(datostx.tema);
                                Params.ParamByName('dsa').Value :=trim(datostx.dsa) ;
                                Params.ParamByName('fichero').Value :=DirTx+'\'+fichero ;
                                execSQL;
                                end;
                               actualizaClavesEstadisticas;
                              except
                              end;
                        try
                          filein.SaveToFile(DirTx+'\'+fichero);
                        except
                          cad:='T1...Error escribiendo:'+DirTx+'\'+fichero;
                          synchronize(updateListBox);
                          error:=true;
                          actualizaErrorEstadisticas('DirTxWriteError',datosaux.unidad,datosaux.grupo);
                        end;
                        if not error then
                          begin
                          if cdor=1 then
                             begin
                             inc(cdad1);
                             actualizaEstadisticas;
                             end;
                          end;
                       end;
                       end
                    else begin
                         cad:='T1...No hay dirTX para enviar el file:'+fichero;
                         synchronize(updateListBox);
                         error:=true;
                         actualizaErrorEstadisticas('NoExisteDirTx',datosaux.grupo,grupos[k].ttx);
                         break;
                         end;

                   end;

                   // Trabajo con la salva
                   ActualizaDirectorioSalva;
                   if DirSalva<>'' then
                   try
                   // verificar que hacer si ya existe...
                    filein.SaveToFile(DirSalva+'\'+fichero);
                   except
                    cad:='T1...Error escribiendo:'+DirSalva+'\'+fichero;
                    synchronize(updateListBox);
                    error:=true;
                   end;
                 end
                else
                   begin
                     // Procesar como generico que pertenece a un grupo inexistente
                  // datetimetostring(dt,format,now);
                     datosaux.aplicadopor:='FueradeGrupo';
                     actualizaDirectorioGenericos;
                     try
                     filein.SaveToFile(DirGenericos+'\'+gr.Name);
                     except
                     cad:='T1...Error escribiendo:'+DirGenericos+'\'+gr.Name;
                     synchronize(updateListBox);
                     error:=true;
                     end;
                     if not error then
                        begin
                        inc(genericos);
                        actualizaEstadisticas;
                        actualizaClavesEstadisticas;
                        end;
                   end;
                 end; // si Activa
                main.cxTableView1.DataController.GotoNext;
                dec(cdor);
                end;
             end; // not error
               if not error then
               begin
                 synchronize(updateCaption);
               end
               else
               begin
                 synchronize(updateError);
               end;
           end; // tamano OK
           filein.Clear;
           fileprub.Clear;
          end  // pudo borrar
          else
           begin // no pudo borrar
            filein.clear;
            fileprub.Clear;
           end;
         except  //try
           filein.clear;
           fileprub.Clear;
         end;
        end
        else   //if not .wav
        begin
          if LowerCase(Mascara) = '*.ini' then
          begin
            error:= false;
            llamado:= '';
            llamador:= '';
            ficherodatos := '';
            clave:=0;
            multiplex:=0;
            canal:=0;
            captura:='Desconocida';
            //OK:=false;
            guardar:=false;

            with tinifile.create (rutaOrigen+'\'+GR.name) do
            begin
              try
                //ReadSections(Main.ListBox.Lines);
                if SectionExists('SMS') then
                begin
                  for i:=1 to Length(datostx.llamador) do datostx.llamador[i]:=#0;
                  for i:=1 to Length(datostx.llamado) do datostx.llamado[i]:=#0;
                  for i:=1 to Length(datostx.fecha) do datostx.fecha[i]:=#0;
                  for i:=1 to Length(datostx.duracion) do datostx.duracion[i]:=#0;
                  for i:=1 to Length(datostx.tema) do datostx.tema[i]:=#0;
                  for i:=1 to Length(datostx.dsa) do datostx.dsa[i]:=#0;

                  llamador := Trim(ReadString('SMS', 'origen', ''));
                  for i:=1 to Length(llamador) do datostx.llamador[i]:=llamador[i];
                  llamado := Trim(ReadString('SMS', 'destino', ''));
                  for i:=1 to Length(llamado) do datostx.llamado[i]:=llamado[i];
                  fechacim := trim(ReadString('SMS', 'fecha hora', ''));
                  uno := Copy(fechacim,5,2)+'/'+ Copy(fechacim,7,2)+'/'+ Copy(fechacim,1,4)+' '+Copy(fechacim,10,2)+':'+Copy(fechacim,12,2)+':'+Copy(fechacim,14,2);
                  for i:=1 to Length(uno) do datostx.fecha[i]:=uno[i];
                  dsa := Trim(ReadString('SMS', 'mensaje', ''));
                  for i:=1 to Length(dsa) do datostx.dsa[i]:=dsa[i];
                  datostx.tipocaptura := 10;
                  ficherodatos := gr.name;
                  dm.qrylistatablassms.open;
                  if dm.qrylistatablassms.recordcount = 0 then
                  begin
                    with DM.unsql1 do
                    begin
                      SQL.Clear;
                      fechahora := now;
                      nombretabla := FormatDateTime('"SMS"ddmmyyyyhhmmss', fechahora);
                      SQL.Add('create table `'+ nombretabla + '` like`sms plantilla`;');

                      SQL.Add('insert into tablas (nombre, fechahora_inicio) values ('+QuotedStr(nombretabla)+','+':fechahora);');
                      Params.ParamByName('fechahora').Value := fechahora;

                      SQL.Add('insert into `'+ nombretabla +'` (numorigen, numdestino, fechahora, mensaje) values (:numorigen,:numdestino,:fechamensaje,:mensaje);');
                      Params.ParamByName('numorigen').Value := llamador;
                      Params.ParamByName('numdestino').Value := llamado;
                      Params.ParamByName('fechamensaje').Value := StrToDateTime(uno);
                      Params.ParamByName('mensaje').Value := dsa;
                      Execute;
                    end;
                  end
                  else
                  begin
                    dm.qrylistatablassms.Last;
                    if DaysBetween(now, dm.qrylistatablassms.fieldbyname('fechahora_inicio').asDateTime) >= 3 then
                    begin
                      with DM.unsql1 do
                      begin
                        SQL.Clear;
                        fechahora := now;
                        nombretabla := FormatDateTime('"SMS"ddmmyyyyhhmmss', fechahora);
                        SQL.Add('update tablas set fechahora_final=:fechahora where consecutivo = :id;');
                        Params.ParamByName('fechahora').Value := fechahora;
                        Params.ParamByName('id').Value := dm.qrylistatablassms.fieldbyname('consecutivo').asInteger;

                        SQL.Add('create table if not exists`'+ nombretabla + '` like`sms plantilla`;');

                        SQL.Add('insert into tablas (nombre, fechahora_inicio) values ('+QuotedStr(nombretabla)+','+':fechahora);');
                        Params.ParamByName('fechahora').Value := fechahora;

                        SQL.Add('insert into `'+ nombretabla +'` (numorigen, numdestino, fechahora, mensaje) values (:numorigen,:numdestino,:fechamensaje,:mensaje);');
                        Params.ParamByName('numorigen').Value := llamador;
                        Params.ParamByName('numdestino').Value := llamado;
                        Params.ParamByName('fechamensaje').Value := StrToDateTime(uno);
                        Params.ParamByName('mensaje').Value := dsa;
                        Execute;
                      end;
                    end
                    else
                    begin
                      with DM.unsql1 do
                      begin
                        SQL.Clear;
                        fechahora := now;
                        nombretabla := dm.qrylistatablassms.fieldbyname('nombre').AsString;

                        SQL.Add('insert into `'+ nombretabla +'` (numorigen, numdestino, fechahora, mensaje) values (:numorigen,:numdestino,:fechamensaje,:mensaje);');
                        Params.ParamByName('numorigen').Value := llamador;
                        Params.ParamByName('numdestino').Value := llamado;
                        Params.ParamByName('fechamensaje').Value := StrToDateTime(uno);
                        Params.ParamByName('mensaje').Value := dsa;
                        Execute;
                      end ;
                    end;
                  end;
                  dm.qrylistatablassms.Close;
                end
                else
                begin
                end;
                finally
                  Free;
                end;
              end;

              try
                filein.LoadFromFile(ficherodatos);
                if FileExists(ficherodatos) then
                begin 
                  if deletefile(ficherodatos) then
                  begin //pudo borrar

                    case datostx.tipocaptura of
                       10:begin
                           //OK:=true;
                           DM.T1Captura10.Active:=false;
                           DM.T1SourceCaptura.DataSet:=DM.T1Captura10;
                           main.cxTableView1.DataController.DataSource:=DM.T1SourceCaptura;
                           //llamado:= trim(datostx.llamado);
                           //llamador:= trim(datostx.llamador);
                           captura:='KTSMS';
                           with DM.T1Captura10 do
                           begin
                             Params.ParamByName('llamado').Value  := llamado;
                             Params.ParamByName('llamador').Value := llamador;
                             open;
                            end;
                           cdor:=main.cxTableView1.DataController.DataSetRecordCount;
                           if cdor = 0 then
                           begin
                             error:=true;
                             datosaux.aplicadopor:='NoAplicado';
                             guardar:=true;
                           end;
                         end
                         else
                         begin
                           error:=true;
                           guardar:=true;
                           datosaux.aplicadopor:='TipoCapturaDesconocido';
                         end;
                    end;
                    if error then
                    begin
                        error:=false;
                        if guardar then
                        begin
                        {try
                         actualizaDirectorioGenericos;
                         filein.SaveToFile(DirGenericos+'\'+ficherodatos);
                        except
                        cad:='T10...Error escribiendo:'+DirGenericos+'\'+ficherodatos;
                        synchronize(updateListBox);
                        error:=true;
                        end;}
                        end;
                        inc(genericos);
                        //actualizaEstadisticas;
                        //actualizaErrorEstadisticas(datosaux.aplicadopor,inttostr(datostx.tipocaptura),'');
                    end
                    else
                    begin    // NO ERROR
                      main.cxTableView1.DataController.GotoFirst;
                      while (cdor<>0) and (not error) do
                      begin
                        datosaux.activa:=main.cxTableView1.DataController.DataSet.FieldByName('activa').AsInteger;
                        if datosaux.activa=1 then
                        begin
                          datosaux.clave:= main.cxTableView1.DataController.DataSet.FieldByName('clave').AsInteger;
                          datosaux.caso:= main.cxTableView1.DataController.DataSet.FieldByName('caso').AsString;
                          datosaux.categoria:= categorias[datostx.idcategoria].categoria;
                          datosaux.tipotx:= main.cxTableView1.DataController.DataSet.FieldByName('tipotx').AsString;
                          datosaux.aplicadopor:= main.cxTableView1.DataController.DataSet.FieldByName('aplicadopor').AsString;
                          datosaux.grupo:= main.cxTableView1.DataController.DataSet.FieldByName('grupo').AsString;
                          datosaux.unidad:= main.cxTableView1.DataController.DataSet.FieldByName('unidad').AsString;
                          //move(datosaux,ap^,sizeof(aux));

                           //preguntar si está en fecha
                          //fichero:=ficherodatos;
                          k:=0;
                          while (k<cdadgrupos) and  not ((grupos[k].grupo=datosaux.grupo) and (grupos[k].unidad=datosaux.unidad)) do inc(k);
                          if k<cdadgrupos then
                          begin
                           //datetimetostring(dt,format,now);
                           if (Guardarclave='s') then
                             fichero:=inttostr(datosaux.clave)+'_'+ficherodatos
                           else
                             fichero:=ficherodatos;
                           // Copiando a Buzon
                           if main.cxTableView1.DataController.DataSet.FieldByName('buzon').AsInteger = 1 then
                            begin
                            iniciobuzon:=main.cxTableView1.DataController.DataSet.FieldByName('iniciobuzon').Asdatetime;
                            finbuzon:=main.cxTableView1.DataController.DataSet.FieldByName('finbuzon').Asdatetime;
                            if (now>=iniciobuzon) and (now<=finbuzon) then
                              begin
                                // poner en buzon del grupo \grupo\caso\clave
                                actualizaDirectorioBuzon(k);
                                if dirBuzon<>'' then
                                begin
                                   cad:= datosaux.aplicadopor;
                                   datosaux.aplicadopor:='EnviadoaBuzon';
                                   try
                                     // verificar que hacer si ya existe...
                                     filein.SaveToFile(DirBuzon+'\'+fichero);
                                     actualizaClavesEstadisticas;
                                   except
                                     cad:='T10...Error escribiendo:'+DirBuzon+'\'+fichero;
                                     synchronize(updateListBox);
                                     error:=true;
                                     datosaux.aplicadopor:=cad;
                                     actualizaErrorEstadisticas('BuzonWriteError',inttostr(datosaux.clave),datosaux.unidad);
                                     //break;
                                   end;
                                   datosaux.aplicadopor:=cad;
                                end
                                else
                                begin
                                   cad:='T10...No hay buzón para enviar el file:'+fichero;
                                   synchronize(updateListBox);
                                   // error:=true;
                                   actualizaErrorEstadisticas('NoExisteBuzon',inttostr(datosaux.clave),datosaux.unidad);
                                   //break;
                                end;  // dirbuzon<>''
                              end;//inicioBuzon<=finbuzon
                            end;  // si enviar a buzon =1

                            // Trabajo con las Transmisiones
                           if (UsarDirTx<>'s')  then  //utilizar directorio destino
                            begin
                              actualizaDirectorioDestino(k);
                               if dirDestino<>'' then
                               begin
                                 if (GuardarBdtx='s') and (grupos[k].GuardarBdTx ='s')  then //and (main.CxFicheroView.DataController.DataSetRecordCount=0) then
                                  begin
                                   try
                                   DM.T1insertaTtx.SQL.Strings[1]:='`'+grupos[k].ttx+'`';
                                    // insertar nuevo ttx
                                      with DM.T1insertaTtx do
                                      begin
                                        Params.ParamByName('clave').Value := main.cxTableView1.DataController.DataSet.FieldByName('clave').AsInteger;
                                        Params.ParamByName('fecha').Value := strtodatetime(trim(datostx.fecha));
                                        Params.ParamByName('duracion').Value := trim(datostx.duracion);
                                        if main.cxTableView1.DataController.DataSet.FieldByName('chequeo').AsString = trim(datostx.llamador) then
                                        begin
                                          datostx.sentido := 'S'
                                        end
                                        else
                                        begin
                                          datostx.sentido := 'N'
                                        end;
                                        Params.ParamByName('sentido').Value := trim(datostx.sentido);
                                        Params.ParamByName('llamador').Value := trim(datostx.llamador);
                                        Params.ParamByName('llamado').Value := trim(datostx.llamado);
                                        Params.ParamByName('categoria').Value := 'Sin Categoria';
                                        Params.ParamByName('tipotx').Value :='SMS';
                                        Params.ParamByName('tema').Value := trim(datostx.tema);
                                        Params.ParamByName('dsa').Value :=trim(datostx.dsa) ;
                                        Params.ParamByName('fichero').Value :=DirDestino+'\'+fichero ;
                                        execSQL;
                                      end;
                                    actualizaClavesEstadisticas;
                                   except
                                   end;
                                  end;
                                 try
                                    filein.SaveToFile(DirDestino+'\'+fichero);
                                 except
                                    cad:='T10...Error escribiendo:'+DirDestino+'\'+fichero;
                                    synchronize(updateListBox);
                                    error:=true;
                                    actualizaErrorEstadisticas('DestinosWriteError',datosaux.unidad,datosaux.grupo);
                                 end;
                                 if not error then
                                    begin
                                    if cdor=1 then
                                      begin
                                      inc(cdad1);
                                      actualizaEstadisticas;
                                      end;
                                    end;
                               end
                               else
                               begin
                                 cad:='T10...No hay Destino para enviar el file:'+fichero;
                                 synchronize(updateListBox);
                                 error:=true;
                                 actualizaErrorEstadisticas('NoExisteDirDestino',datosaux.grupo,grupos[k].ttx);
                               end;
                            end // utilizar directorio destino
                           else
                           begin
                             // Buscar el directorio Ttx del grupo
                             // Forcedirectories(dirttx)
                             // Copiar aqui el fichero
                             actualizaDirectorioTx(k);
                             if dirTx<>'' then
                             begin
                               if (GuardarBdtx='s') and (not error) and (grupos[k].GuardarBdTx ='s') then //and (main.CxFicheroView.DataController.DataSetRecordCount=0) then
                               begin
                                try
                                  DM.T1insertaTtx.SQL.Strings[1]:='`'+grupos[k].ttx+'`';
                                  // insertar nuevo ttx
                                  with DM.T1insertaTtx do
                                  begin
                                    Params.ParamByName('clave').Value := main.cxTableView1.DataController.DataSet.FieldByName('clave').AsInteger;
                                    //uno := datetimetostr(now);
                                    Params.ParamByName('fecha').Value := strtodatetime(trim(datostx.fecha));
                                    Params.ParamByName('duracion').Value := trim(datostx.duracion);
                                    if main.cxTableView1.DataController.DataSet.FieldByName('chequeo').AsString = trim(datostx.llamador) then
                                    begin
                                      datostx.sentido := 'S'
                                    end
                                    else
                                    begin
                                      datostx.sentido := 'E'
                                    end;
                                    Params.ParamByName('sentido').Value := trim(datostx.sentido);
                                    Params.ParamByName('llamador').Value := trim(datostx.llamador);
                                    Params.ParamByName('llamado').Value := trim(datostx.llamado);
                                    Params.ParamByName('categoria').Value := 'Sin Categoria';
                                    Params.ParamByName('tipotx').Value :='SMS';
                                    Params.ParamByName('tema').Value := trim(datostx.tema);
                                    Params.ParamByName('dsa').Value :=trim(datostx.dsa) ;
                                    Params.ParamByName('fichero').Value :=DirTx+'\'+fichero ;
                                    execSQL;
                                  end;
                                  actualizaClavesEstadisticas;
                                except
                                end;
                               end;
                               try
                                 filein.SaveToFile(DirTx+'\'+fichero);
                               except
                                 cad:='T10...Error escribiendo:'+DirTx+'\'+fichero;
                                 synchronize(updateListBox);
                                 error:=true;
                                 actualizaErrorEstadisticas('DirTxWriteError',datosaux.unidad,datosaux.grupo);
                               end;
                               if not error then
                               begin
                                 if cdor=1 then
                                 begin
                                   inc(cdad1);
                                   actualizaEstadisticas;
                                 end;
                               end;

                             end
                             else
                             begin
                               cad:='T10...No hay dirTX para enviar el file:'+fichero;
                               synchronize(updateListBox);
                               error:=true;
                               actualizaErrorEstadisticas('NoExisteDirTx',datosaux.grupo,grupos[k].ttx);
                               break;
                             end;

                           end;

                           // Trabajo con la salva
                           ActualizaDirectorioSalva;
                           if DirSalva<>'' then
                           try
                             // verificar que hacer si ya existe...
                             filein.SaveToFile(DirSalva+'\'+fichero);
                           except
                             cad:='T1...Error escribiendo:'+DirSalva+'\'+fichero;
                             synchronize(updateListBox);
                             error:=true;
                           end;
                          end
                         else
                         begin
                           datosaux.aplicadopor:='FueradeGrupo';
                           actualizaDirectorioGenericos;
                           try
                             filein.SaveToFile(DirGenericos+'\'+ficherodatos);
                           except
                             cad:='T1...Error escribiendo:'+DirGenericos+'\'+ficherodatos;
                             synchronize(updateListBox);
                             error:=true;
                           end;
                           if not error then
                           begin
                             inc(genericos);
                             actualizaEstadisticas;
                             actualizaClavesEstadisticas;
                           end;
                         end;
                        end; // si Activa
                        main.cxTableView1.DataController.GotoNext;
                        dec(cdor);
                      end;
                     end; // not error
                     if not error then
                     begin
                       synchronize(updateCaption);
                     end
                     else
                     begin
                       synchronize(updateError);
                     end;
                     filein.Clear;
                     fileprub.Clear;
                  end  // pudo borrar
                  else
                  begin // no pudo borrar
                    filein.clear;
                    fileprub.Clear;
                  end;
                end;
              except  //try
                filein.clear;
                fileprub.Clear;
              end;

          end;
        end;

      until findnext(GR)<>0;
          findclose(GR);
        end;
  synchronize(apagaError);
  suspend;
//
  end;
filein.Clear;
filein.Free;
fileprub.Clear;
fileprub.Free;

end;

end.
