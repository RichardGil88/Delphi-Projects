unit Ulogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvCircularProgress,  Menus,  ExtCtrls,
  cxTextEdit, cxLabel, cxMaskEdit, StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, cxGroupBox, DB, DBAccess, Uni, MemDS, UniProvider,
  MySQLUniProvider,Umain, cxGraphics, cxLookAndFeels, Grids, DBGrids,IniFiles,
  dxSkinBlueprint, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxGDIPlusClasses;

 type
  TFlogin = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxMaskEdit1: TcxMaskEdit;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    Image1: TImage;
    cxMaskEdit2: TcxMaskEdit;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure cxMaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }

  var  USUARIO,CARGO,UNIDAD:string;
  version:string;
  end;

var
  Flogin:TFlogin;
implementation
uses udm;
{$R *.dfm}

procedure TFlogin.cxButton1Click(Sender: TObject);
begin
  if (cxMaskEdit2.Text='') or (cxMaskEdit1.Text='') then
  begin
    ShowMessage('DEBE LLENAR TODOS LOS DATOS');
  end
  else
  begin
    with DM do
    begin
      Quser.ParamByName('Puser').AsString:=cxMaskEdit2.Text;
      Quser.ParamByName('Ppass').AsString:=cxMaskEdit1.Text;
      Quser.Execute;

      if (Quser.RecordCount>0) then
      begin
       if Quser.FieldByName('cargo').AsString = 'SuperAdmin' then
       begin
         Fmain.Depurar1.Enabled:=True;
       end
       else
       begin
         Fmain.Depurar1.Enabled:=false;
       end;

        Flogin.Hide;
        Fmain.ShowModal;
      end
      else
      begin
       ShowMessage('USTED NO ESTA AUTORIZADO');
       cxMaskEdit1.Clear;
      end;
    end;
  end;
end;

procedure TFlogin.cxButton2Click(Sender: TObject);
begin
     Fmain.Hide;
     Application.Terminate;
end;

procedure TFlogin.cxMaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then
  begin
    if (cxMaskEdit2.Text='') or (cxMaskEdit1.Text='') then
     begin
      ShowMessage('DEBE LLENAR TODOS LOS DATOS');
     end
    else
    begin
      with DM do
      begin
        Quser.ParamByName('Puser').AsString:=cxMaskEdit2.Text;
        Quser.ParamByName('Ppass').AsString:=cxMaskEdit1.Text;
        Quser.Execute;

        if (Quser.RecordCount>0) then
        begin
         if Quser.FieldByName('cargo').AsString = 'SuperAdmin' then
         begin
           Fmain.Depurar1.Enabled:=True;
         end
         else
         begin
           Fmain.Depurar1.Enabled:=false;
         end;
         Flogin.Hide;
         Fmain.ShowModal;
        end
        else
        begin
         ShowMessage('USTED NO ESTA AUTORIZADO');
         cxMaskEdit1.Clear;
        end;
      end;
    end;
  end;
end;

procedure TFlogin.cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then
   begin
     cxMaskEdit1.SetFocus;
   end;
end;

procedure TFlogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TFlogin.FormShow(Sender: TObject);
 var
 path,name:string;
 ini:TIniFile;
 varserver,vardatabase:string;
 varport:Integer;

begin
  Fmain.dxSkinController1.SkinName:='Lilian';
  cxMaskEdit2.SetFocus;
  try
    path:=ExtractFilePath(Application.ExeName);
    name:=ExtractFilePath(Application.ExeName)+'AccesosAAA.ini';
    INI := TIniFile.Create(name);

    if ini.SectionExists('AAA') then
    begin
     try
      varserver := INI.ReadString('AAA','Server','') ;
      vardatabase := INI.ReadString('AAA','Database','');
      varport := INI.ReadInteger('AAA','Port',9306);
      version := INI.ReadString('AAA','version','');

        with DM.UniConnection1 do
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

    if ini.SectionExists('globalkd') then
    begin
     try
      varserver := INI.ReadString('globalkd','Server','') ;
      vardatabase := INI.ReadString('globalkd','Database','') ;
      varport := INI.ReadInteger('globalkd','Port',9306);

      with DM.UniConnection2 do
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

end;

end.
