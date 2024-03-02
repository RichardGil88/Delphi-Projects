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
  cxSplitter, Grids, ComCtrls, cxListBox, CheckLst;

type
  TForm1 = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxButtonEdit1: TcxButtonEdit;
    FolderDialog1: TFolderDialog;
    cxGroupBox2: TcxGroupBox;
    dxSkinController1: TdxSkinController;
    cxButton1: TcxButton;
    Qgrupos: TUniQuery;
    DSQgrupos: TUniDataSource;
    Qtablatx: TUniQuery;
    DSQtablatx: TUniDataSource;
    MySQLUniProvider1: TMySQLUniProvider;
    QFicheroTabla: TUniQuery;
    DSQFicheroTabla: TUniDataSource;
    AdvCircularProgress1: TAdvCircularProgress;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxGroupBox3: TcxGroupBox;
    cxSplitter1: TcxSplitter;
    cxGroupBox4: TcxGroupBox;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxGroupBox5: TcxGroupBox;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxGroupBox6: TcxGroupBox;
    CheckListBox2: TCheckListBox;
    UniConnection1: TUniConnection;
    QDirtxdeTtx: TUniQuery;
    DSQDirtxdeTtx: TUniDataSource;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel11: TcxLabel;
    cxSplitter2: TcxSplitter;
    Memo1: TMemo;
    Memo2: TMemo;
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Tarea:thread1;

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
      Tarea:=thread1.Create(true);
      Tarea.Resume;
      cxButton1.Enabled:=False;
  end
  else
  begin
    if (cxButtonEdit1.Text = '') then  ShowMessage('Debe seleccionar una ruta para guardar los ficheros sin índice.');
    if (not hay) then  ShowMessage('Debe seleccionar una tabla al menos para revisar.');
  end;

end;

procedure TForm1.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
   FolderDialog1.Execute;
   cxButtonEdit1.Text:=FolderDialog1.Directory+'\';
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
   Tarea:=thread1.Create(true);
   Tarea.Terminate;
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
