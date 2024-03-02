unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsForm, FolderDialog, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxGroupBox, Menus, StdCtrls, cxButtons, cxMemo,Unit2,
  UniProvider, MySQLUniProvider, DB, DBAccess, Uni, MemDS, AdvCircularProgress,
  cxLabel, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  cxSplitter, Grids, ComCtrls, cxListBox, CheckLst, dxSkinscxPCPainter,
  cxPCdxBarPopupMenu, cxPC,Unit3;

type
  TForm1 = class(TForm)
    FolderDialog1: TFolderDialog;
    dxSkinController1: TdxSkinController;
    Qgrupos: TUniQuery;
    DSQgrupos: TUniDataSource;
    Qtablatx: TUniQuery;
    DSQtablatx: TUniDataSource;
    MySQLUniProvider1: TMySQLUniProvider;
    QFicheroTabla: TUniQuery;
    DSQFicheroTabla: TUniDataSource;
    UniConnection1: TUniConnection;
    QDirtxdeTtx: TUniQuery;
    DSQDirtxdeTtx: TUniDataSource;
    PageControl1: TcxPageControl;
    TabLlamadas: TcxTabSheet;
    TabDocumentos: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    AdvCircularProgress1: TAdvCircularProgress;
    cxButtonEdit1: TcxButtonEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel11: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    Memo2: TMemo;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    Memo1: TMemo;
    cxGroupBox6: TcxGroupBox;
    CheckListBox2: TCheckListBox;
    cxSplitter1: TcxSplitter;
    cxSplitter2: TcxSplitter;
    cxGroupBox7: TcxGroupBox;
    AdvCircularProgress2: TAdvCircularProgress;
    cxButtonEdit2: TcxButtonEdit;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    cxLabel19: TcxLabel;
    cxButtonEdit3: TcxButtonEdit;
    cxGroupBox8: TcxGroupBox;
    cxGroupBox9: TcxGroupBox;
    cxMemo1: TcxMemo;
    QficherotablaD: TUniQuery;
    DSQficherotablaD: TUniDataSource;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButtonEdit3Click(Sender: TObject);
    procedure cxButtonEdit2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Tarea1:thread1;
  Tarea2:thread2;

implementation
   uses IniFiles;
{$R *.dfm}

procedure TForm1.cxButton1Click(Sender: TObject);
var i:Integer;
    hay:Boolean;
begin
  Memo1.Clear;
  Memo2.Clear;
  cxLabel10.Caption:='0';
  cxLabel8.Caption:='0';

  //verificando Sin hay marcados
  for I := 0 to CheckListBox2.Count - 1 do
  begin
    if CheckListBox2.Checked[i] = True then
     begin
      hay:=True;
      Break;
     end
    else
     hay:=false;
  end;

  if (cxButtonEdit1.Text <> '') and (hay) then
  begin
      Tarea1:=thread1.Create(true);
      Tarea1.Resume;
      cxButton1.Enabled:=False;
  end
  else
  begin
    if (cxButtonEdit1.Text = '') then  ShowMessage('Debe seleccionar una ruta para guardar los ficheros sin índice.');
    if (not hay) then  ShowMessage('Debe seleccionar una tabla al menos para revisar.');
  end;

end;

procedure TForm1.cxButton2Click(Sender: TObject);
begin
  cxMemo1.Clear;
  if (cxButtonEdit3.Text<>'') and (cxButtonEdit2.Text<>'') then
   begin
      Tarea2:=thread2.Create(true);
      Tarea2.Resume;
      cxButton2.Enabled:=False;
   end
  else ShowMessage('Debe de escojer las dos rutas');

end;

procedure TForm1.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
   FolderDialog1.Execute;
   cxButtonEdit1.Text:=FolderDialog1.Directory+'\';
end;

procedure TForm1.cxButtonEdit2Click(Sender: TObject);
begin
   FolderDialog1.Execute;
   cxButtonEdit2.Text:=FolderDialog1.Directory+'\';
end;

procedure TForm1.cxButtonEdit3Click(Sender: TObject);
begin
   FolderDialog1.Execute;
   cxButtonEdit3.Text:=FolderDialog1.Directory+'\';
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    Tarea1:=thread1.Create(true);
    Tarea1.Terminate;
  except

  end;

  try
    Tarea2:=thread2.Create(true);
    Tarea2.Terminate;
  except

  end;
end;

procedure TForm1.FormShow(Sender: TObject);
 var
 ttx1,path,name:string;
 ini:TIniFile;
 varserver,vardatabase:string;
 varport,a:Integer;
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

         with UniConnection1 do
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

  try
    //recorriendo la tabla  de grupos para llenar la lista
    Form1.Qgrupos.Execute;
    Form1.Qgrupos.First;
    for A := 0 to Form1.Qgrupos.recordCount - 1 do
    begin
      try
        Ttx1:=Form1.Qgrupos.FieldByName('ttx').AsString;
        Form1.CheckListBox2.Items.Add(ttx1);
      except

      end;
      Form1.Qgrupos.Next;
    end;
  except

  end;
end;

end.
