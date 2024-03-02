unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,unit2, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxSkinsForm, cxGroupBox,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, AdvSmoothLabel, Grids, DBGrids,
  StdCtrls,cxGridExportLink, Menus, cxButtons,tareas, cxProgressBar ;

type
 rec = record
 grupo:string;
 Clave:Integer;
 Fechainicio:TDateTime;
 duracion:Integer;
 Sentido:string;
 llamador:string;
 llamado:string;
 Categoria:string;
 TipoTx:string;
 Tema:string;
 DigitosServiciosAgregados:string;
 It:Integer;
 kt:string;
 fechita:TDateTime;
 priorizada:Boolean;
 conidioma:Boolean;
 Depurada:Integer;
 ktclick:string;
 fechaclick:TDateTime;
 duraclick:Integer;
 fichero:string;
 ktprimero:string;
 fechitaPrimero:TDateTime;
 idioma:string;
 confax:Boolean;
 bancovoces:Boolean;
 contenido:string;
 ficherocontenido:string;
 lugardemonitoreo :string;
 end;

  TForm1 = class(TForm)
    cxGroupBox1: TcxGroupBox;
    dxSkinController1: TdxSkinController;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1grupo: TcxGridDBColumn;
    cxGrid1DBTableView1Clave: TcxGridDBColumn;
    cxGrid1DBTableView1lugardemonitoreo: TcxGridDBColumn;
    cxGrid1DBTableView1Fechainicio: TcxGridDBColumn;
    cxGrid1DBTableView1Duracion: TcxGridDBColumn;
    cxGrid1DBTableView1duraclick: TcxGridDBColumn;
    cxGrid1DBTableView1Sentido: TcxGridDBColumn;
    cxGrid1DBTableView1Telefonollamador: TcxGridDBColumn;
    cxGrid1DBTableView1Telefonollamado: TcxGridDBColumn;
    cxGrid1DBTableView1Categoria: TcxGridDBColumn;
    cxGrid1DBTableView1TipoTx: TcxGridDBColumn;
    cxGrid1DBTableView1Tema: TcxGridDBColumn;
    cxGrid1DBTableView1Digitosserviciosagregados: TcxGridDBColumn;
    cxGrid1DBTableView1It: TcxGridDBColumn;
    cxGrid1DBTableView1kt: TcxGridDBColumn;
    cxGrid1DBTableView1fechita: TcxGridDBColumn;
    cxGrid1DBTableView1priorizada: TcxGridDBColumn;
    cxGrid1DBTableView1conidioma: TcxGridDBColumn;
    cxGrid1DBTableView1Depurada: TcxGridDBColumn;
    cxGrid1DBTableView1ktclick: TcxGridDBColumn;
    cxGrid1DBTableView1fechaclick: TcxGridDBColumn;
    cxGrid1DBTableView1fichero: TcxGridDBColumn;
    cxGrid1DBTableView1idSolicitud: TcxGridDBColumn;
    cxGrid1DBTableView1ktprimero: TcxGridDBColumn;
    cxGrid1DBTableView1fechitaPrimero: TcxGridDBColumn;
    cxGrid1DBTableView1idioma: TcxGridDBColumn;
    cxGrid1DBTableView1confax: TcxGridDBColumn;
    cxGrid1DBTableView1bancovoces: TcxGridDBColumn;
    cxGrid1DBTableView1contenido: TcxGridDBColumn;
    cxGrid1DBTableView1ficherocontenido: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxLabel3: TcxLabel;
    cxProgressBar1: TcxProgressBar;
    BotonExportarXLS: TcxButton;
    MainMenu1: TMainMenu;
    tablasenuso1: TMenuItem;
    cxGroupBox3: TcxGroupBox;
    cxTextEdit1: TcxTextEdit;
    cxLabel2: TcxLabel;
    convertir: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGrid1DBTableView1dptosecc: TcxGridDBColumn;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    lst1: TListBox;
    lst2: TListBox;
    cxLabel4: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure BotonExportarXLSClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tablasenuso1Click(Sender: TObject);
    procedure cxLookupComboBox1Click(Sender: TObject);
    procedure convertirClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
  rec1:rec;
  tablatx,cadena:string;
  function cambio(cadena:string):Integer;
  procedure horasMinutosSegundos (numSegundos : integer; var horas, minutos, segundos : integer);
    { Public declarations }
  end;

var
  Form1: TForm1;
  task1:tarea1;
implementation

uses Unit3,ShellApi,IniFiles;

{$R *.dfm}

