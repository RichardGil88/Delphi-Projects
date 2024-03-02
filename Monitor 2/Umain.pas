unit Umain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, DBAccess, Uni, MemDS, UniProvider, ODBCUniProvider,
  AccessUniProvider, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  MySQLUniProvider, Menus, AdvMenus,hilos, cxContainer, dxSkinsForm, cxGroupBox,
  Grids, DBGrids, BaseGrid, StdCtrls, cxButtons, cxTextEdit, cxMemo,
  dxSkinBlueprint, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint;

type
  TFmain = class(TForm)
    UniConnection1: TUniConnection;
    UniDataSource1: TUniDataSource;
    MySQLUniProvider1: TMySQLUniProvider;
    MainMenu1: TMainMenu;
    Configuracin1: TMenuItem;
    Estadsticas1: TMenuItem;
    AdvPopupMenu1: TAdvPopupMenu;
    ModificarDirTx1: TMenuItem;
    ModificarCantidaddeFicherosAlarma1: TMenuItem;
    ModificarCantidaddeFicherosLimite1: TMenuItem;
    ModificarFuncionando1: TMenuItem;
    Update1: TUniSQL;
    Update2: TUniSQL;
    UniTable1: TUniTable;
    UniTable2: TUniTable;
    UniTable3: TUniTable;
    UniTable4: TUniTable;
    UniDataSource2: TUniDataSource;
    UniDataSource3: TUniDataSource;
    UniDataSource4: TUniDataSource;
    UniDataSource5: TUniDataSource;
    UniConnection2: TUniConnection;
    Tgrupos: TUniQuery;
    cxGroupBox1: TcxGroupBox;
    DBGrid1: TDBGrid;
    cxGroupBox2: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    UniTable1id: TLargeintField;
    UniTable1fecha: TDateField;
    UniTable1grupo: TStringField;
    UniTable1unidad: TStringField;
    UniTable1autoridad: TStringField;
    UniTable1chequeo: TStringField;
    UniTable1cdadRx: TLargeintField;
    UniTable2id: TLargeintField;
    UniTable2fecha: TDateField;
    UniTable2despachador: TStringField;
    UniTable2procesados: TLargeintField;
    UniTable2chequeados: TLargeintField;
    UniTable2masivos: TLargeintField;
    UniTable2almacenados: TLargeintField;
    UniTable2ParaEstudio: TLargeintField;
    UniTable2ipdr: TLargeintField;
    UniTable3id: TLargeintField;
    UniTable3fecha: TDateField;
    UniTable3grupo: TStringField;
    UniTable3unidad: TStringField;
    UniTable3autoridad: TStringField;
    UniTable3cdadRx: TLargeintField;
    UniTable4id: TLargeintField;
    UniTable4fecha: TDateField;
    UniTable4idMon: TStringField;
    UniTable4tipoTx: TStringField;
    UniTable4PktRx: TLargeintField;
    UniTable4BytesRx: TLargeintField;
    UniTable4Cdad: TLargeintField;
    Tgruposidgrupo: TLargeintField;
    Tgruposgrupo: TStringField;
    Tgruposunidad: TStringField;
    Tgruposautoridad: TStringField;
    TgruposMaxIntereses: TIntegerField;
    TgruposDirtx: TStringField;
    TgruposUsarDirTx: TStringField;
    Tgruposcopiariri: TStringField;
    Tgruposformatoiri: TStringField;
    Tgruposorganizar: TStringField;
    Tgruposclavemenor: TIntegerField;
    Tgruposclavemayor: TIntegerField;
    Tgruposdescripcion: TStringField;
    Tgruposactivo: TBooleanField;
    Tgruposorden: TIntegerField;
    Tgruposchequear: TStringField;
    TgruposFicherosCantidad: TLargeintField;
    TgruposFicherosCantidadAlarma: TLargeintField;
    TgruposFicherosCantidadLimite: TLargeintField;
    Tgruposfuncionando: TBooleanField;
    Tgruposautomatico: TBooleanField;
    TgruposBDatosKdGrupo: TStringField;
    TgruposPuertoKdGrupo: TIntegerField;
    TgruposUserKdGrupo: TStringField;
    TgruposPasswKdGrupo: TStringField;
    cxGroupBox3: TcxGroupBox;
    cxMemo1: TcxMemo;
    dxSkinController1: TdxSkinController;
    procedure FormShow(Sender: TObject);
    procedure Configuracin1Click(Sender: TObject);
    procedure Estadsticas1Click(Sender: TObject);
    procedure ModificarDirTx1Click(Sender: TObject);
    procedure ModificarCantidaddeFicherosAlarma1Click(Sender: TObject);
    procedure ModificarCantidaddeFicherosLimite1Click(Sender: TObject);
    procedure ModificarFuncionando1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
  function conviertePassword(passw: ansistring): ansistring;
  function  encriptaPassword(passw: ansistring): ansistring;
    { Public declarations }
  end;

 RecConeccion = record
    ServerKD:string;
    bdKD:string;
    PortKD:Integer;
    UsuarioKD:string;
    ContraseñaKD:string;

    ServerEst:string;
    bdEst:string;
    PortEst:Integer;
    UsuarioEst:string;
    ContraseñaEst:string;

    repeticion:Integer;
    version:string;
  end;

