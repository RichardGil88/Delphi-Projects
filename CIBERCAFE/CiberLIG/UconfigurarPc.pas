unit UconfigurarPc;

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
  dxSkinXmas2008Blue, cxGroupBox, cxTextEdit, cxMaskEdit, cxButtonEdit,
  FolderDialog, StdCtrls, cxCheckBox, cxLabel,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, Buttons,
  Spin, ExtCtrls, dxSkinBlueprint, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint,
  Vcl.Menus, cxButtons;

type
  TFconfigurarPc = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxButtonEdit1: TcxButtonEdit;
    FolderDialog1: TFolderDialog;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxButton1: TcxButton;
    SpinEdit1: TSpinEdit;
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function IsValidIP(S: String): Boolean;
    var
    ftp,dirftp:string;
  end;

var
  FconfigurarPc: TFconfigurarPc;

implementation
 uses UDM1,UPrincipal;
{$R *.dfm}

procedure TFconfigurarPc.cxButton1Click(Sender: TObject);
begin
   if   (cxTextEdit1.Text <> 'localhost')
    and (cxTextEdit1.Text <> '127.0.0.1')
    and (cxTextEdit1.Text <> '')
    and (cxButtonEdit1.Text <> '')
    and IsValidIP(cxTextEdit1.Text)
   then
   begin
     
     // FTP
     ftp:=cxTextEdit1.Text;
     dirftp:=cxButtonEdit1.Text;

     try
        if FPrincipal.ip <> '' then
        begin
          // actualizando la tabla
          with dm1.UniSQL1 do
          begin
            SQL.Clear;
            SQL.Add('update Maquinas set Maquinas.Activo=:PActivo, Maquinas.Pantallas=:Ppantallas, Maquinas.Teclado=:Pteclado, Maquinas.USB=:PUSB, Maquinas.Ftp=:Pftp, Maquinas.DirFTP=:Pdirftp  where Maquinas.Ip = :Pip;');
            ParamByName('PActivo').AsBoolean:=True;
            ParamByName('Ppantallas').AsBoolean:=True;
            ParamByName('Pteclado').AsBoolean:=True;
            ParamByName('PUSB').AsBoolean:=True;
            ParamByName('Pftp').AsString:=FconfigurarPc.ftp;
            ParamByName('Pip').AsString:=FPrincipal.ip;
            ParamByName('Pdirftp').AsString:=FconfigurarPc.dirftp;
            Execute;
            FPrincipal.cxGrid1DBTableView1.DataController.DataSet.Refresh;
          end;
        end;
     except
        ShowMessage('No se pudo insertar en la BD a la PC: '+ FPrincipal.ip);
     end;
     Close;
   end
   else
   begin
     ShowMessage('la ip del ftp no se puede llamar ``localhost`` ni ``127.0.0.1`` ni ```` o es incorrecta ');
   end;
end;

procedure TFconfigurarPc.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
    FolderDialog1.Execute;
    cxButtonEdit1.Text:=FolderDialog1.Directory;
    dirftp:= FolderDialog1.Directory;
end;

procedure TFconfigurarPc.FormShow(Sender: TObject);
begin
cxLabel3.Caption:=FPrincipal.Pcname;
end;

function TFconfigurarPc.IsValidIP(S: String): Boolean;
var
  Strings: TStringList;
begin
  Result := false;

  Strings := TStringList.Create;
  Strings.Delimiter := '.';
  Strings.DelimitedText := S;

  if Strings.Count <> 4 then exit;

  repeat
    Result := (StrToIntDef(Strings[0], -1) in [0..255]);
    Strings.Delete(0);
  until (Strings.Count = 0) or not Result;

  Strings.Free;
end;

end.