procedure TForm1.tablasenuso1Click(Sender: TObject);
begin
form3.ShowModal;
end;

function  TForm1.cambio(cadena: string): Integer;
var hora,min,seg:string;
    hora1,min1,seg1:integer;
    hora2,min2,seg2:integer;
    duracion:Integer;
    cad1:integer;
begin
   cad1:=Pos(':',cadena)-1;
   hora:=Copy(cadena,1,cad1);
   hora1:=strtoint(hora);

   Delete(cadena,1,cad1+1);
   min:=Copy(cadena,1,2);
   min1:=StrToInt(min);

   Delete(cadena,1,3);
   seg:=Copy(cadena,1,2);
   seg1:=StrToInt(min);

   hora2:=hora1*60*60;
   min2 :=min1*60;
   seg2 :=seg1;

   duracion:=hora2+min2+seg2;

   Result:=duracion;
end;

procedure TForm1.convertirClick(Sender: TObject);
 var
   horas, minutos, segundos : Integer;
   I: Integer;
begin
  for I := 0 to lst1.Items.Count - 1 do
  begin
     Form1.horasMinutosSegundos(StrToInt(lst1.Items.Strings[i]),horas, minutos, segundos);
     lst2.Items.add(format('%02d:%02d:%02d', [horas, minutos, segundos]));
  end;

  lst2.Items.SaveToFile(ExtractFilePath(Application.ExeName)+'Tiempo.xls');
  ShellExecute(Form1.Handle,nil,PChar(ExtractFilePath(Application.ExeName)+'Tiempo.xls'),'','',SW_SHOWNORMAL);
end;

procedure TForm1.BotonExportarXLSClick(Sender: TObject);
begin
ExportGridToExcel('Control.xls',cxGrid1,True,False);
end;

procedure TForm1.cxButton1Click(Sender: TObject);
begin
cxGrid1DBTableView1.DataController.Groups.FullExpand;
end;

procedure TForm1.cxButton2Click(Sender: TObject);
begin
cxGrid1DBTableView1.DataController.Groups.FullCollapse;
end;

procedure TForm1.cxButton3Click(Sender: TObject);
begin
 if cxTextEdit1.Text <> '' then
 lst1.Items.Add(cxTextEdit1.Text);
 cxTextEdit1.Clear;
end;

procedure TForm1.cxButton4Click(Sender: TObject);
begin
lst1.Clear;
lst2.Clear;
end;

procedure TForm1.cxLookupComboBox1Click(Sender: TObject);
begin
 Form1.rec1.grupo:= Form1.cxLookupComboBox1.Text;
 task1:=tarea1.Create(true);
 task1.Resume;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 task1.disponible;
 task1.Free;
end;

procedure TForm1.FormShow(Sender: TObject);
 var
 path,name:string;
 ini:TIniFile;
 varserver,vardatabase:string;
 varport:Integer;
begin
  try
    path:=ExtractFilePath(Application.ExeName);
    name:=ExtractFilePath(Application.ExeName)+'Configuración.ini';
    INI := TIniFile.Create(name);
    if ini.SectionExists('Chequeo') then
    begin
     try
      varserver := INI.ReadString('Chequeo','Server','') ;
      vardatabase := INI.ReadString('Chequeo','Database','');
      varport := INI.ReadInteger('Chequeo','Port',3306);

      with DM.ConChequeo do
      begin
         Username:='root';
         Password:='windowsxp';
         Server:=varserver;
         Database:=vardatabase;
         Port:=varport;
         Connect;
      end;
     except
     ini.Free;
     end;
    end;

    if ini.SectionExists('Control') then
    begin
     try
      varserver := INI.ReadString('Control','Server','') ;
      vardatabase := INI.ReadString('Control','Database','') ;
      varport := INI.ReadInteger('Control','Port',3306);

      with DM.ConControl do
      begin
         Username:='root';
         Password:='windowsxp';
         Server:=varserver;
         Database:=vardatabase;
         Port:=varport;
         Connect;
      end;
     except
     ini.Free;
     end;
    end;
    ini.Free;
  except
    ShowMessage('Error al conectarse a la BD');
    Application.Terminate;
  end;

   //leer los grupos
   DM.Qgrupos.Execute;

   cxLabel3.Visible:=False;
   cxProgressBar1.Visible:=False;

end;

procedure TForm1.horasMinutosSegundos(numSegundos: integer; var horas, minutos, segundos: integer);
begin
  horas := numSegundos div 3600;
  minutos := numSegundos div 60 mod 60;
  segundos := numSegundos mod 60;
end;

end.