var
  Fmain: TFmain;
  id:Integer;
  Tarea:hilo1;
  RecCon:RecConeccion;

implementation

uses  Uconfig,Umodificar, UEstadisticas,IniFiles;
{$R *.dfm}

procedure TFmain.FormShow(Sender: TObject);
var
name:string;
ini:TIniFile;
begin
  name:=Copy(Application.ExeName,0,Length(Application.ExeName)-3)+'ini';
  if FileExists(name) then
  begin
    INI := TIniFile.Create(name);

    //leyendo el .ini
    try
      RecCon.version :=INI.ReadString('Version','version','');

      RecCon.ServerKD := INI.ReadString('BD','ServerKD','');
      RecCon.bdKD := INI.ReadString('BD','bdKD','') ;
      RecCon.PortKD := INI.ReadInteger('BD','PortKD',9306);
      RecCon.UsuarioKD := INI.ReadString('BD','UsuarioKD','');
      RecCon.ContraseñaKD :=conviertePassword(INI.ReadString('BD','ContraseñaKD',''));

      RecCon.ServerEst := INI.ReadString('BD','ServerEst','') ;
      RecCon.bdEst := INI.ReadString('BD','bdEst','') ;
      RecCon.PortEst := INI.ReadInteger('BD','PortEst',9306);
      RecCon.UsuarioEst := INI.ReadString('BD','UsuarioEst','') ;
      RecCon.ContraseñaEst :=conviertePassword(INI.ReadString('BD','ContraseñaEst','')) ;

      RecCon.repeticion := INI.ReadInteger('BD','Repeticion',5000);
    except
      ShowMessage('Error leyendo el .ini de configuración');
      ini.Free;
    end;

    //conectando con bd KD
    try
       UniConnection1.Disconnect;
       UniConnection1.Username:=RecCon.UsuarioKD;
       UniConnection1.Password:=RecCon.ContraseñaKD;
       UniConnection1.Server:=RecCon.ServerKD;
       UniConnection1.Database:=RecCon.bdKD;
       UniConnection1.Port:=RecCon.PortKD;
       UniConnection1.Connect;
    except
      ShowMessage('Error al conectarse a la BD KD');
    end;

    //conectando con bd Estadisticas
    try
       UniConnection2.Disconnect;
       UniConnection2.Username:=RecCon.UsuarioEst;
       UniConnection2.Password:=RecCon.ContraseñaEst;
       UniConnection2.Server:=RecCon.ServerEst;
       UniConnection2.Database:=RecCon.bdEst;
       UniConnection2.Port:=RecCon.PortEst;
       UniConnection2.Connect;
    except
      ShowMessage('Error al conectarse a la BD Estadisticas');
    end;

    //llenando los edits de config.
    try
      Fconfig.edt1.Text:=RecCon.UsuarioKD;
      Fconfig.edt2.Text:=RecCon.ContraseñaKD;
      Fconfig.edt3.Text:=RecCon.ServerKD;
      Fconfig.edt4.Text:=RecCon.bdKD;
      Fconfig.edt5.Text:=IntToStr(RecCon.PortKD);

      Fconfig.edt6.Text:=RecCon.UsuarioEst;
      Fconfig.edt7.Text:=RecCon.ContraseñaEst;
      Fconfig.edt8.Text:=RecCon.ServerEst;
      Fconfig.edt9.Text:=RecCon.bdEst;
      Fconfig.edt10.Text:=IntToStr(RecCon.PortEst);

      Fconfig.cxTextEdit4.Text:=IntToStr(RecCon.repeticion);
    except

    end;

    Fmain.Caption:='Monitor KD  Versión '+RecCon.version;

    Fmain.Tgrupos.Open;

    Tarea:=hilo1.Create(true);
    Tarea.Start;
  end
  else
  begin
   ShowMessage('Debe ponerle el mismo nombre de la aplicación al .ini');
   Application.Terminate;
  end;
end;

procedure TFmain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Tarea.Terminate;
end;

procedure TFmain.ModificarCantidaddeFicherosAlarma1Click(Sender: TObject);
begin
  id:=Tgrupos.FieldByName('idgrupo').AsInteger;

  Fmodificar.ShowModal;
  if Fmodificar.valor <> ''  then
  begin
    with Update2 do
    begin
     SQL.Clear;
     SQL.Add('UPDATE `grupos` SET `grupos`.`FicherosCantidadAlarma`=:Pfi WHERE `grupos`.`idgrupo` = :Pid;');
     ParamByName('Pfi').AsInteger:=StrToInt(Fmodificar.valor);
     ParamByName('Pid').AsInteger:=id;
     Execute;
     Tgrupos.Refresh;
    end;
  end;
end;

procedure TFmain.ModificarCantidaddeFicherosLimite1Click(Sender: TObject);
begin
  id:=Tgrupos.FieldByName('idgrupo').AsInteger;

  Fmodificar.ShowModal;
  if Fmodificar.valor <> ''  then
  begin
    with Update2 do
    begin
     SQL.Clear;
     SQL.Add('UPDATE `grupos` SET `grupos`.`FicherosCantidadLimite`=:Pfi WHERE `grupos`.`idgrupo` = :Pid;');
     ParamByName('Pfi').AsInteger:=StrToInt(Fmodificar.valor);
     ParamByName('Pid').AsInteger:=id;
     Execute;
     Tgrupos.Refresh;
    end;
  end;
end;

procedure TFmain.ModificarDirTx1Click(Sender: TObject);
begin
  id:=Tgrupos.FieldByName('idgrupo').AsInteger;

  Fmodificar.ShowModal;
  if Fmodificar.valor <> ''  then
  begin
    with Update2 do
    begin
     SQL.Clear;
     SQL.Add('UPDATE `grupos` SET `grupos`.`Dirtx`=:Pfi WHERE `grupos`.`idgrupo` = :Pid;');
     ParamByName('Pfi').AsString:=Fmodificar.valor;
     ParamByName('Pid').AsInteger:=id;
     Execute;
     Tgrupos.Refresh;
    end;
  end;
end;

procedure TFmain.ModificarFuncionando1Click(Sender: TObject);
 var estado:Boolean;
begin
  id:=Tgrupos.FieldByName('idgrupo').AsInteger;
  estado:=Tgrupos.FieldByName('funcionando').AsBoolean;

  //Fmodificar.ShowModal;
  if estado = True  then
  begin
    with Update2 do
    begin
     SQL.Clear;
     SQL.Add('UPDATE `grupos` SET `grupos`.`funcionando`=:Pfi WHERE `grupos`.`idgrupo` = :Pid;');
     ParamByName('Pfi').AsBoolean:=False;
     ParamByName('Pid').AsInteger:=id;
     Execute;
     Tgrupos.Refresh;
    end;
  end;
  if estado = false  then
  begin
    with Update2 do
    begin
     SQL.Clear;
     SQL.Add('UPDATE `grupos` SET `grupos`.`funcionando`=:Pfi WHERE `grupos`.`idgrupo` = :Pid;');
     ParamByName('Pfi').AsBoolean:=True;
     ParamByName('Pid').AsInteger:=id;
     Execute;
     Tgrupos.Refresh;
    end;
  end;
end;

procedure TFmain.Configuracin1Click(Sender: TObject);
begin
Fconfig.Show;
end;

function TFmain.conviertePassword(passw: ansistring): ansistring;
var
  p:ansistring;
  i: integer;
  c: ansichar;
begin
  if Length(passw)>=4 then
  begin
    c:=ansichar(chr(ord(passw[2])-1));
    passw[2]:=ansichar(chr(ord(passw[1])-1));
    passw[1]:=c;
    c:=ansichar(chr(ord(passw[length(passw)])-1));
    passw[length(passw)]:=ansichar(chr(ord(passw[length(passw)-1])-1));
    passw[length(passw)-1]:=c;

    p:='';
    for i:=length(passw) downto 1 do
     p:=p+passw[i];
  end
  else
  begin
    ShowMessage('El password debe tener 4 o más caracteres...Seteado automáticamente a 123456');
    p:='123456';
  end;
  result:=p;
end;

procedure TFmain.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  try
   //pintando los inactivos de rojo
   if not Column.Field.Dataset.FieldbyName('activo').AsBoolean then
   begin
     DBGrid1.Canvas.Brush.Color:=clRed;
   end;

   //pintando las alarmas de amarillo
   if  (Column.Field.Dataset.FieldbyName('FicherosCantidad').AsInteger <= Column.Field.Dataset.FieldbyName('FicherosCantidadLimite').AsInteger)
   and (Column.Field.Dataset.FieldbyName('FicherosCantidad').AsInteger >= Column.Field.Dataset.FieldbyName('FicherosCantidadAlarma').AsInteger)then
   begin
     dbgrid1.canvas.brush.color := clYellow;
   end;

   dbgrid1.DefaultDrawColumnCell(rect,DataCol,Column,State);
  except

  end;
end;

function TFmain.encriptaPassword(passw: ansistring): ansistring;
var
  p:ansistring;
  i: integer;
  c: ansichar;
begin
  if Length(passw)<4 then
  begin
    ShowMessage('El password debe tener 4 o más caracteres...Seteado automáticamente a 123456');
   passw:='123456';
  end;
  c:=ansichar(chr(Ord(passw[2])+1));
  passw[2]:=ansichar(chr(ord(passw[1])+1));
  passw[1]:=c;
  c:=ansichar(chr(ord(passw[length(passw)])+1));
  passw[length(passw)]:=ansichar(chr(ord(passw[length(passw)-1])+1));
  passw[length(passw)-1]:=c;

  p:='';
  for i:=length(passw) downto 1 do
     p:=p+passw[i];
  result:=p;
end;

procedure TFmain.Estadsticas1Click(Sender: TObject);
begin
FEstadisticas.Show;
end;

end.
